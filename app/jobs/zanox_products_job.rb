require 'open-uri'

class ZanoxProductsJob < ApplicationJob
  queue_as :default

  def perform(args)
    # start_date format = YYYY-MM-DD
    # URL below gets all programs from BR starting after start_date
    PROGRAMS_API = "http://api.zanox.com/json/2011-03-01/programs?hasproducts=true&region=BR&connectid=#{ENV['ZANOX_API_KEY']}"
    COUPONS_API = "http://api.zanox.com/json/2011-03-01/programs?startdate=#{args[:start_date]}&region=BR&connectid=#{ENV['ZANOX_API_KEY']}"

    companies_json = open(PROGRAMS_API).read
    companies_info = JSON.parse(json)
    companies_info["programItems"]["programItem"].each |company| do
      Company.create!(name: company["name"], logo: company["image"], zanox_id: company["@id"])
    end
end

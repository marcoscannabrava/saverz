class ZanoxProductsJob < ApplicationJob
  queue_as :default

  def perform(args)
    # start_date format = YYYY-MM-DD
    # URL below gets all programs from BR starting after start_date
    API_URL = "http://api.zanox.com/json/2011-03-01/programs?startdate=#{args[:start_date]}&region=BR&connectid=#{ENV['ZANOX_API_KEY']}"
  end
end

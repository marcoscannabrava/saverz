class UpdateCompaniesJob < ApplicationJob
  queue_as :default

  def perform
    # URL below gets all programs from BR starting after start_date
    api_key = ENV['ZANOX_API_KEY']
    programs_api = "http://api.zanox.com/json/2011-03-01/programs?hasproducts=true&region=BR&connectid=#{api_key}&adspace=2152244"

    # USING SAVEWHEY ADSPACE & API KEY !!!

    Company.destroy_all

    companies_json = open(programs_api).read
    companies_info = JSON.parse(companies_json)

    var = companies_info["programItems"]["programItem"]
    
    var.each do |company| 
      Company.create!(
        name: company["name"], 
        remote_logo_url: company["image"], 
        zanox_id: company["@id"],
        url: company["url"]
      )
    end
  end
end

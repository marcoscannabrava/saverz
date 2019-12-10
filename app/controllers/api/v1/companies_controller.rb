class Api::V1::CompaniesController < Api::V1::BaseController
  def index
    # get company from url
    @company = Company.where("url LIKE ?", "%" + params["company"] + "%")
    if @company.empty?
      render json: {status: "error", code: 3000, message: "Can't find the company."}
    else
      render json: {status: "ok", id: @company[0].id } 
    end
  end
end

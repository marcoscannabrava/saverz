class Api::V1::CouponsController < Api::V1::BaseController
  def index
    # get company from url
    @company = Company.where("url LIKE ?", "%" + params["company"] + "%")
    # get company_id from db
    @coupons = Coupon.where(company_id: @company[0].id)
    # call zanox api to get costumer track link
    # generate json with coupons and track link
  end
end

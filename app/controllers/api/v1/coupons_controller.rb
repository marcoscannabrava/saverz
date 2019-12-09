class Api::V1::CouponsController < Api::V1::BaseController
  def index
    # get company from url
    @company = Company.where(company_url)
    # get company_id from db
    @coupons = Coupon.where(company_id: @company.id)
    # call zanox api to get costumer track link
    # generate json with coupons and track link
  end
end

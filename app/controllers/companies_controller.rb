class CompaniesController < ApplicationController
  def show
    @company = Company.find(params[:id])
    @coupons = Coupon.where(company_id: @company)
  end
end

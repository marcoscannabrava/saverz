class CouponsController < ApplicationController
  def index
    UpdateCouponsJob.perform_now
    @coupons = Coupon.all
  end
end

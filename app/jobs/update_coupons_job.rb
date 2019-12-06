class UpdateCouponsJob < ApplicationJob
  queue_as :default

  def perform
    # URL below gets all coupons from company ID
    api_key = ENV['ZANOX_API_KEY']
    coupons_api = "https://api.zanox.com/json/2011-03-01/incentives?connectid=#{api_key}&region=BR&adspace=2152244"
    
    # USING SAVEWHEY ADSPACE & API KEY !!!

    Coupon.destroy_all

    coupons_json = open(coupons_api).read
    coupons_info = JSON.parse(coupons_json)

    var = coupons_info["incentiveItems"]["incentiveItem"]
    
    var.each do |coupon| 
      unless Company.where(zanox_id: coupon["program"]["@id"]).empty?
        Coupon.create!(
          title: coupon["name"], 
          code: coupon["couponCode"],
          tracking_url: coupon["admedia"]["admediumItem"]["trackingLinks"]["trackingLink"][0]["ppc"], 
          company_id: Company.where(zanox_id: coupon["program"]["@id"]).ids[0]
        )
      end
    end
  end
end

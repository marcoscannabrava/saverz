json.array! @coupons do |coupon|
  json.extract! coupon, :title, :code, :tracking_url
end
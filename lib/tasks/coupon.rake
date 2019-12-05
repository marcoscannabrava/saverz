namespace :coupon do
  desc "Seeding Coupons with Zanox API"
  task update_all: :environment do
    UpdateCouponsJob.perform_now
  end
end

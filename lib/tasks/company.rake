namespace :company do
  desc "Seeding Companies with Zanox API"
  task update_all: :environment do
    UpdateCompaniesJob.perform_now
  end

end

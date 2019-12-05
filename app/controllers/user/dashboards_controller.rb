class User::DashboardsController < ApplicationController
  def show
    @field = Field.find(current_user.field.id)
    @companies = Company.all
  end
end

class User::DashboardsController < ApplicationController
  def show
    @field = current_user.field
    @companies = Company.all

    redirect_to root_path if @field.nil?
  end
end

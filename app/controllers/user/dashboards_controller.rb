class User::DashboardsController < ApplicationController
  def show
    if current_user.field_id.present?
      @supported_choice = current_user.field
      @supported_name = @supported_choice.name
      @supported_description = @supported_choice.descritption
      @title = "Research Field Supported"
    else
      @supported_choice = current_user.researcher
      @supported_name = @supported_choice.full_name
      @supported_description = @supported_choice.bio
      @title = "Supported Researcher"
    end
    @companies = Company.all
    # redirect_to root_path if @field.nil?
  end
end

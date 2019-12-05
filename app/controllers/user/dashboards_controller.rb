class User::DashboardsController < ApplicationController
  def show
    @field = Field.find(current_user.field.id)
  end
end

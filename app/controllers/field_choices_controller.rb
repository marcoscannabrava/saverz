class FieldChoicesController < ApplicationController
  def create
    current_user.field = Field.find(params[:field_id])
    current_user.save
    redirect_to "/dashboard"
  end
end

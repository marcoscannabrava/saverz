class SupportedChoicesController < ApplicationController
  def create
    if params[:field_id].present?
      current_user.researcher = nil
      current_user.field = Field.find(params[:field_id])
      current_user.save
      redirect_to "/dashboard"
    else
      current_user.field = nil
      current_user.researcher = Researcher.find(params[:researcher_id])
      current_user.save
      redirect_to "https://chrome.google.com/webstore/category/extensions"
    end
  end
end

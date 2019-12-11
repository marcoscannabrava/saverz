class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @fields = Field.all
    @researchers = Researcher.pluck(:full_name)
  end
end

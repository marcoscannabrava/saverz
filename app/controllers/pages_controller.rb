class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @researchers = Researcher.pluck(:full_name)
    @fields = Field.sorted_by_index
  end
end

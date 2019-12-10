class ResearchersController < ApplicationController
  def show
    @researcher = Researcher.find(params[:id])
    @articles = Article.where(researcher_id: @researcher.id)
  end
end

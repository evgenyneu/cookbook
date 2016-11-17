class SearchController < ApplicationController
  def index
    @recipes = Logic::Search.do_search(
      cuisine: recipe_params[:cuisine],
      ingredient: recipe_params[:ingredients]
    )
  end

  private

  def recipe_params
    params.permit(:cuisine, :ingredients)
  end
end

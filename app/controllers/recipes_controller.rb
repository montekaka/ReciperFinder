class RecipesController < ApplicationController
  def index
  	if params[:search]
  		@search_term = params[:search].to_s
  	else
  		@search_term = "chocolate"
  	end   	
  	@recipes = Recipe.for(@search_term)
  end
end

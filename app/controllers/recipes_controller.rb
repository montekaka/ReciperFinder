class RecipesController < ApplicationController
  def index
  	if params[:search]
  		@display_term = params[:search]
  		@search_term = CGI.escape(@display_term)  		
  	else
  		@search_term = "chocolate"
  		@display_term = @search_term
  	end   	
  	@recipes = Recipe.for(@search_term)
  end
end

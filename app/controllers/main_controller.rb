class MainController < ApplicationController
  def index
    @user = current_user
    @courses = Course.all
    @recipes = Recipe.all
    @ingredients = Ingredient.all
  end
end

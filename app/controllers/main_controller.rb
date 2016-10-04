class MainController < ApplicationController
  def index
    @courses = Course.all
    @recipes = Recipe.all
  end
end

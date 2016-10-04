class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @courses = Course.all
    respond_to do |format|
      if @recipe.save
        format.html {redirect_to @recipe, notice: 'Success!'}
      else
        puts @recipe.errors.messages
        format.html {render json: @recipe.errors}
      end
    end
  end

  def new
    @recipe = Recipe.new
    @courses = Course.all
  end

  def edit
    @courses = Course.all

  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe, notice: 'Recipe was successfully updated.'
    end
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_url, notice: 'Recipe was successfully destroyed.'
  end

  private
  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :instruction, :servings, :course_id)
  end
end

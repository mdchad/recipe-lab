class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :edit, :update, :destroy]

  def index
    @ingredients = Ingredient.all
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    # @courses = Course.all
    # @ingredient.user_id = @current_user.id
    respond_to do |format|
      if @ingredient.save
        format.html {redirect_to @ingredient, notice: 'Success!'}
      else
        puts @ingredient.errors.messages
        format.html {render json: @ingredient.errors}
      end
    end
  end

  def new
    @ingredient = Ingredient.new
  end

  def edit
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    if @ingredient.update(ingredient_params)
      redirect_to @ingredient, notice: 'Recipe was successfully updated.'
    end
  end

  def destroy
    @ingredient.destroy
    redirect_to ingredients_url, notice: 'Recipe was successfully destroyed.'
  end

  private
  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end
  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end

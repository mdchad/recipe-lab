class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def create
  end

  def new
    @course = Course.new
  end

  def edit
    @course = Course.find(params[:id])
  end

  def show
    @course = Course.find(params[:id])
  end

  def update
    if @course.update(recipe_params)
      redirect_to @Course, notice: 'Course was successfully updated.'
    end
  end

  def destroy
    @course.destroy
    redirect_to recipes_url, notice: 'Course was successfully destroyed.'
  end
end

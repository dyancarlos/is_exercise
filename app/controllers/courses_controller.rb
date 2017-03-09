class CoursesController < ApplicationController
  def index
    @course = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      respond_with @course, location: -> { new_course_path }
    else
      render :new
    end
  end

  private
  def course_params
    params.require(:course).permit(:name, :description, :status)
  end
end

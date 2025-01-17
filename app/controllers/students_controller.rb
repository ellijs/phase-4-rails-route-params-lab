class StudentsController < ApplicationController

  def index
    students = if params[:name]
        Student.by_name(params[:name])
        else
        Student.all
        end
    render json: students
  end

  def show
    render json: Student.find(params[:id])
  end

end

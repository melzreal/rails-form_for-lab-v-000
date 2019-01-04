class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @student.title = params[:title]
    @student.description = params[:description]
    @student.save
    redirect_to student_path(@student)
  end


  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(title: params[:student][:title], description: params[:student][:description])
    redirect_to student_path(@student)
  end
end

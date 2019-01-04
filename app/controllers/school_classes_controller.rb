class SchoolClassesController < ApplicationController
  def index
    @school_classes = School_class.all
  end

  def show
    @school_class = School_class.find(params[:id])
  end

  def new
  end

  def create
    @school_class = School_class.new
    @school_class[:title] = params[:school_class][:title]
    @school_class[:room_number] = params[:school_class][:room_number]
    @school_class.save
    redirect_to school_class_path(@school_class)
  end
  
  def edit
    @school_class = School_class.find(params[:id])
  end

  def update
    @school_class = School_class.find(params[:id])
    @school_class.update(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to school_class_path(@school_class)
  end


end

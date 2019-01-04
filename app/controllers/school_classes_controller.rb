class SchoolClassesController < ApplicationController
  def index
    @school_classes = School_class.all
  end

  def show
    @school_class = School_class.find(params[:id])
  end

  def new
      @school_class = School_class.new
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
    @school_class.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    redirect_to school_class_path(@school_class)
  end


end

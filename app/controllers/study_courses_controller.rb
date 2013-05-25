class StudyCoursesController < ApplicationController
  before_filter :authenticate_user!, except: :home
  load_and_authorize_resource

  def statistics
    respond_to do |format|
      format.html
    end
  end

  def home
    respond_to do |format|
      format.html
    end
  end

  def room_chart
    @room = Room.where(building_id: params[:building_id], number: params[:number])
    if @room.empty?
      redirect_to root_url and return
    end
    respond_to do |format|
      format.html
    end
  end

  def admin_home
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  # GET /study_courses
  # GET /study_courses.json
  def index
    @study_courses = StudyCourse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @study_courses }
    end
  end

  # GET /study_courses/1
  # GET /study_courses/1.json
  def show
    @study_course = StudyCourse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @study_course }
    end
  end

  # GET /study_courses/new
  # GET /study_courses/new.json
  def new
    @study_course = StudyCourse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @study_course }
    end
  end

  # GET /study_courses/1/edit
  def edit
    @study_course = StudyCourse.find(params[:id])
  end

  # POST /study_courses
  # POST /study_courses.json
  def create
    @study_course = StudyCourse.new(params[:study_course])

    respond_to do |format|
      if @study_course.save
        format.html { redirect_to @study_course, notice: 'Study course was successfully created.' }
        format.json { render json: @study_course, status: :created, location: @study_course }
      else
        format.html { render action: "new" }
        format.json { render json: @study_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /study_courses/1
  # PUT /study_courses/1.json
  def update
    @study_course = StudyCourse.find(params[:id])

    respond_to do |format|
      if @study_course.update_attributes(params[:study_course])
        format.html { redirect_to @study_course, notice: 'Study course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @study_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_courses/1
  # DELETE /study_courses/1.json
  def destroy
    @study_course = StudyCourse.find(params[:id])
    @study_course.destroy

    respond_to do |format|
      format.html { redirect_to study_courses_url }
      format.json { head :no_content }
    end
  end
end

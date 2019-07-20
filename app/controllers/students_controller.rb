class StudentsController < ApplicationController

  before_action :find_student, only: [:show, :edit]


  def index
    @students = Student.all
  end

  def show
    find_student
  end

  def new
    @student = Student.new
  end


  def create
    #byebug
    @student = Student.create(student_params)
    redirect_to @student
  end




  private

  def find_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end

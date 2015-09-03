class DepartmentsController < ApplicationController
  def index
  	@departments= Department.all
  end

  def show
  	@department=Department.find(params[:dept_id])
  end
end

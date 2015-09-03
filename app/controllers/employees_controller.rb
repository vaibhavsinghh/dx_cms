class EmployeesController < ApplicationController
  def index
  	@employees=Employee.all
  end

  def new
  	@employee=Employee.new
  end
  def create
  	@employee=Employee.new(emp_params)
  	if @employee.save
      # If update succeeds, redirect to the index action
      flash[:notice] = "Employee added successfully."
      redirect_to(:action => 'index', :id => @employee.emp_id)
    else
      # If update fails, redisplay the form so user can fix problems
      render('edit')
    end
  end 

  def show
  	@employee=Employee.find(params[:emp_id])
  end

  def delete
  	@employee=Employee.find(params[:emp_id])
  end
  def destroy
    employee=Employee.find(params[:emp_id]).destroy
    flash[:notice] = "Employee '#{employee.emp_name}' removed successfully."
    redirect_to(:action => 'index')
  end
  def edit
  	@employee=Employee.find(params[:emp_id])
  end
  def update
  	@employee = Employee.find(params[:emp_id])
    # Update the object
    if @employee.update_attributes(emp_params)
      # If update succeeds, redirect to the index action
      flash[:notice] = "Details updated successfully."
      redirect_to(:action => 'index', :emp_id => @employee.emp_id)
    else
      # If update fails, redisplay the form so user can fix problems
      render('edit')
    end
  end
  private
  def emp_params

   params.require(:employee).permit(:emp_id, :emp_name, :qualification, :dob, :date_of_joining, :exp_in_years, :dept_id)

  end
end

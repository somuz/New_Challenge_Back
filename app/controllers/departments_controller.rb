class DepartmentsController < ApplicationController
  def index
    @departments = Department.all
    render json: @departments
  end

  def create
    @department = Department.new(department_params)

    if @department.save
      render json: @department, status: :created, location: @department
    else
      render json: @department.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @department
  end

  def update
    if @department.update(department_params)
      render json: @department
    else
      render json: @department.errors, status: :unprocessable_entity
    end
  end

 
  def destroy
    @department.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_department
    @department = Department.find(params[:id])
  end

  def department_params
    params.require(:department).permit(:num_departamento , :nombre_departamento)
  end

end

class ClasesController < ApplicationController
  def index
    @clases = Clase.all
    render json: @clases
  end
  def create
    @clase = Clase.new(clase_params)

    if @clase.save
      render json: @clase, status: :created, location: @clase
    else
      render json: @clase.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @clase
  end

  def update
    if @clase.update(clase_params)
      render json: @clase
    else
      render json: @clase.errors, status: :unprocessable_entity
    end
  end

  
  def destroy
    @clase.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_clase
    @clase = Clase.find(params[:id])
  end

  def clase_params
    params.require(:clase).permit(:num_clase, :nombre_clase, :department_id)
  end

end

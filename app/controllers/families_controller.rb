class FamiliesController < ApplicationController
  def index
    @families = Family.all
    render json: @families
  end

  def create
    @family = Family.new(family_params)

    if @family.save
      render json: @family, status: :created, location: @family
    else
      render json: @family.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @family
  end

  def update
    if @family.update(family_params)
      render json: @family
    else
      render json: @family.errors, status: :unprocessable_entity
    end
  end

 
  def destroy
    @family.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_family
    @family = Family.find(params[:id])
  end

  def family_params
    params.require(:family).permit(:num_familia , :nombre_familia, :clase_id)
  end

end

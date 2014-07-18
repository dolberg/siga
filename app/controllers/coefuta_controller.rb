class CoefutaController < ApplicationController
  before_action :set_coefutum, only: [:show, :edit, :update, :destroy]

  def index
  end


  def show
  end

  def new
    @coefutum = Coefutum.new

  end

  def edit
  end

  def create
    @coefutum = Coefutum.new(coefutum_params)
    @coefutum.empresa_id = @current_empresa.id

    
    if @coefutum.save
      redirect_to coefuta_path
    else
      respond_to do |format|
        format.html { render :new }
        format.json { render json: @coefutum.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    
    if @coefutum.update(coefutum_params)
      redirect_to coefuta_path   
    else
      respond_to do |format|
        format.html { render :edit }
        format.json { render json: @coefutum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coefuta/1
  # DELETE /coefuta/1.json
  def destroy
    @coefutum.destroy
    respond_to do |format|
      format.html { redirect_to coefuta_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coefutum
      @coefutum = Coefutum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coefutum_params
      params.require(:coefutum).permit(:empresa_id, :labor, :coef)
    end
end

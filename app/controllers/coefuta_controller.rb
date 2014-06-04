class CoefutaController < ApplicationController
  before_action :set_coefutum, only: [:show, :edit, :update, :destroy]

  def index
    @coefuta = Coefutum.all.where(:usuario_id => @current_user.id)
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
    @coefutum.usuario_id = @current_user.id

    respond_to do |format|
      if @coefutum.save
        format.html { redirect_to @coefutum}
        format.json { render :show, status: :created, location: @coefutum }
      else
        format.html { render :new }
        format.json { render json: @coefutum.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @coefutum.update(coefutum_params)
        format.html { redirect_to @coefutum}
        format.json { render :show, status: :ok, location: @coefutum }
      else
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
      params.require(:coefutum).permit(:usuario_id, :labor, :coef)
    end
end

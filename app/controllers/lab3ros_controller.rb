class Lab3rosController < ApplicationController
  before_action :set_lab3ro, only: [:show, :edit, :update, :destroy]

  # GET /lab3ros
  # GET /lab3ros.json
  def index
    
  end

  # GET /lab3ros/1
  # GET /lab3ros/1.json
  def show
     @insumolab3ros = Insumolab3ro.where(:lab3ro_id => params[:id])
  end

  # GET /lab3ros/new
  def new
    @lab3ro = Lab3ro.new
  end

  # GET /lab3ros/1/edit
  def edit
  end

  # POST /lab3ros
  # POST /lab3ros.json
  def create
    @lab3ro = Lab3ro.new(lab3ro_params)
    @lab3ro.empresa_id = @current_empresa.id

    
    if @lab3ro.save
      redirect_to lab3ros_path, notice: 'Lab3ro was successfully created.'
    else
      respond_to do |format|
        format.html { render :new }
        format.json { render json: @lab3ro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lab3ros/1
  # PATCH/PUT /lab3ros/1.json
  def update
    
    if @lab3ro.update(lab3ro_params)
      redirect_to lab3ros_path, notice: 'Lab3ro was successfully created.'
    else
      respond_to do |format|
        format.html { render :edit }
        format.json { render json: @lab3ro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lab3ros/1
  # DELETE /lab3ros/1.json
  def destroy
    @lab3ro.destroy
    respond_to do |format|
      format.html { redirect_to lab3ros_url, notice: 'Lab3ro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab3ro
      @lab3ro = Lab3ro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lab3ro_params
      params.require(:lab3ro).permit(:empresa_id, :fecha, :campo_id, :lote_id, :actividad_id, :superficie, :labor, :costo, :comentario, :momento)
    end
end

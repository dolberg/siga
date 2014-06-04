class Insumolab3rosController < ApplicationController
  before_action :set_lab3ro
  before_action :set_insumolab3ro, only: [:edit, :update, :destroy]


  # GET /insumolab3ros/new
  def new
    @insumolab3ro = Insumolab3ro.new
  end

  # GET /insumolab3ros/1/edit
  def edit
  end

  # POST /insumolab3ros
  # POST /insumolab3ros.json
  def create
    @insumolab3ro = Insumolab3ro.new(insumolab3ro_params)
    @insumolab3ro.lab3ro = @lab3ro

    respond_to do |format|
      if @insumolab3ro.save
        format.html { redirect_to @lab3ro, notice: 'Insumolab3ro was successfully created.' }
        format.json { render :show, status: :created, location: @lab3ro }
      else
        format.html { render :new }
        format.json { render json: @insumolab3ro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insumolab3ros/1
  # PATCH/PUT /insumolab3ros/1.json
  def update
    respond_to do |format|
      if @insumolab3ro.update(insumolab3ro_params)
        format.html { redirect_to @lab3ro, notice: 'Insumolab3ro was successfully updated.' }
        format.json { render :show, status: :ok, location: @lab3ro }
      else
        format.html { render :edit }
        format.json { render json: @insumolab3ro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insumolab3ros/1
  # DELETE /insumolab3ros/1.json
  def destroy
    @insumolab3ro.destroy
    respond_to do |format|
      format.html { redirect_to @lab3ro, notice: 'Insumolab3ro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insumolab3ro
      @insumolab3ro = Insumolab3ro.find(params[:id])
    end

    def set_lab3ro
      @lab3ro = Lab3ro.find(params[:lab3ro_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insumolab3ro_params
      params.require(:insumolab3ro).permit(:lab3ro_id, :insumo_id, :cantidad, :precio, :comentario)
    end
end

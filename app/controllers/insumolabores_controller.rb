class InsumolaboresController < ApplicationController
  before_action :set_labor
  before_action :set_insumolabore, only: [:edit, :update, :destroy]


  # GET /insumolabores/new
  def new
    @insumolabore = Insumolabore.new
  end

  # GET /insumolabores/1/edit
  def edit
  end

  # POST /insumolabores
  # POST /insumolabores.json
  def create
    @insumolabore = Insumolabore.new(insumolabore_params)
    @insumolabore.labor = @labor

    respond_to do |format|
      if @insumolabore.save
        format.html { redirect_to @labor, notice: 'Insumolabore was successfully created.' }
        format.json { render :show, status: :created, location: @labor }
      else
        format.html { render :new }
        format.json { render json: @insumolabore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insumolabores/1
  # PATCH/PUT /insumolabores/1.json
  def update
    respond_to do |format|
      if @insumolabore.update(insumolabore_params)
        format.html { redirect_to @labor, notice: 'Insumolabore was successfully updated.' }
        format.json { render :show, status: :ok, location: @labor }
      else
        format.html { render :edit }
        format.json { render json: @insumolabore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insumolabores/1
  # DELETE /insumolabores/1.json
  def destroy
    @insumolabore.destroy
    respond_to do |format|
      format.html { redirect_to @labor, notice: 'Insumolabore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insumolabore
      @insumolabore = Insumolabore.find(params[:id])
    end

    def set_labor
      @labor = Labor.find(params[:labor_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insumolabore_params
      params.require(:insumolabore).permit(:labor_id, :insumo_id, :cantidad, :precio,:comentario)
    end
end

class LaborsController < ApplicationController
  before_action :set_labor, only: [:show, :edit, :update, :destroy]

  # GET /labors
  # GET /labors.json
  def index
    @labors = Labor.all.where(:usuario_id => @current_user.id)
  end

  # GET /labors/1
  # GET /labors/1.json
  def show
    @insumolabores = Insumolabore.where(:labor_id => params[:id])
  end

  # GET /labors/new
  def new
    @labor = Labor.new
    @campos = Campo.all.where(:usuario_id => @current_user.id)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @labor }
    end
  end

  # GET /labors/1/edit
  def edit
  end

  # POST /labors
  # POST /labors.json
  def create
    @labor = Labor.new(labor_params)
    @labor.usuario_id = @current_user.id

    respond_to do |format|
      if @labor.save
        format.html { redirect_to @labor, notice: 'Labor was successfully created.' }
        format.json { render :show, status: :created, location: @labor }
      else
        format.html { render :new }
        format.json { render json: @labor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /labors/1
  # PATCH/PUT /labors/1.json
  def update
    respond_to do |format|
      if @labor.update(labor_params)
        format.html { redirect_to @labor, notice: 'Labor was successfully updated.' }
        format.json { render :show, status: :ok, location: @labor }
      else
        format.html { render :edit }
        format.json { render json: @labor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /labors/1
  # DELETE /labors/1.json
  def destroy
    @labor.destroy
    respond_to do |format|
      format.html { redirect_to labors_url, notice: 'Labor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_lotes
    @campo = Campo.find(params[:campo_id], :joins => :lotes)

    respond_to do |format|
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_labor
      @labor = Labor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def labor_params
      params.require(:labor).permit(:usuario_id, :fecha, :campo_id, :lote_id, :actividad_id, :superficie, :coefutum_id, :comentario)
    end
end


class FacyRemsController < ApplicationController
  before_action :set_facy_rem, only: [:show, :edit, :update, :destroy]

  def index
    
  end

  # GET /facy_rems/1
  # GET /facy_rems/1.json
  def show
    @compra_insumos = CompraInsumo.where(:facy_rem_id => params[:id])
  end

  # GET /facy_rems/new
  def new
    @facy_rem = FacyRem.new
  end

  # GET /facy_rems/1/edit
  def edit
    
  end

  # POST /facy_rems
  # POST /facy_rems.json
  def create
    @facy_rem = FacyRem.new(facy_rem_params)
    @facy_rem.empresa_id = @current_empresa.id
    if @facy_rem.save()
      redirect_to facy_rems_path, :notice => "El registro ha sido creado";
    else
      render "new";
   end
  end

  # PATCH/PUT /facy_rems/1
  # PATCH/PUT /facy_rems/1.json
  def update
    if @facy_rem.update(facy_rem_params)
      redirect_to facy_rems_path
    else
      render "edit"
    end
  end

  # DELETE /facy_rems/1
  # DELETE /facy_rems/1.json
  def destroy
    if @facy_rem.destroy()
      redirect_to facy_rems_path, :notice => "El registro ha sido eliminad";
   else
      redirect_to facy_rems_path, :notice => "El registro NO ha podido ser eliminado";
   end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def facy_rem_params
      params.require(:facy_rem).permit(:empresa_id, :fecha, :comprobante, :proveedor)
    end

    def set_facy_rem
       @facy_rem = FacyRem.find(params[:id])
     end

end

class FacyRemsController < ApplicationController

  def index
    @facy_rems = FacyRem.all.where(:usuario_id => @current_user.id)
  end

  # GET /facy_rems/1
  # GET /facy_rems/1.json
  def show
    @facy_rem = FacyRem.find(params[:id]);
    @compra_insumos = CompraInsumo.where(:facyrem_id => params[:id])
  end

  # GET /facy_rems/new
  def new
    @facy_rem = FacyRem.new
  end

  # GET /facy_rems/1/edit
  def edit
    @facy_rem = FacyRem.find(params[:id])
    @fecha = @facy_rem.fecha
    @comprobante = @facy_rem.comprobante
    @proveedor = @facy_rem.proveedor
  end

  # POST /facy_rems
  # POST /facy_rems.json
  def create
    @facy_rem = FacyRem.new(facy_rem_params)
    @facy_rem.usuario_id = @current_user.id
    if @facy_rem.save()
      redirect_to facy_rems_path, :notice => "El registro ha sido creado";
    else
      render "new";
   end
  end

  # PATCH/PUT /facy_rems/1
  # PATCH/PUT /facy_rems/1.json
  def update
    @fecha = params[:facy_rem]["fecha"]
    @comprobante = params[:facy_rem]["comprobante"]
    @proveedor = params[:facy_rem]["proveedor"]

    @facy_rem = FacyRem.find(params[:id])

    @facy_rem.fecha = @fecha
    @facy_rem.comprobante = @comprobante 
    @facy_rem.proveedor = @proveedor
    if @facy_rem.save()
      redirect_to facy_rems_path
    else
      render "edit"
    end
  end

  # DELETE /facy_rems/1
  # DELETE /facy_rems/1.json
  def destroy
    @facy_rem.destroy
    if @facy_rem.destroy()
      redirect_to facy_rems_path, :notice => "El registro ha sido eliminad";
   else
      redirect_to facy_rems_path, :notice => "El registro NO ha podido ser eliminado";
   end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def facy_rem_params
      params.require(:facy_rem).permit(:usuario_id, :fecha, :comprobante, :proveedor)
    end
end

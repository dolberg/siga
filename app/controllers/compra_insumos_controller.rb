class CompraInsumosController < ApplicationController
  before_action :set_compra_insumo, only: [:show, :edit, :update, :destroy]

  # GET /compra_insumos
  # GET /compra_insumos.json
  def index
    @compra_insumos = CompraInsumo.all.where(:usuario_id => @current_user.id);
    @insumos = Insumo.select("producto")
  end

  # GET /compra_insumos/1
  # GET /compra_insumos/1.json
  def show
  end

  # GET /compra_insumos/new
  def new
    @compra_insumo = CompraInsumo.new
  end

  # GET /compra_insumos/1/edit
  def edit
    @compra_insumo = CompraInsumo.find(params[:id]);
    @fecha = @compra_insumo.fecha; 
    @comprobante = @compra_insumo.comprobante;
    @insumo = @compra_insumo.insumo_id;
    @marca = @compra_insumo.marca;
    @proveedor = @compra_insumo.proveedor;
    @cant_fac = @compra_insumo.cant_fac;
    @cant_rem = @compra_insumo.cant_rem;
    @monto = @compra_insumo.monto;
  end

  # POST /compra_insumos
  # POST /compra_insumos.json
  def create
    @compra_insumo = CompraInsumo.new(compra_insumo_params)
    @compra_insumo.usuario_id = @current_user.id

      if @compra_insumo.save
        redirect_to compra_insumos_path
      else
        render "new"
      end
  
  end

  # PATCH/PUT /compra_insumos/1
  # PATCH/PUT /compra_insumos/1.json
  def update
    @fecha = params[:compra_insumo]["fecha"];
    @comprobante = params[:compra_insumo]["comprobante"];
    @insumo = params[:compra_insumo]["insumo_id"];
    @marca = params[:compra_insumo]["marca"];
    @proveedor = params[:compra_insumo]["proveedor"];
    @cant_fac = params[:compra_insumo]["cant_fac"];
    @cant_rem = params[:compra_insumo]["cant_rem"];
    @monto = params[:compra_insumo]["monto"];
    @compra_insumo = CompraInsumo.find(params[:id]);
    @compra_insumo.fecha = @fecha
    @compra_insumo.comprobante = @comprobante;
    @compra_insumo.insumo_id = @insumo;
    @compra_insumo.marca = @marca;
    @compra_insumo.proveedor = @proveedor;
    @compra_insumo.cant_fac = @cant_fac;
    @compra_insumo.cant_rem = @cant_rem;
    @compra_insumo.monto = @monto
   if @compra_insumo.save()
      redirect_to compra_insumos_path, :notice => "El registro ha sido modificado";
   else
      render "edit";
   end

  end

  # DELETE /compra_insumos/1
  # DELETE /compra_insumos/1.json
  def destroy
    @compra_insumo.destroy
    respond_to do |format|
      format.html { redirect_to compra_insumos_url, notice: 'Compra insumo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compra_insumo
      @compra_insumo = CompraInsumo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compra_insumo_params
      params.require(:compra_insumo).permit(:usuario_id, :fecha, :comprobante, :insumo_id, :marca, :proveedor, :cant_fac, :cant_rem, :monto)
    end
end

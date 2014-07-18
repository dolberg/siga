class CompraInsumosController < ApplicationController
  before_action :set_facy_rem
  before_action :set_compra_insumo, only: [:edit, :update, :destroy]
  def new
    @compra_insumo = CompraInsumo.new();
  end

  def create
    @compra_insumo = CompraInsumo.new(compra_insumo_params)
    @compra_insumo.facy_rem = @facy_rem
   if @compra_insumo.save()
      redirect_to facy_rems_path, :notice => "El registro ha sido agregado";
   else
      render "new";
   end
  end
  
  def edit
    
  end

  def update
    if @compra_insumo.update(compra_insumo_params)
      redirect_to facy_rems_path, :notice => "El registro ha sido modificado";
   else
      render "edit";
   end

  end

  def destroy
    if @compra_insumo.destroy()
      redirect_to facy_rems_path, :notice => "El registro ha sido eliminado";
   else
      redirect_to facy_rems_path, :notice => "El registro no se ha podido eliminar";
   end
  end

  private

  def compra_insumo_params
    params.require(:compra_insumo).permit(:facy_rem_id, :producto_id, :marca, :cant_fac, :monto, :cant_rem)
  end

  def set_facy_rem
    @facy_rem = FacyRem.find(params[:facy_rem_id])
  end

  def set_compra_insumo
    @compra_insumo = CompraInsumo.find(params[:id])
  end
end

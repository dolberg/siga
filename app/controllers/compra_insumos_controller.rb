class CompraInsumosController < ApplicationController
  before_action :set_facy_rem
  before_action :set_compra_insumo, only: [:edit, :update, :destroy]
  def new
    @compra_insumo = CompraInsumo.new();
  end

  def create
    @compra_insumo = CompraInsumo.new({
      :insumo_id => params[:compra_insumo][:insumo_id],
      :marca => params[:compra_insumo][:marca],
      :cant_fac => params[:compra_insumo][:cant_fac],
      :cant_rem => params[:compra_insumo][:cant_rem],
      :monto => params[:compra_insumo][:monto],
      :facy_rem => @facy_rem
    });
   if @compra_insumo.save()
      redirect_to @facy_rem, :notice => "El registro ha sido agregado";
   else
      render "new";
   end
  end
  
  def edit
    @insumo_id = @compra_insumo.insumo_id
    @marca = @compra_insumo.marca
    @cant_fac = @compra_insumo.cant_fac
    @cant_rem = @compra_insumo.cant_rem
    @monto = @compra_insumo.monto
  end

  def update
    @compra_insumo.insumo_id = params[:compra_insumo][:insumo_id],
    @compra_insumo.marca = params[:compra_insumo][:marca],
    @compra_insumo.cant_fac = params[:compra_insumo][:cant_fac],
    @compra_insumo.cant_rem = params[:compra_insumo][:cant_rem],
    @compra_insumo.monto = params[:compra_insumo][:monto],
    if @compra_insumo.save()
      redirect_to @facy_rem, :notice => "El registro ha sido modificado";
   else
      render "edit";
   end

  end

  def destroy
    if @compra_insumo.destroy()
      redirect_to @facy_rem, :notice => "El registro ha sido eliminado";
   else
      redirect_to @facy_rem, :notice => "El registro no se ha podido eliminar";
   end
  end

  private

  def set_facy_rem
    @facy_rem = FacyRem.find(params[:facy_rem_id])
  end

  def set_compra_insumo
    @compra_insumo = CompraInsumo.find(params[:id])
  end
end



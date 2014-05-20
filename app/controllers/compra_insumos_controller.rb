class CompraInsumosController < ApplicationController
  def new
    @facy_rem = FacyRem.find(params[:facy_rem_id]);
    @compra_insumo = CompraInsumo.new();
  end

  def create
    @insumo = params[:compra_insumo][:insumo_id];
    @marca = params[:compra_insumo][:marca];
    @cant_fac = params[:compra_insumo][:cant_fac];
    @cant_rem = params[:compra_insumo][:cant_rem];
    @monto = params[:compra_insumo][:monto];
    @facy_rem = FacyRem.find(params[:facy_rem_id]);
    @compra_insumo = CompraInsumo.new({
      :insumo_id => @insumo,
      :marca => @marca,
      :cant_fac => @cant_fac,
      :cant_rem => @cant_rem,
      :monto => @monto,
      :FacyRem => @facy_rem
    });
   if @compra_insumo.save()
      redirect_to @facy_rem, :notice => "El registro ha sido agregado";
   else
      render "new";
   end
  end
  
  def edit
    @facy_rem = FacyRem.find(params[:facy_rem_id])
    @compra_insumo = CompraInsumo.find(params[:id])
    @insumo_id = @compra_insumo.insumo_id
    @marca = @compra_insumo.marca
    @cant_fac = @compra_insumo.cant_fac
    @cant_rem = @compra_insumo.cant_rem
    @monto = @compra_insumo.monto
  end

  def update
    @insumo_id = params[:compra_insumo][:insumo_id]
    @marca = params[:compra_insumo][:marca]
    @cant_fac = params[:compra_insumo][:cant_fac]
    @cant_rem = params[:compra_insumo][:cant_rem]
    @monto = params[:compra_insumo][:monto]
    @facy_rem = FacyRem.find(params[:facyrem_id])
    @compra_insumo = CompraInsumo.find(params[:id])
    @compra_insumo.insumo_id = @insumo_id
    @compra_insumo.marca = @marca
    @compra_insumo.cant_fac = @cant_fac
    @compra_insumo.cant_rem = @cant_rem
    @compra_insumo.monto = @monto
    if @compra_insumo.save()
      redirect_to @facy_rem, :notice => "El registro ha sido modificado";
   else
      render "edit";
   end

  end

  def destroy
    @facy_rem = FacyRem.find(params[:facy_rem_id])
    @compra_insumo = CompraInsumo.find(params[:id])
    if @compra_insumo.destroy()
      redirect_to @facy_rem, :notice => "El registro ha sido eliminado";
   else
      redirect_to @facy_rem, :notice => "El registro no se ha podido eliminar";
   end
  end
end

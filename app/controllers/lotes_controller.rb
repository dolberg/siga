class LotesController < ApplicationController
  def new
    @campo = Campo.find(params[:campo_id]);
    @lote = Lote.new();
  end

  def create
    @lote = params[:lote][:lote];
    @superficie = params[:lote][:superficie]
   @campo = Campo.find(params[:campo_id]);
   @lote = Lote.new({
      :lote => @lote,
      :campo => @campo,
      :superficie => @superficie
   });
   if @lote.save()
      redirect_to @campo, :notice => "El lote ha sido agregado";
   else
      render "new";
   end
  end
  def edit
    @campo = Campo.find(params[:campo_id])
    @lote = Lote.find(params[:id])
    @lo = @lote.lote
    @superficie = @lote.superficie
  end

  def update
    @lo = params[:lote][:lote]
    @superficie = params[:lote][:superficie]
    @campo = Campo.find(params[:campo_id])
    @lote = Lote.find(params[:id])
    @lote.lote = @lo
    @lote.superficie = @superficie
    if @lote.save()
      redirect_to @campo, :notice => "El lote ha sido modificado";
   else
      render "edit";
   end

  end

  def destroy
    @campo = Campo.find(params[:campo_id])
    @lote = Lote.find(params[:id])
    if @lote.destroy()
      redirect_to @campo, :notice => "El lote ha sido eliminado";
   else
      redirect_to @campo, :notice => "El lote no se ha podido eliminar";
   end
  end
end

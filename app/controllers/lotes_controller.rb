class LotesController < ApplicationController
  before_action :set_campo
  before_action :set_lote, only: [:update, :edit, :destroy]
  def new
    @lote = Lote.new();
  end

  def create
    @lote = Lote.new({
      :lote => params[:lote][:lote],
      :campo => @campo,
      :superficie => params[:lote][:superficie]
    });
   if @lote.save()
      redirect_to @campo, :notice => "El lote ha sido agregado";
   else
      render "new";
   end
  end
  
  def edit
    @lo = @lote.lote
    @superficie = @lote.superficie
  end

  def update
    @lote.lote = params[:lote][:lote]
    @lote.superficie = params[:lote][:superficie]
    if @lote.save()
      redirect_to @campo, :notice => "El lote ha sido modificado";
   else
      render "edit";
   end

  end

  def destroy
    if @lote.destroy()
      redirect_to @campo, :notice => "El lote ha sido eliminado";
   else
      redirect_to @campo, :notice => "El lote no se ha podido eliminar";
   end
  end

  def loteactividads

    @loteactividads = Loteactividad.where(:lote_id => params[:lote_id])
    respond_to do |format|
        format.js {}
    end
      
  end

  private

  def set_campo
    @campo = Campo.find(params[:campo_id])
  end

  def set_lote
    @lote = Lote.find(params[:id])
  end

end

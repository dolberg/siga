class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :current_user
  before_action :current_empresa
  before_action :varios
  

  def current_user
  	@current_user = Usuario.find(session[:user_id])
  end

  def current_empresa
  	@current_empresa = Empresa.find(session[:empresa_id])
  end

  def varios
    if @current_empresa != nil
      @actividads = Actividad.all.where(:empresa_id => @current_empresa.id)
      @campos = Campo.all.where(:empresa_id => @current_empresa.id)
      @coefuta = Coefutum.all.where(:empresa_id => @current_empresa.id)
      @facy_rems = FacyRem.all.where(:empresa_id => @current_empresa.id)
      @insumos = Producto.all.where(:empresa_id => @current_empresa.id).where(:clase => "insumo")
      @productos = Producto.all.where(:empresa_id => @current_empresa.id).where( :clase => nil)
      
    end
  end


  def sumaproducto(x,y,z)
    if sumaproducto(x,y,z)
      valor=0
      a=Array.new
      x.each do |b|
        c = b.y * b.z
        a<<c
      end

      a.each do |d|
        d += valor
      end

      return valor
    end
  end

end

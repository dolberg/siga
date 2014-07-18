class ResultadoController < ApplicationController

  def agricultura
  	
  end

  def forrajesconservados
  	
  end

  def forrajes
  	
  end

  def sementerafinal

  end

  def produccion
    @loteactividades=Loteactividad.all.where(:actividad=>Actividad.where(:tipo=>["Agricultura", "Forrajes Conservados- Silos", "Forrajes Conservados- Henos"]).where(:sementera=>["Sementera al Inicio", "Ejercicio"]))
    @labores=Labor.all.where(:actividad=>Actividad.where(:tipo=>["Agricultura", "Forrajes Conservados- Silos", "Forrajes Conservados- Henos"]).where(:sementera=>["Sementera al Inicio", "Ejercicio"]))
    @insumolabores=Insumolabore.all.where(:labor=>@labores)
    @lab3ros=Lab3ro.all.where(:actividad=>Actividad.where(:tipo=>["Agricultura", "Forrajes Conservados- Silos", "Forrajes Conservados- Henos"]).where(:sementera=>["Sementera al Inicio", "Ejercicio"]))
    @insumolab3ros=Insumolab3ro.all.where(:lab3ro=>@lab3ros)
    
    @ingresos=0
    
    @loteactividades.each do |a|
      @ingresos += a.precioproduccion * a.produccion
    end

    @costos=0
    
    @labores.each do |a|
      @costos += a.superficie*a.coefutum.coef*250
    end

    @insumolabores.each do |a|
      @costos += a.cantidad*a.precio
    end

@lab3ros.each do |a|
      @costos += a.costo
    end

    @insumolab3ros.each do |a|
      @costos += a.cantidad*a.precio
    end

  end

end

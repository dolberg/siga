class PrincipalController < ApplicationController
	 skip_before_action :current_empresa

	def principal
		
		@usuarioempresa = Usuarioempresa.all.where(:usuario_id => @current_user.id)
		
	end

end

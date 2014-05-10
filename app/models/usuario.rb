class Usuario < ActiveRecord::Base
	has_many :insumo
	#Validaciones de nombre
	validates :nombre, :presence => {:message => "Usted debe ingresar su nombre"}
	#Validaciones de apellido
	validates :apellido, :presence => {:message => "Usted debe ingresar su apellido"}
	#Validaciones de nombre de usuario
	validates :user, :presence => {:message => "Usted debe ingresar un nombre de usuario"}
	#Validaciones de contraseña
	validates :pass, :presence => {:message => "Usted debe ingresar una contraseña"}, length: {minimum: 7, maximum: 20, :message => "La contraseña debe tener entre 7 y 20 caracteres"}
end

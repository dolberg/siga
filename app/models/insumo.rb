class Insumo < ActiveRecord::Base
  belongs_to :usuario
  has_many :compra_insumo
  #Validaciones de producto
	validates :producto, :presence => {:message => "Usted debe ingresar nombre de producto"}
  #Validaciones de usuario
	validates :usuario_id, :presence => {:message => "Usted no está registrado como usuario"}
end

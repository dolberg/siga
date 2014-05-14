class CompraInsumo < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :insumo
end

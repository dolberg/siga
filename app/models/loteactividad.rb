class Loteactividad < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :campo
  belongs_to :lote
  belongs_to :actividad
end

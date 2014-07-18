class Loteactividad < ActiveRecord::Base
  belongs_to :empresa
  belongs_to :campo
  belongs_to :lote
  belongs_to :actividad
end

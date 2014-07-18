class Labor < ActiveRecord::Base
  belongs_to :empresa
  belongs_to :campo
  belongs_to :lote
  belongs_to :actividad
  belongs_to :coefutum
end

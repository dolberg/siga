class Labor < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :campo
  belongs_to :lote
  belongs_to :coefutum
  has_many :insumolabores
end

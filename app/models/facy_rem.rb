class FacyRem < ActiveRecord::Base
  belongs_to :usuario
  has_many :CompraInsumos
end

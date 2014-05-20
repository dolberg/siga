class CompraInsumo < ActiveRecord::Base
  belongs_to :FacyRem
  belongs_to :insumo
end

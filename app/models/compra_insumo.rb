class CompraInsumo < ActiveRecord::Base
  belongs_to :facy_rem
  belongs_to :producto
end

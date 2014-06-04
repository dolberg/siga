class Lab3ro < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :campo
  belongs_to :lote
end

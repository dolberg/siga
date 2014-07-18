class Actividad < ActiveRecord::Base
  belongs_to :empresa
  belongs_to :producto
end

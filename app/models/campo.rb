class Campo < ActiveRecord::Base
  belongs_to :usuario
  has_many :lotes
end

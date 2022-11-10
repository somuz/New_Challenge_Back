class Clase < ApplicationRecord
  belongs_to :department

  #validaciones
  validates :nombre_clase, presence: true, uniqueness: true
  validates :num_clase, length: { maximum: 2} 
end

class Department < ApplicationRecord

  #validaciones
  validates :nombre_departamento, presence: true, uniqueness: true
  validates :num_departamento, length: { maximum: 1}
end

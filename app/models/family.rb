class Family < ApplicationRecord
  belongs_to :clase

  #validaciones
  validates :nombre_familia, presence: true, uniqueness: true
  validates :num_familia, length: { maximum: 3}
end

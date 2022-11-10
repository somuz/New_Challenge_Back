class Article < ApplicationRecord
  #validaciones

validates :sku, length: { maximum: 6}
validates :articulo, length: { maximum: 15}
validates :marca, length: { maximum: 15}
validates :modelo, length: { maximum: 20}
validates :stock, length: { maximum: 9}
validates :cantidad, length: { maximum: 9}
validate :validate_stock_cantidad



def validate_stock_cantidad
  if cantidad > stock 
    return errors[:cantidad] << "La cantidad no puede ser mayor que el stock"
  else "Validado"
    end
  end
end

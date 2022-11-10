class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.integer :sku
      t.text :articulo
      t.text :marca
      t.text :modelo
      t.date :alta
      t.integer :stock
      t.integer :cantidad
      t.boolean :descontinuado
      t.date :baja

      t.timestamps
    end
  end
end

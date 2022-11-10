class CreateClases < ActiveRecord::Migration[7.0]
  def change
    create_table :clases do |t|
      t.integer :num_clase
      t.string :nombre_clase
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end

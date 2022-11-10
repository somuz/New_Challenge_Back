class CreateFamilies < ActiveRecord::Migration[7.0]
  def change
    create_table :families do |t|
      t.integer :num_familia
      t.string :nombre_familia
      t.references :clase, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.integer :num_departamento  
      t.string :nombre_departamento

      t.timestamps
    end
  end
end

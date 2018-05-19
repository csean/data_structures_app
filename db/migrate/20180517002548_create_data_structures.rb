class CreateDataStructures < ActiveRecord::Migration[5.2]
  def change
    create_table :data_structures do |t|
      t.string :name, null: false
      t.integer :structure_type, default: 0
      t.text :structure
      t.references :user, index: true
      t.timestamps
    end
  end
end

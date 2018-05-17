class CreateDataStructures < ActiveRecord::Migration[5.2]
  def change
    create_table :data_structures do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.references :user, index: true
      t.timestamps
    end
  end
end

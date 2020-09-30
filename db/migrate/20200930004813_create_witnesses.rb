class CreateWitnesses < ActiveRecord::Migration[6.0]
  def change
    create_table :witnesses do |t|
      t.string :name
      t.string :rut
      t.integer :age
      t.string :detalle

      t.timestamps
    end
  end
end

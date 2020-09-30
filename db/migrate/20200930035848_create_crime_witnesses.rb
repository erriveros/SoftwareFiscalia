class CreateCrimeWitnesses < ActiveRecord::Migration[6.0]
  def change
    create_table :crime_witnesses do |t|
      t.references :crime, null: false, foreign_key: true
      t.references :witness, null: false, foreign_key: true

      t.timestamps
    end
  end
end

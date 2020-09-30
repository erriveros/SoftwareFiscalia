class CreateCrimeVictims < ActiveRecord::Migration[6.0]
  def change
    create_table :crime_victims do |t|
      t.references :crime, null: false, foreign_key: true
      t.references :victim, null: false, foreign_key: true

      t.timestamps
    end
  end
end

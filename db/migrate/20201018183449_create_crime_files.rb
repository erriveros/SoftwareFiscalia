class CreateCrimeFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :crime_files do |t|
      t.references :crime, null: false, foreign_key: true
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

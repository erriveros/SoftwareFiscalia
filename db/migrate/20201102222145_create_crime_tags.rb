class CreateCrimeTags < ActiveRecord::Migration[6.0]
  def change
    create_table :crime_tags do |t|
      t.integer :tag_id
      t.string :tag

      t.timestamps
    end
  end
end

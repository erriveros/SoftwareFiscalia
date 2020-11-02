class DropCrimeTag < ActiveRecord::Migration[6.0]
  def change
    drop_table CrimeTag
  end
end

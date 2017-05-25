class CreatePlaceholders < ActiveRecord::Migration[5.0]
  def change
    create_table :placeholders do |t|
      t.string :location
      t.integer :total_floors

      t.timestamps
    end
  end
end

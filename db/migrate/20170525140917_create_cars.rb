class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.integer :number
      t.string :model
      t.references :floor, foreign_key: true

      t.timestamps
    end
  end
end

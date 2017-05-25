class CreateFloors < ActiveRecord::Migration[5.0]
  def change
    create_table :floors do |t|
      t.integer :car_capacity
      t.references :parking_lot, foreign_key: true

      t.timestamps
    end
  end
end

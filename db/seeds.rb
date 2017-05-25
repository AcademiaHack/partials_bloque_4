# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ParkingLot.delete_all

MAX_FLOORS_APP=8

parking_lots = [
	{location:'Chacao', total_floors:2},
	{location:'Baruta', total_floors:4},
	{location:'Libertador', total_floors:7}
]

def create_parking_lot pl_data
	p = ParkingLot.new(pl_data)
	p.total_floors.times do
		floor = create_floor(rand(MAX_FLOORS_APP)+1)
		p.floors << floor
	end
	p.save
end

def create_floor cap
	Floor.create(car_capacity: cap)
end

parking_lots.each do |pl|
	create_parking_lot(pl)
end
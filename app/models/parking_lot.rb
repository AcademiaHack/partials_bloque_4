# == Schema Information
#
# Table name: parking_lots
#
#  id           :integer          not null, primary key
#  location     :string
#  total_floors :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class ParkingLot < ApplicationRecord
	has_many :floors, dependent: :destroy
end

# == Schema Information
#
# Table name: floors
#
#  id             :integer          not null, primary key
#  car_capacity   :integer
#  parking_lot_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Floor < ApplicationRecord
  belongs_to :parking_lot
  has_many :cars, dependent: :destroy
end

# == Schema Information
#
# Table name: cars
#
#  id         :integer          not null, primary key
#  number     :integer
#  model      :string
#  floor_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Car < ApplicationRecord
  belongs_to :floor
end

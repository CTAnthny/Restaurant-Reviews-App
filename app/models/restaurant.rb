class Restaurant < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { in: 3..250 }
  validates :address, presence: true, length: { in: 5..250 }
  validates :city, presence: true, length: { in: 2..50 }
  validates :state, presence: true, length: { in: 2..50 }
  validates :zip, presence: true, length: { is: 5 }, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

end

class Restaurant < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { in: 3..100 }
  validates :address, presence: true, length: { in: 5..100 }
  validates :city, presence: true, length: { in: 2..50 }
  validates :state, presence: true, length: { in: 2..50 }
  validates :zip, presence: true, zip: true
  validates :description, presence: true, length: { in: 15..500 }
end

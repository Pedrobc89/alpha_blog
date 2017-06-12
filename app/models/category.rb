class Category < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: {in: 3..25}
end

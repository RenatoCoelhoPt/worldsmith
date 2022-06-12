class Group < ApplicationRecord
  has_and_belongs_to_many :characters

  validates :name, presence: true, uniqueness: true
end

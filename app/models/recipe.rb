class Recipe < ApplicationRecord
  belongs_to :course
  belongs_to :user
  has_and_belongs_to_many :ingredients
end

class Project < ApplicationRecord
  has_many :belongs
  has_many :users, through: :belongs
end

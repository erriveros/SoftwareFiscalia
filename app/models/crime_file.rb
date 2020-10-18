class CrimeFile < ApplicationRecord
  belongs_to :crime
  belongs_to :user
  has_one_attached :file
end

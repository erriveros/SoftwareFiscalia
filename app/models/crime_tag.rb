class CrimeTag < ApplicationRecord
  validates :tag_id, uniqueness: true
  validates :tag, uniqueness: true
end

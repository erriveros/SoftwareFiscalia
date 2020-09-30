class Crime < ApplicationRecord
  has_many_attached :images
  has_many_attached :files
  has_one_attached :clip
end

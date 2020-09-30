class Thief < ApplicationRecord
  validates :rut, format: { with: /\d{1,2}\.\d{3}\.\d{3}[\-][0-9kK]{1}/,
                            message: 'invalid' }, uniqueness: true
end

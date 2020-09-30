class Witness < ApplicationRecord
  validates :rut, format: { with: /([0-3]{0,1}+).([000-999]{3}+).([000-999]{3}+)-([0-9])/,
                            message: 'invalid' }, uniqueness: true
end

class CrimeWitness < ApplicationRecord
  belongs_to :crime
  belongs_to :witness
end

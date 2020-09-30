class CrimeVictim < ApplicationRecord
  belongs_to :crime
  belongs_to :victim
end

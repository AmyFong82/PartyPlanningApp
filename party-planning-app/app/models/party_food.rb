class PartyFood < ApplicationRecord
	belongs_to :food
	belongs_to :party
end
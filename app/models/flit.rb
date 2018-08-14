class Flit < ApplicationRecord
	has_many :flitdestinations
	has_many :destinations, through: :flitdestinations
end

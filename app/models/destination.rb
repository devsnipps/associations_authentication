class Destination < ApplicationRecord
	has_many :flitdestinations
	has_many :flits, through: :flitdestinations
end

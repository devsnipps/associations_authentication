class Friend < Contact
	belongs_to :user
	validates :name, presence: true
end
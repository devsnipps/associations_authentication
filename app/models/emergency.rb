class Emergency < Contact
	belongs_to :user
	validates :name, presence: true
end
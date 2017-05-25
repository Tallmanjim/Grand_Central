class Staff < ApplicationRecord
	belongs_to :company, optional: false
	has_many :projects
end

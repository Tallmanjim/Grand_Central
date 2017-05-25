class Project < ApplicationRecord
	belongs_to :company, optional: false
end

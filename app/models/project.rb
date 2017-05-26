class Project < ApplicationRecord
  belongs_to :company
  
	validates :name, presence: true
	validates :name, length: { minimum: 2}
	validates :shortname, presence: true
	validates :shortname, length: { in: 2..4 }
end

class Company < ApplicationRecord
	belongs_to :user, optional: false

	has_many :projects
	has_many :staff_members
	
	accepts_nested_attributes_for :staff_members, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :projects, reject_if: :all_blank, allow_destroy: true

	validates :name, presence: true
	validates :name, length: { minimum: 2}
	validates :shortname, presence: true
	validates :shortname, length: { in: 2..4 }
end

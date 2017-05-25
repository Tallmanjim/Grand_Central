class Company < ApplicationRecord
	belongs_to :user, optional: false
	has_many :staff
	accepts_nested_attributes_for :staff, reject_if: :all_blank, allow_destroy: true
end

class StaffMember < ApplicationRecord
  belongs_to :company

  validates :name, presence: true
	validates :name, length: { minimum: 2}
end

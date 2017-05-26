class StaffMember < ApplicationRecord
  belongs_to :company, inverse_of: :staff_members

  validates :name, presence: true
  validates :name, length: { minimum: 2}
end

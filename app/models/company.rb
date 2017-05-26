class Company < ApplicationRecord
  belongs_to :user, optional: false

  has_many :projects, inverse_of: :company
  has_many :staff_members, inverse_of: :company
  
  accepts_nested_attributes_for :staff_members, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :projects, reject_if: :all_blank, allow_destroy: true

  validates :name, presence: true
  validates :name, length: { minimum: 2}
end

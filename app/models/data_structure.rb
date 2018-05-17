class DataStructure < ApplicationRecord

  validates :name, :type, presence: true

  scope :by_user, -> (user_id) { where(user_id: user_id) }
end

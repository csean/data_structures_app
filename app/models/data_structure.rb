class DataStructure < ApplicationRecord
  attr_accessor :values
  enum structure_type: { linked_list: 0 }
  validates :name, presence: true

  scope :by_user, -> (user_id) { where(user_id: user_id) }

  def structure_object
    @structure_object ||= YAML.safe_load(structure, [LinkedList::List, LinkedList::Node])
  end
end

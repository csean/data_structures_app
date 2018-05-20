class DataStructure < ApplicationRecord
  attr_accessor :values
  enum structure_type: { linked_list: 0, binary_search_tree: 1 }
  validates :name, :structure_type, presence: true

  belongs_to :user

  scope :by_user, -> (user_id) { where(user_id: user_id) }

  def structure_object
    @structure_object ||= Psych.safe_load(structure, [
                            LinkedList::List,
                            LinkedList::Node,
                            Bstree::Node
                          ], [], true)
  end
end

class CreateStructure::LinkedListStructure
  attr_accessor :values
  def initialize(values)
    @values = values
  end

  def create
    list = LinkedList::Node.new(values.shift)
    current_node = list
    while values.present?
      node = LinkedList::Node.new(values.shift)
      current_node.next = node
      current_node = node
    end
    list
  end
end

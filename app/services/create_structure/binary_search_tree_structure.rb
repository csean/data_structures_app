class CreateStructure::BinarySearchTreeStructure
  attr_accessor :values
  def initialize(values)
    @values = values
  end

  def create
    tree = Bstree::Node.new(values.shift)
    while(values.present?)
      tree.insert(values.shift)
    end
    tree
  end
end

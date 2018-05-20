class CreateStructureService
  attr_accessor :type, :values

  def initialize(params)
    @type = params[:structure_type]
    @values = params[:values]
  end


  def create
    if type == 'linked_list'
      CreateStructure::LinkedListStructure.new(values).create
    elsif type == 'binary_search_tree'
      CreateStructure::BinarySearchTreeStructure.new(values).create
    end
  end
end

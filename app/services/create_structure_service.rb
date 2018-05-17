class CreateStructureService
  attr_accessor :type, :values

  def initialize(type, values)
    @type = type
    @values = values
  end


  def call
    if @type == 'LinkedListStructure'
      CreateStructure::LinkedListStructure.new(values).create
    end
  end
end

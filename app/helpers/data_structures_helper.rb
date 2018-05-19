module DataStructuresHelper

  def structure_type_for_select
    DataStructure.structure_types.each_with_object([]) do |type, a|
      a << [type.first.titleize, type.first]
    end
  end
end

module DataStructuresHelper

  def structure_type_for_select
    DataStructure.structure_types.each_with_object([]) do |type, a|
      a << [type.first.titleize, type.first]
    end
  end

  def display_branch(branch)
    return if branch.left.nil? && branch.right.nil?
    content_tag(:ul) do
      concat(display_side(branch.left))
      concat(display_side(branch.right))
    end
  end

  def display_side(node)
    return if node.nil?
    content_tag(:li) do
      concat(
        content_tag(:div) do
          node&.val
        end
      )
      concat(display_branch(node))
    end
  end
end

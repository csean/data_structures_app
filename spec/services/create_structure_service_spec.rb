require 'rails_helper'

describe CreateStructureService do
  subject(:service) { CreateStructureService }
  let(:params) { { values: [1,2,3] } }

  it 'returns a linked list' do
    params.merge!(structure_type: 'linked_list')
    expect(service.new(params).create).to be_a LinkedList::Node
  end

  it 'has a binary search tree' do
    params.merge!(structure_type: 'binary_search_tree')
    expect(service.new(params).create).to be_a Bstree::Node
  end

  it 'returns nil if no type' do
    expect(service.new(params).create).to be_nil
  end
end

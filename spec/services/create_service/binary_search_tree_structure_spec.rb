require 'rails_helper'

describe CreateStructure::BinarySearchTreeStructure do
  subject(:service) { CreateStructure::BinarySearchTreeStructure.new([2,1,3]).create }

  it 'returns a linked list node object' do
    expect(service).to be_a Bstree::Node
  end

  it 'has a first value of 2' do
    expect(service.val).to eq 2
  end

  it 'has left value of 1' do
    expect(service.left.val).to eq 1
  end

  it 'has right value of 1' do
    expect(service.right.val).to eq 3
  end
end

require 'rails_helper'

describe CreateStructure::LinkedListStructure do
  subject(:service) { CreateStructure::LinkedListStructure.new([1,2,3].create)}

  it 'returns a linked list node object' do
    expect(service).to be_a LinkedList::Node
  end

  it 'has a first value of 1' do
    expect(service.data).to eq 1
  end

  it 'has a second value of 2' do
    expect(service.next.data).to eq 2
  end
end

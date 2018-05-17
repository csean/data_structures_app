require 'rails_helper'

RSpec.describe "data_structures/show", type: :view do
  before(:each) do
    @data_structure = assign(:data_structure, DataStructure.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

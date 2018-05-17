require 'rails_helper'

RSpec.describe "data_structures/index", type: :view do
  before(:each) do
    assign(:data_structures, [
      DataStructure.create!(),
      DataStructure.create!()
    ])
  end

  it "renders a list of data_structures" do
    render
  end
end

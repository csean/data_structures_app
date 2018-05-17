require 'rails_helper'

RSpec.describe "data_structures/new", type: :view do
  before(:each) do
    assign(:data_structure, DataStructure.new())
  end

  it "renders new data_structure form" do
    render

    assert_select "form[action=?][method=?]", data_structures_path, "post" do
    end
  end
end

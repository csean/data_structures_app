require 'rails_helper'

RSpec.describe "data_structures/edit", type: :view do
  before(:each) do
    @data_structure = assign(:data_structure, DataStructure.create!())
  end

  it "renders the edit data_structure form" do
    render

    assert_select "form[action=?][method=?]", data_structure_path(@data_structure), "post" do
    end
  end
end

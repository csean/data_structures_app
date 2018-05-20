require 'rails_helper'

RSpec.describe DataStructuresController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # DataStructure. As you add validations to DataStructure, be sure to
  # adjust the attributes here as well.

  let(:user) { create :user }
  let(:data_structure) { create :data_structure, user: user }

  let(:valid_attributes) {
    { name: Faker::Name.name, values: [1, 2, 3] }
  }

  let(:invalid_attributes) {
    { name: nil }
  }

  before { sign_in(user) }

  describe "GET #index" do
    it "returns a success response" do
      data_structure
      get :index
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    before do
      get :show, params: { id: data_structure.id }
    end

    it "returns a success response" do
      expect(response).to be_success
    end

    it 'returns the data structure' do
      expect(assigns(:data_structure)).to eq data_structure
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new DataStructure" do
        expect {
          post :create, params: { data_structure: valid_attributes }
        }.to change(DataStructure, :count).by(1)
      end

      it "redirects to the created data_structure" do
        post :create, params: { data_structure: valid_attributes }
        expect(response).to redirect_to(DataStructure.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: { data_structure: invalid_attributes }
        expect(response).to be_success
      end
    end
  end

  describe "DELETE #destroy" do

    it "destroys the requested data_structure" do
      data_structure
      expect {
        delete :destroy, params: { id: data_structure.id }
      }.to change(DataStructure, :count).by(-1)
    end

    it "redirects to the data_structures list" do
      delete :destroy, params: { id: data_structure.id }
      expect(response).to redirect_to(data_structures_url)
    end
  end
end

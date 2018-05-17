require "rails_helper"

RSpec.describe DataStructuresController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/data_structures").to route_to("data_structures#index")
    end

    it "routes to #new" do
      expect(:get => "/data_structures/new").to route_to("data_structures#new")
    end

    it "routes to #show" do
      expect(:get => "/data_structures/1").to route_to("data_structures#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/data_structures/1/edit").to route_to("data_structures#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/data_structures").to route_to("data_structures#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/data_structures/1").to route_to("data_structures#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/data_structures/1").to route_to("data_structures#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/data_structures/1").to route_to("data_structures#destroy", :id => "1")
    end

  end
end

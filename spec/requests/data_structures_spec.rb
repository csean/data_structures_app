require 'rails_helper'

RSpec.describe "DataStructures", type: :request do
  describe "GET /data_structures" do
    it "works! (now write some real specs)" do
      get data_structures_path
      expect(response).to have_http_status(200)
    end
  end
end

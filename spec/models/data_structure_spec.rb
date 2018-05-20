require 'rails_helper'

RSpec.describe DataStructure, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:structure_type) }
  end
end

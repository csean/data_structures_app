FactoryBot.define do
  factory :data_structure do
    name { Faker::Name.name }
    structure_type 0
    user 
  end
end

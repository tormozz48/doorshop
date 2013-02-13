require 'spec_helper'

describe DoorProperty do
  before(:each) do
    @door_property = FactoryGirl.create(:door_property1)
  end

  it { should belong_to(:door) }

  it { should belong_to(:property) }

  it { should validate_presence_of(:value) }

  it { should validate_presence_of(:door_id) }

  it { should validate_presence_of(:property_id) }

  it { should validate_numericality_of(:door_id).only_integer }

  it { should validate_numericality_of(:property_id).only_integer }

  it { should ensure_length_of(:value).is_at_most(100) }

  it { should allow_mass_assignment_of(:value) }

  it { should allow_mass_assignment_of(:door) }

  it { should allow_mass_assignment_of(:property) }
end

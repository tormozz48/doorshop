require 'spec_helper'

describe Door do
  before(:each) do
    @door = FactoryGirl.create(:door1)
  end

  it { should belong_to(:category) }

  it { should have_many(:door_properties) }

  it { should have_many(:products) }

  it { should validate_presence_of(:name) }

  it { should validate_uniqueness_of(:name) }

  it { should ensure_length_of(:name).is_at_most(50) }

  it { should ensure_length_of(:description).is_at_most(500) }

  it { should allow_mass_assignment_of(:name) }

  it { should allow_mass_assignment_of(:description) }

  it { should allow_mass_assignment_of(:products) }

  it { should allow_mass_assignment_of(:door_properties) }
end

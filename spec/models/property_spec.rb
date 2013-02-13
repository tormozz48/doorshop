require 'spec_helper'

describe Property do
  before(:each) do
    @property = FactoryGirl.create(:property1)
  end

  it { should have_many(:door_properties) }

  it { should validate_presence_of(:code) }

  it { should validate_presence_of(:name) }

  it { should validate_uniqueness_of(:code) }

  it { should validate_uniqueness_of(:name) }

  it { should validate_numericality_of(:code).only_integer}

  it { should allow_mass_assignment_of(:code) }

  it { should allow_mass_assignment_of(:name) }
end

require 'spec_helper'

describe Category do
  before(:each) do
    @category = FactoryGirl.create(:category1)
  end

  it { should validate_presence_of(:name) }

  it { should have_many(:doors) }

  it { should validate_uniqueness_of(:name) }

  it { should ensure_length_of(:name).is_at_most(50) }

  it { should ensure_length_of(:description).is_at_most(500) }

  it { should allow_mass_assignment_of(:name) }

  it { should allow_mass_assignment_of(:description) }

  it { should allow_mass_assignment_of(:doors) }
end

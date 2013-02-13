require 'spec_helper'

describe FrameType do
  before(:each) do
    @frame_type = FactoryGirl.create(:frame_type1)
  end

  it { should have_many(:products) }

  it { should validate_presence_of(:code) }

  it { should validate_presence_of(:name) }

  it { should validate_uniqueness_of(:code) }

  it { should validate_uniqueness_of(:name) }

  it { should ensure_length_of(:name).is_at_most(20) }

  it { should allow_mass_assignment_of(:code) }

  it { should allow_mass_assignment_of(:name) }

  it { should allow_mass_assignment_of(:products) }
end

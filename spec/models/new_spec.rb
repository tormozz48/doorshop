require 'spec_helper'

describe New do
  before(:each) do
    @new = FactoryGirl.create(:new1)
  end

  it { should validate_presence_of(:date) }

  it { should validate_presence_of(:title) }

  it { should validate_presence_of(:body) }

  it { should ensure_length_of(:title).is_at_most(50) }

  it { should ensure_length_of(:body).is_at_most(500) }

  it { should allow_mass_assignment_of(:date) }

  it { should allow_mass_assignment_of(:title) }

  it { should allow_mass_assignment_of(:body) }
end

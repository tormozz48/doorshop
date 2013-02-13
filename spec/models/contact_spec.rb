require 'spec_helper'

describe Contact do
  before(:each) do
    @contact = FactoryGirl.create(:contact1)
  end

  it { should validate_presence_of(:name) }

  it { should validate_presence_of(:email) }

  it { should validate_presence_of(:phone1) }

  it { should validate_presence_of(:address) }

  it { should ensure_length_of(:name).is_at_most(50) }

  it { should ensure_length_of(:email).is_at_most(100) }

  it { should ensure_length_of(:phone1).is_at_most(15) }

  it { should ensure_length_of(:phone2).is_at_most(15) }

  it { should ensure_length_of(:skype).is_at_most(50) }

  it { should ensure_length_of(:address).is_at_most(500) }

  it { should allow_mass_assignment_of(:name) }

  it { should allow_mass_assignment_of(:email) }

  it { should allow_mass_assignment_of(:phone1) }

  it { should allow_mass_assignment_of(:phone2) }

  it { should allow_mass_assignment_of(:skype) }

  it { should allow_mass_assignment_of(:address) }

end

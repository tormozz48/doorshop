require 'spec_helper'

describe ProductStatus do
  before(:each) do
    @product_status = FactoryGirl.create(:product_status1)
  end

  it { should have_many(:products) }

  it { should validate_presence_of(:code) }

  it { should validate_uniqueness_of(:code) }

  it { should validate_presence_of(:name) }

  it { should validate_uniqueness_of(:name) }

  it { should validate_numericality_of(:code).only_integer }

  it { should ensure_length_of(:name).is_at_most(50) }

  it { should allow_mass_assignment_of(:code) }

  it { should allow_mass_assignment_of(:name) }

  it { should allow_mass_assignment_of(:products) }
end

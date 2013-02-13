require 'spec_helper'

describe Product do
  before(:each) do
    @product = FactoryGirl.create(:product1)
  end

  it { should belong_to(:door) }

  it { should belong_to(:product_status) }

  it { should belong_to(:frame_type) }

  it { should validate_presence_of(:price) }

  it { should validate_presence_of(:image) }

  it { should validate_numericality_of(:price).only_integer }

  it { should validate_numericality_of(:door_id).only_integer }

  it { should validate_numericality_of(:product_status).only_integer }

  it { should validate_numericality_of(:frame_type).only_integer }

  it { should ensure_length_of(:image).is_at_most(255) }

  it { should allow_mass_assignment_of(:price) }

  it { should allow_mass_assignment_of(:image) }

  it { should allow_mass_assignment_of(:door) }

  it { should allow_mass_assignment_of(:product_status) }

  it { should allow_mass_assignment_of(:frame_type) }
end

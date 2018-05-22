require 'rails_helper'

RSpec.describe Location, type: :model do
  it { should have_many(:location_group_locations) }
  it { should have_many(:location_groups).through(:location_group_locations) }
  it { should validate_presence_of(:name) }
end

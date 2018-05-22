require 'rails_helper'

RSpec.describe LocationGroup, type: :model do
  it { should belong_to(:panel_provider) }
  it { should belong_to(:country) }
  it { should have_many(:location_group_locations) }
  it { should have_many(:locations).through(:location_group_locations) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:country) }
  it { should validate_presence_of(:panel_provider) }
end

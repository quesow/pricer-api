require 'rails_helper'

RSpec.describe LocationGroupLocation, type: :model do
  it { should belong_to(:location_group) }
  it { should belong_to(:location) }
  it { should validate_presence_of(:location_group) }
  it { should validate_presence_of(:location) }
end

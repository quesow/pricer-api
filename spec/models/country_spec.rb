require 'rails_helper'

RSpec.describe Country, type: :model do
  it { should have_many(:location_groups).dependent(:destroy) }
  it { should validate_presence_of(:country_code) }
end

require 'rails_helper'

RSpec.describe TargetGroup, type: :model do
  it { should belong_to(:parent) }
  it { should have_one(:child) }

  it { should validate_presence_of(:name) }
end

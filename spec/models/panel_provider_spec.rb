require 'rails_helper'

RSpec.describe PanelProvider, type: :model do
  it { should belong_to(:target_group) }
  it { should belong_to(:country) }
  it { should validate_presence_of(:code) }
end

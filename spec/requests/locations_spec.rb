require 'rails_helper'

RSpec.describe 'Locations API', type: :request do
  let!(:location_group_location) { create(:location_group_location) }
  let(:country_code) { location_group_location.location_group.country.country_code }

  describe 'GET /plocations/:country_code' do
    before { get "/locations/#{country_code}" }

    context 'when the records exist' do
      it 'returns the list of locations' do
        expect(json).not_to be_empty
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the records do not exist' do
      let(:country_code) { 'EN' }

      it 'returns an empty list' do
        expect(json).to be_empty
      end

    end
  end
end

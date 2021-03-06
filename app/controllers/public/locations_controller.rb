module Public
  class LocationsController < ApplicationController
    skip_before_action :authorize_request, only: :index
    before_action :set_location, only: [:index]

    def index
      json_response(@location)
    end

    private

    def set_location
      @location = Location.by_country_code(params[:country_code])
    end
  end
end

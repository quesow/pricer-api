module Public
  class LocationsController < ApplicationController
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

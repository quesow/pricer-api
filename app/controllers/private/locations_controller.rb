module Private
  class LocationsController < Public::LocationsController
    before_action :authorize_request, only: :index
  end
end

module Public
  class TargetGroupsController < ApplicationController
    skip_before_action :authorize_request, only: :index
    before_action :set_location, only: [:index]

    def index
      json_response(@target_group)
    end

    private

    def set_location
      @target_group = TargetGroup.root.by_country_code(params[:country_code])
    end
  end
end

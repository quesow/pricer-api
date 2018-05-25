module Private
  class TargetGroupsController < Public:TargetGroupsController
    before_action :authorize_request, only: :index
  end
end

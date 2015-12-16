module Refinery
  module Calendar
    module Admin
      class EventSweeper < ActionController::Caching::Sweeper
        observe Event

        def sweep(item)
          expire_fragment("refinery/upcoming_events")
        end

        alias_method :after_create, :sweep
        alias_method :after_update, :sweep
        alias_method :after_destroy, :sweep
      end
    end
  end
end
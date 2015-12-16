Refinery::Calendar::Admin::EventsController.class_eval do
  cache_sweeper Refinery::Calendar::Admin::EventSweeper
end
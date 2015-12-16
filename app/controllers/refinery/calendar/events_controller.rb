module Refinery
  module Calendar
    class EventsController < ::ApplicationController
      def index
        @events = Event.upcoming.order('refinery_calendar_events.start_at DESC')

        @events_all = Event.select('title,start_at, slug').all

        respond_to do |format|
          format.html {
            # you can use meta fields from your model instead (e.g. browser_title)
            # by swapping @page for @event in the line below:
            present(@page)
          }
          format.json { render :json => @events_all.to_json }
        end
      end

      def show
        @event = Event.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @event in the line below:
        present(@page)
      end

      def archive
        @events = Event.archive.order('refinery_calendar_events.start_at DESC')
        render :template => 'refinery/calendar/events/index'
      end


      protected
      def find_page
        @page = ::Refinery::Page.where(:link_url => "/connect/events").first
      end

    end
  end
end

class NotificationsController < ApplicationController
  before_filter :authenticate_user

  def index
    feed = StreamRails.feed_manager.get_notification_feed(@user.id)
    results = feed.get()['results']

    @activities = StreamRails::Enrich.new.enrich_aggregated_activities(results)
  end
end

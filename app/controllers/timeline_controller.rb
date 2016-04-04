class TimelineController < ApplicationController
  before_filter :authenticate_user

  def index
    feed = StreamRails.feed_manager.get_news_feeds(@user.id)[:timeline]
    results = feed.get()['results']

    @activities = StreamRails::Enrich.new.enrich_activities(results)
  end
end

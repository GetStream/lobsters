StreamRails.configure do |config|
  config.api_key = ENV["STREAM_API_KEY"]
  config.api_secret = ENV["STREAM_API_SECRET"]
  config.news_feeds = { timeline: "timeline" }
  config.notification_feed = "notification"
end

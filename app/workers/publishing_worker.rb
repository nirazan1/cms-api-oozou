class PublishingWorker
  include Sidekiq::Worker

  def perform(options)
    options = options.with_indifferent_access
    content = Content.find options[:content_id]
    content.publish!
  end
end

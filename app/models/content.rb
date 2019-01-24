class Content < ApplicationRecord
  include AASM

  after_commit :publish_later, on: :create

  aasm column: :status, no_direct_assignment: true, whiny_transitions: false do
    state :draft, initial: true
    state :published

    event :publish do
      transitions from: [:draft], to: :published
    end
  end

  private

  def publish_later
    PublishingWorker.perform_in(10.minute, content_id: id)
  end
end

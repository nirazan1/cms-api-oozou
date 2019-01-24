class Content < ApplicationRecord
  include AASM

  aasm column: :status, no_direct_assignment: true, whiny_transitions: false do
    state :draft, initial: true
    state :published

    event :publish do
      transitions from: [:draft], to: :published
    end
  end

end

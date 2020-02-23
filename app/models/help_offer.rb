class HelpOffer < ApplicationRecord
  include AASM

  belongs_to :task
  belongs_to :user

  aasm column: :state do
    state :active, initial: true
    state :accepted
    state :declined
    state :done

    event :accepted do
      transitions from: :active, to: :accepted
    end

    event :declined do
      transitions from: :active, to: :declined
    end

    event :done do
      transitions from: :accepted, to: :done
    end
  end
end

class Task < ApplicationRecord
  include AASM

  belongs_to :user
  has_many_attached :images
  has_one :country
  has_many :help_offers

  aasm column: :state do
    state :free, initial: true
    state :offered
    state :performing
    state :done

    event :offered do
      transitions from: [:free, :offered], to: :offered
    end

    event :performing do
      transitions from: :offered, to: :performing
    end

    event :performing do
      transitions from: :performing, to: :done
    end
  end
end

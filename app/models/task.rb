class Task < ApplicationRecord
  include AASM

  belongs_to :user
  has_many_attached :images
  has_one :country

  aasm column: :state do
    state :free, initial: true
    state :requested
    state :performing
    state :done

    event :requested do
      transitions from: [:free, :requested], to: :requested
    end

    event :performing do
      transitions from: :requested, to: :performing
    end

    event :performing do
      transitions from: :performing, to: :done
    end
  end
end

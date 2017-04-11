module Spree
  class Vendor < Spree::Base
    validates :name, presence: true, uniqueness: true

    state_machine :state, initial: :pending do
      event :activate do
        transition to: :active
      end

      event :block do
        transition to: :blocked
      end
    end
  end
end
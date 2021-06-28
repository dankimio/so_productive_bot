class Chat < ApplicationRecord
  scope :stale, -> { where('updated_at < ?', 6.hours.ago) }
  scope :newly_created, -> { where('created_at = updated_at') }
end

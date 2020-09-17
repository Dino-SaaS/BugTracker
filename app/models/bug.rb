class Bug < ApplicationRecord
  enum platform: [:web, :ios, :android]
  enum status:   [:open, :in_progress, :closed]
end

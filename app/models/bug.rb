class Bug < ApplicationRecord
  enum platform: %i[web ios android]
  enum status:   %i[open in_progress closed]

  belongs_to :user

  validates_presence_of %i[title platform status]

  has_rich_text :description
end

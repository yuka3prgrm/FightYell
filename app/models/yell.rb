class Yell < ApplicationRecord
  belongs_to :fight
  has_one_attached :image

  with_options presence: true do
    validates :friend
    validates :content
    validates :image
  end
end

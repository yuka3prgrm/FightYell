class Progress < ApplicationRecord
  belongs_to :fight

  validates :study, presence: true
end

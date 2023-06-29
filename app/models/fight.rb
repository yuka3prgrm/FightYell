class Fight < ApplicationRecord
  belongs_to :user
  has_one :yell

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :unit

  with_options presence: true do
    validates :title
    validates :gool, format: { with:  /\A\d{1,6}\z/, message: "が無効です 半角数字のみ入力してください" }
  end

  validates :unit_id, numericality: { other_than: 1, message: "を入力してください" }

end

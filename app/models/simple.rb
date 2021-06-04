class Simple < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  has_one_attached :image
  belongs_to :user
  has_many :comments
end
with_options presence: true do
  validates :image
  validates :title
  validates :sentense
  validates :category_id
end

with_options numericality: { other_than: 1 } do
  validates :category_id
end

class Article < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :content
  has_one :category
  scope :active, 			 -> { where('active = ?', true) }
  scope :alphabetical, -> { order('title') }
end

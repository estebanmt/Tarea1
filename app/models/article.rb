class Article < ApplicationRecord
  validates :title, presence: true
  validates :lead, presence: true
  validates :body, presence: true
end

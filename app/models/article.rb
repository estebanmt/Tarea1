class Article < ApplicationRecord
  validates :title, presence: true
  validates :lead, presence: true, length: { maximum: 250 }
  validates :body, presence: true

  has_many :comments, dependent: :destroy

  # Returns 10 newest articles
  def self.newest10
    return Article.all.reverse_order.first(10)
  end

  # Returns article body up to the last word before the 1000th char
  def firstThousand
    if(body.length <= 1000)
      return body
    else
      #return body.first(1000) + body[1000, body[1000..-1].index(' ')] + '...'
      return body[0, body.first(1000).rindex(' ')] + '...'
    end
  end

end

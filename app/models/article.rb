class Article < ApplicationRecord
  validates :title, presence: true
  validates :lead, presence: true, length: { maximum: 250 }
  validates :body, presence: true

  def self.newest10
    return Article.all.reverse_order.first(10)
  end

  def firstThousand
    if(body.length <= 1000)
      return body
    else
      #return body.first(1000) + body[1000, body[1000..-1].index(' ')] + '...'
      return body[0, body.first(1000).rindex(' ')] + '...'
    end
  end

end

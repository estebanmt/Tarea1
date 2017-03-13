class PagesController < ApplicationController
  def home
    @articles = Article.all.reverse_order.first(10)
  end
end

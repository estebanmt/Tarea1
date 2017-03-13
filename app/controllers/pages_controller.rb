class PagesController < ApplicationController
  def home
    @articles = Article.all.reverse_order
  end
end

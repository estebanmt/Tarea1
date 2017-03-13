class PagesController < ApplicationController
  def home
    @articles = Article.newest10
  end
end

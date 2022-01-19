class ArticlesController < ApplicationController

  def show
    # byebug    # for debugging
    @article = Article.find(params[:id])
  end

end

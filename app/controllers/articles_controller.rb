class ArticlesController < ApplicationController

  def show
    # byebug    # for debugging
    @article = Article.find(params[:id])
  end

  def index
		@articles = Article.all 
		# here we are going to have all the articles collected in one variable
  end

end

class ArticlesController < ApplicationController

  def show
    # byebug    # for debugging
    @article = Article.find(params[:id])
  end

  def index
		@articles = Article.all 
		# here we are going to have all the articles collected in one variable
  end

  def new
    @article = Article.new
  end

  def create
     @article = Article.new(params.require(:article).permit(:title, :description)) 
     if @article.save
      flash[:notice] = "Article was created successfully."
      redirect_to @article   #  redirect_to article_path(@article)
     else
      render 'new'    # display new form
     end
  end

end

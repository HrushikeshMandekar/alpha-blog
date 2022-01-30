class PagesController < ApplicationController

  def home
    redirect_to articles_path if logged_in?
  end

  def about
    @user = User.first 
  end
  
end

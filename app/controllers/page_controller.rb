class PageController < ApplicationController
  def home
    @searchbars = Searchbar.all
  end
  
  def search
    @current_bar = Searchbar.find(params[:bar])    
  end
end

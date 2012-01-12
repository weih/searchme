require "erb"
include ERB::Util

class PageController < ApplicationController
  def home
    @searchbars = Searchbar.all
  end
  
  def search
    @current_bar = Searchbar.find(params[:id])
    redirect_to get_url(params[:keyword], @current_bar.searchurl)    
  end
  
  protected
  
  def get_url(keyword, searchurl)
    new_url = searchurl.gsub('%s', url_encode(keyword))
  end
end

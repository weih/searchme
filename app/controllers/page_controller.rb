require "erb"
include ERB::Util

class PageController < ApplicationController
  def home
    @user = current_user
    if @user.nil?
      @searchbars = nil
    else
      @searchbars = @user.searchbars
    end
    @newbar = Searchbar.new
  end
  
  def search
    @current_bar = Searchbar.find(params[:id])
    redirect_to get_url(params[:keyword], @current_bar.searchurl)    
  end
  
  def usage
    
  end
  
  protected
  
  def get_url(keyword, searchurl)
    new_url = searchurl.gsub('%s', url_encode(keyword))
  end
end

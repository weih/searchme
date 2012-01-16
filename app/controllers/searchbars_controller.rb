class SearchbarsController < ApplicationController
  def create
    @searchbar = current_user.searchbars.build(params[:searchbar])
    if @searchbar.save
      respond_to do |format|
        format.html { redirect_to root_path, :notice => "Successfully!" }
        format.js
      end
    else
      redirect_to root_path, :alert => "Something is Invalid!"
    end
  end

  def destroy
      #@current_bar = Searchbar.find(params[:id])
      Searchbar.delete(params[:id])
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
  end

end

class SearchbarsController < ApplicationController
  def create
    @searchbar = current_user.searchbars.build(params[:searchbar])
    if @searchbar.save
      redirect_to root_path, :notice => "Successfully!"
    else
      redirect_to root_path, :alert => "Something is Invalid!"
    end
  end

  def destroy
      #@current_bar = Searchbar.find(params[:id])
      Searchbar.delete(params[:id])
      redirect_to root_path :notice => "Delete!"
  end

end

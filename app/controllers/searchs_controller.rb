class SearchsController < ApplicationController

  def search
    @word = params[:word]
    @range = params[:range]
    search = params[:search]
    if @range == 'user'
      @users = User.search(search,@word)
    else
      @books = Book.search(search,@word)
    end
  end
end

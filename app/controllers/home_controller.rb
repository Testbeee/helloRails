class HomeController < ApplicationController
  def index

    if params[:keyword]
        @books = Book.where( [ "title like ?", "%#{params[:keyword]}%" ] )
    else
## TODO
    end
    
  end
end

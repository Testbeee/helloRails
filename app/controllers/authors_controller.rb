class AuthorsController < ApplicationController
    load_and_authorize_resource
    def show
#        @author = Author.find params[:id]
        @books = @author.books
    end

    def edit
#        @author = Author.find params[:id]
    end

    def update
#        @author = Author.find params[:id]
        if session[:edit_book_id]
        if @author.update( author_params )
#            redirect_to author_url(@author)
            redirect_to book_url(session[:edit_book_id])
        else
            render :action => :edit
        end
        else
            redirect_to root_url
        end
    end

    protected
    def author_params
        params.require(:author).permit(:name,:organization)
    end
end

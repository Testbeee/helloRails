class CopiesController < ApplicationController
    before_action :find_Book
    
    def show
        @copies = @book.copies
    end

    protected
    def find_Book
        @book = Book.find params[:book_id]
    end
end

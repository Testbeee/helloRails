class BooksController < ApplicationController
    def index
        @books = @books.all
    end

    def show
        @book = params[:book_id]
    end

    def new
        @book = Book.new
    end

    def create
        @book = Book.new(params[:book_id])
        @book.copies.create

        redirect_to books_url
    end

    def edit
        @book = Book.find(params[:book_id])
    end

    def update
        @book = Book.find(params[:book_id])
        
        if @book.update(book_params)
            redirect_to book_url(@book)
        else
            render :action => :edit
        end
    end

    def destroy
        @book = Book.find(params[:book_id])
        @book.destroy

        redirect_to books_url
    end
end

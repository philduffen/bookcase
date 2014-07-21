class BooksController < ApplicationController
	def index
		@books = Book.all
	end

	def show
		@book = Book.find(params[:id])
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])
		update_params = params.require(:book).
			permit(:title, :description, :author, :isbn, :format)
		@book.update(update_params)
		redirect_to book_url
	end
end

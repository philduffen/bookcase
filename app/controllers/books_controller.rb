class BooksController < ApplicationController
	def index
		@books = Book.sorted
	end

	def show
		@book = Book.find(params[:id])
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])
		if @book.update(required_params)
			redirect_to @book, notice: 'Book was successfully updated'
		else
			render :edit
		end
	end

	def new
		@book = Book.new
	end

	def create
		@book = Book.new(required_params)
		if @book.save
			redirect_to @book, notice: 'Book successfully created!'
		else
			render :new
		end		
	end

	def destroy
		@book = Book.find(params[:id])
		@book.destroy
		redirect_to books_path, alert: "Book successfully deleted!"
	end

	private

	def required_params
		params.require(:book).
			permit(:title, :description, :author, :isbn, :format, :image_file_name)
	end

end

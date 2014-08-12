require 'spec_helper'

describe "Deleting a book" do

  it "destroys the book and shows the book listing without the book" do

  	book = Book.create(book_attributes)

  	visit book_url(book)

  	click_link 'Delete'

  	expect(current_path).to eq(books_path)
  	expect(page).not_to have_text(book.title)

	  expect(page).to have_text("Book successfully deleted!")

  end

end
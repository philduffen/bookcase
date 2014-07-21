require 'spec_helper' 

describe "Navigating bookcase" do

	
	it "allows navigation from the detail page to the listing page" do
		
		book = Book.create(book_attributes)
		visit book_path(book)

		click_link("All Books")

		expect(current_path).to eq (books_path)

	end


  it "allows navigation from the listing page to the detail page" do

		book = Book.create(book_attributes)
	 	visit  books_path

  	click_link(book.title, book_path(book))

  	expect(current_path).to eq (book_path(book))

	end

end
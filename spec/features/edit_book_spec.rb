require 'spec_helper'

describe "Editing a book" do

	it "updates the book entry and shows the updated information" do

	book  = Book.create(book_attributes)

	visit book_path(book)

	click_link 'Edit'

	expect(current_path).to eq(edit_book_path(book))

	expect(find_field('Title').value).to eq book.title
	expect(find_field('Author').value).to eq book.author
	expect(find_field('Description').value).to eq book.description
	expect(find_field('Format').value).to eq book.format

	fill_in 'Title', with: "Updated Book Title"
    
  click_button 'Update Book'
  
  expect(current_path).to eq(book_path(book))

  expect(page).to have_text('Updated Book Title')


end

end
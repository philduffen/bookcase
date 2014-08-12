require 'spec_helper'

describe "Creating a new book" do 
  it "saves the book and shows the new book's details" do    
    visit books_url
    
    click_link 'Add New Book'
    
    expect(current_path).to eq(new_book_path)
		
    fill_in "Title", with: "New Book Title"
    fill_in "Author", with: "Ann Other"
    fill_in "ISBN", with: "1234567890"
    fill_in "Description", with: "Lots of words on some pages"
    fill_in "Format", with: "Paperback"

 
    # select (Time.now.year - 1).to_s, :from => "book_released_on_1i"
    
    # If you're taking advantage of the HTML 5 date field in Chrome, 
    # you'll need to use 'fill_in' rather than 'select'
    # fill_in "Released on", with: (Time.now.year - 1).to_s
     
    click_button 'Create Book'

    expect(current_path).to eq(book_path(Book.last))   
    
    expect(page).to have_text('New Book Title')

    expect(page).to have_text('Book successfully created!')

  end

  it "does not update the book if it's invalid" do
    book = Book.create(book_attributes)

    visit edit_book_url(book)

    fill_in 'Title', with: " "

    click_button 'Update Book'

    expect(page).to have_text('error')
  end
end
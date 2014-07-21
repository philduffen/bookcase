require 'spec_helper'

describe "Viewing an individual book" do
	
	it "shows the book's details" do


	book = Book.create(title: "Refactoring: Ruby Edition",
	                   author: "Jay Fields, Shane Harvie, Martin Fowler with Kent Beck",
	                   isbn: "978032160350",
	                   description: "With refactoring, programmers can transform even the most chaotic software into well-designed systems that are far easier to evolve and maintain. What’s more, they can do it one step at a time, through a series of simple, proven steps.",
	                   format: "Hardback")

	visit book_url(book)

 	expect(page).to have_text(book.title)
 	expect(page).to have_text(book.author)
 	expect(page).to have_text(book.description)
 	expect(page).to have_text(book.isbn)
 	
	end

end
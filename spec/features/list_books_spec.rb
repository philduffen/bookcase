require 'spec_helper'

describe "Viewing the list of books" do

  it "shows the books in the database" do

	book1 = Book.create(title: "Refactoring: Ruby Edition",
	                      author: "Jay Fields, Shane Harvie, Martin Fowler with Kent Beck",
	                      isbn: "978032160350",
	                      description: "With refactoring, programmers can transform even the most chaotic software into well-designed systems that are far easier to evolve and maintain. What’s more, they can do it one step at a time, through a series of simple, proven steps.",
	                      format: "Hardback")

	book2 = Book.create(title: "The Rails 4 Way",
	                      author: "Obie Ferandez, Kevin Faustino",
	                      isbn: "0321944275",
	                      description: "The “Bible” for Rails Development: Now Fully Updated for Rails 4.1",
	                      format: "Paperback")

	book3 = Book.create(title: "The Cucumber Book",
	                      author: "Matt Wynne and Aslak Hellesoy",
	                      isbn: "B00I8W50R0",
	                      description: "Behaviour-Driven Development for Testers and Developers",
	                      format: "Digital")


 	visit books_url


  	expect(page).to have_text("3 Books")
  	expect(page).to have_text("Refactoring: Ruby Edition")
  	expect(page).to have_text("The Rails 4 Way")
  	expect(page).to have_text("The Cucumber Book")

  	expect(page).to have_text(book2.title)
  	expect(page).to have_text(book2.author)
  	expect(page).to have_text(book2.isbn)
  	expect(page).to have_text(book2.format)



  end
	
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Book.create!([
  {
  	title: "Refactoring: Ruby Edition",
		author: "Jay Fields, Shane Harvie, Martin Fowler with Kent Beck",
		isbn: "978032160350",
		description: "With refactoring, programmers can transform even the most chaotic software into well-designed systems that are far easier to evolve and maintain. What’s more, they can do it one step at a time, through a series of simple, proven steps.",
		format: "Hardback"
  },
  {
  	title: "The RSpec Book",
		author: "David Chelimsky",
		isbn: "1934356379",
		description: "Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby Series)",
		format: "Paperback"
  },
  {
  	title: "Pragmatic Version Control Using Git",
		author: "Travis Swicegood",
		isbn: "1934356158",
		description: "Git is a modern, fast, DVCS. But understanding how it fits into your development can be a daunting task without an introduction to the new concepts. Whether you're just starting out as a professional programmer or are an old hand, this book will get you started using Git in this new distributed world.",
		format: "Paperback"
  }
])
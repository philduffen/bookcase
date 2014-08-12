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
		format: "Hardback",
		image_file_name: "book-placeholder.png"
  },
  {
  	title: "The RSpec Book",
		author: "David Chelimsky",
		isbn: "1934356379",
		description: "Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby Series)",
		format: "Paperback",
		image_file_name: "book-placeholder.png"
  },
  {
  	title: "Pragmatic Version Control Using Git",
		author: "Travis Swicegood",
		isbn: "1934356158",
		description: "Git is a modern, fast, DVCS. But understanding how it fits into your development can be a daunting task without an introduction to the new concepts. Whether you're just starting out as a professional programmer or are an old hand, this book will get you started using Git in this new distributed world.",
		format: "Paperback",
		image_file_name: "pg_ver_ctrl_git.jpg"
  },
  {
  	title: "Pragmatic Guide to Git",
		author: "Travis Swicegood",
		isbn: "1934356727",
		description: "Git is rapidly becoming the de-facto standard for the open source community. Its excellent merging capabilities, coupled with its speed and relative ease of use, make it an indispensable tool for any developer. New Git users will learn the basic tasks needed to work with Git every day, including working with remote repositories, dealing with branches and tags, exploring the history, and fixing problems when things go wrong. If you're already familiar with Git, this book will be your go-to reference for Git commands and best practices.",
		format: "Paperback",
		image_file_name: "pg_git_xlargecover.jpg"
  },
    {
  	title: "The Rails 4 Way",
		author: "Obie Fernandez and Kevin Faustino",
		isbn: "0321944275",
		description: "The “Bible” for Rails Development: Now Fully Updated for Rails 4.1",
		format: "Paperback",
		image_file_name: "rails4_way.jpg"
	},
    {
  	title: "Practical Object-Oriented Design in Ruby",
		author: "Sandi Metz",
		isbn: "0321721330",
		description: "The Complete Guide to Writing More Maintainable, Manageable, Pleasing, and Powerful Ruby Applications.",
		format: "Paperback",
		image_file_name: "pract-OO-design-ruby.jpg"
	}
 ])
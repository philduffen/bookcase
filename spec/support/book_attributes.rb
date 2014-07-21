def book_attributes(overrules = {})
	{ 
		title: "Refactoring: Ruby Edition",
		author: "Jay Fields, Shane Harvie, Martin Fowler with Kent Beck",
		isbn: "978032160350",
		description: "With refactoring, programmers can transform even the most chaotic software into well-designed systems that are far easier to evolve and maintain. What’s more, they can do it one step at a time, through a series of simple, proven steps.",
		format: "Hardback"
	}.merge(overrules)

end
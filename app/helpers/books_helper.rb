module BooksHelper

	def image_for(book)
  	if book.image_file_name.blank?
  		image_tag('book-placeholder.png')
  	else
  		image_tag(book.image_file_name)
  	end
  end

end

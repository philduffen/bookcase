require 'spec_helper'

describe "A book" do

	it "requires a title"do

		book = Book.new(title: "")

		book.valid?

		expect(book.errors[:title].any?).to eq(true)

	end	

	it "requires a description" do

		book = Book.new(description: "")

		book.valid?

		expect(book.errors[:description].any?).to eq(true)

	end	

	it "requires an author"do

		book = Book.new(author: "")

		book.valid?

		expect(book.errors[:author].any?).to eq(true)

	end	

	it "accepts properly formatted image file names" do
    file_names = %w[e.png book.png book.jpg book.gif PROJECT.GIF]
    file_names.each do |file_name|
      book = Book.new(image_file_name: file_name)    
      book.valid?
      expect(book.errors[:image_file_name].any?).to eq(false)
    end
  end

  it "rejects improperly formatted image file names" do
    file_names = %w[book .jpg .png .gif book.pdf book.doc]
    file_names.each do |file_name|
      book = Book.new(image_file_name: file_name)
      book.valid?
      expect(book.errors[:image_file_name].any?).to eq(true)
    end
  end


end
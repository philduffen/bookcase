class Book < ActiveRecord::Base

	validates :title, :author, :description, :format, presence: true

	validates :image_file_name, allow_blank: true, format: {
    with:    /\w+.(gif|jpg|png)\z/i,
    message: "must reference a GIF, JPG, or PNG image"
  }

  validates :description, length: {maximum: 1000}

	def self.sorted
		order(:title)
	end
	
end

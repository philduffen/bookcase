class AddExtraFieldsToBook < ActiveRecord::Migration
  def change
    add_column :books, :description, :text
    add_column :books, :format, :string
  end
end

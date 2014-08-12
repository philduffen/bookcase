Bookcase::Application.routes.draw do
	root "books#index"
  # get "books" => "books#index"
  # get "books/:id" => "books#show", as: 'book'
  # get "books/:id/edit" => "books#edit", as: 'edit_book'
  resources :books
  
end

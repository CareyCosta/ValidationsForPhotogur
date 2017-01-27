Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'pictures' => 'pictures#index'
  #match any HTTP GET request for the URL /pictures to the index action in PicturesController
post'pictures' => 'pictures#create'
get 'pictures/new' => 'pictures#new'
get 'pictures/:id' => 'pictures#show', as: 'picture'
end

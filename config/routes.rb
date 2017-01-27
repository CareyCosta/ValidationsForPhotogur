Rails.application.routes.draw do


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'pictures' => 'pictures#index'
  #match any HTTP GET request for the URL /pictures to the index action in PicturesController
get 'pictures/new' => 'pictures#new'
get 'pictures/:id/edit' => "pictures#edit", as: "edit_picture"
get 'pictures/:id' => 'pictures#show', as: 'picture'

post'pictures' => 'pictures#create'
patch 'pictures/:id' => "pictures#update"
delete 'pictures/:id' => 'pictures#destroy', as: "delete_picture"

root 'pictures#index'

resources :pictures
end

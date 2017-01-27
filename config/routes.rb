Rails.application.routes.draw do

  root 'pictures#index'
  get 'pictures' => 'pictures#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'pictures' => 'pictures#index'
  #match any HTTP GET request for the URL /pictures to the index action in PicturesController
post'pictures' => 'pictures#create'
get 'pictures/new' => 'pictures#new'
get 'pictures/:id' => 'pictures#show', as: 'picture'
get 'pictures/:id/edit' => "pictures#edit", as: "edit_picture"
patch 'pictures/:id' => "pictures#update"
delete 'pictures/:id' => 'pictures#destroy', as: "delete_picture"

root 'pictures#index'

end

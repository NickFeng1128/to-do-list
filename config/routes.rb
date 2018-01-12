# Prefix Verb   URI Pattern                   Controller#Action
# complete_list PATCH  /lists/:id/complete(.:format) lists#complete
#        lists GET    /lists(.:format)              lists#index
#              POST   /lists(.:format)              lists#create
#     new_list GET    /lists/new(.:format)          lists#new
#    edit_list GET    /lists/:id/edit(.:format)     lists#edit
#         list GET    /lists/:id(.:format)          lists#show
#              PATCH  /lists/:id(.:format)          lists#update
#              PUT    /lists/:id(.:format)          lists#update
#              DELETE /lists/:id(.:format)          lists#destroy
#         root GET    /                             lists#index

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :lists do
    member do
      patch :complete
    end 
  end

  root "lists#index"
end

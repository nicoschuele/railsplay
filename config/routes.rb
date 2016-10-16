# == Route Map
#
#        Prefix Verb   URI Pattern                    Controller#Action
#          root GET    /                              home#index
#     companies GET    /companies(.:format)           companies#index
#               POST   /companies(.:format)           companies#create
#   new_company GET    /companies/new(.:format)       companies#new
#  edit_company GET    /companies/:id/edit(.:format)  companies#edit
#       company GET    /companies/:id(.:format)       companies#show
#               PATCH  /companies/:id(.:format)       companies#update
#               PUT    /companies/:id(.:format)       companies#update
#               DELETE /companies/:id(.:format)       companies#destroy
#    categories GET    /categories(.:format)          categories#index
#               POST   /categories(.:format)          categories#create
#  new_category GET    /categories/new(.:format)      categories#new
# edit_category GET    /categories/:id/edit(.:format) categories#edit
#      category GET    /categories/:id(.:format)      categories#show
#               PATCH  /categories/:id(.:format)      categories#update
#               PUT    /categories/:id(.:format)      categories#update
#               DELETE /categories/:id(.:format)      categories#destroy
#      products GET    /products(.:format)            products#index
#               POST   /products(.:format)            products#create
#   new_product GET    /products/new(.:format)        products#new
#  edit_product GET    /products/:id/edit(.:format)   products#edit
#       product GET    /products/:id(.:format)        products#show
#               PATCH  /products/:id(.:format)        products#update
#               PUT    /products/:id(.:format)        products#update
#               DELETE /products/:id(.:format)        products#destroy
#

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'

  get '/gemfile', to: 'home#gemfile', as: 'gemfile'

  resources :companies
  resources :categories
  resources :products
end

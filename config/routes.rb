# == Route Map
#
#       Prefix Verb   URI Pattern                   Controller#Action
#         root GET    /                             home#index
#    companies GET    /companies(.:format)          companies#index
#              POST   /companies(.:format)          companies#create
#  new_company GET    /companies/new(.:format)      companies#new
# edit_company GET    /companies/:id/edit(.:format) companies#edit
#      company GET    /companies/:id(.:format)      companies#show
#              PATCH  /companies/:id(.:format)      companies#update
#              PUT    /companies/:id(.:format)      companies#update
#              DELETE /companies/:id(.:format)      companies#destroy
#

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'

  resources :companies
end

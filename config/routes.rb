Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'articles', to: 'article#index'

  get 'articles/new', to: 'article#new'
  post 'articles', to:'article#create'

  get 'article/:id',  to: 'article#show', as: :article

  get 'article/:id/edit',  to: 'article#edit', as: :edit_article
  patch 'article/:id', to: 'article#update'

  delete 'article/:id', to: 'article#destroy', as: :destroy_article
end

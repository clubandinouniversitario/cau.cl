Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # devise_for :users, path_prefix: 'my', controllers: {registrations: 'registrations'}
  # devise_scope :user do
  #   authenticated :user do
  #     root 'home#index', as: :authenticated_root
  #   end
  #
  #   unauthenticated do
  #     root 'home#index', as: :unauthenticated_root
  #   end
  # end
  root 'home#index'

  namespace :admin do
    resources :pages, except: :show
  end

  get '/:url', to: 'pages#show', as: 'page'
end

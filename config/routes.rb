Rails.application.routes.draw do



  get '/transfer', to: 'transfers#new'

  get 'transfera', to: 'transfers#transfer'

  resources :payments, only: [:new, :confirmation]
  get '/deposit', to: 'payments#new'

  post '/deposit', to: 'payments#confirmation'

  post '/payments/new', to: 'payments#confirmation'

  #post '/wallet', to: 'wallet#something'
  get 'sessions/new'

  get '/confirmation', to: 'wallet#confirmation'

  root 'static_pages#home'

  get '/help', to: 'static_pages#help'

  get '/about', to: 'static_pages#about'

  get '/contact', to: 'static_pages#contact'

  get '/signup', to: 'users#new'
  get '/wallet', to: 'wallet#balance'
  get '/bitcoin', to: 'wallet#bitcoin'
  get '/convert', to: 'wallet#convert'

  post '/signup', to: 'users#create'

  get '/roman', to: 'static_pages#roman'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'



  patch '/deposit', to: 'payments#new'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

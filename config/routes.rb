Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]

  resources :patients
  # ^ resources :patients, only: [:index, :show, :create, :update, :destroy]
  # shortcut ^ the below does the same
  # get '/patients', to: 'books#index'
end

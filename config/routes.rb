Talks::Application.routes.draw do
  resources :users, :only => [:create, :show]
  resources :talks, :only => [:index, :create, :show]
  
  resources :session, :only => [:create, :destroy]

  root :to => 'homepage#show'
end

Talks::Application.routes.draw do
  resources :users, :only => [:create, :show]
  
  post '/login' => 'session#login', :as => 'session_login'
  post '/logout' => 'session#logout', :as => 'session_logout'

  root :to => 'pages#main'
end

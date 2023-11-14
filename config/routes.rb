Rails.application.routes.draw do
  root 'home#index'
  get '/welcome', to: 'home#welcome'

  #---Registration and Authorization---
  get '/registration', to: 'registration#new'
  post '/registration', to: 'registration#create'

  get '/auth', to: 'auth#new'
  post '/auth', to: 'auth#create'

  delete '/auth', to: 'auth#delete'

  #---Site Navigation---
  get '/search', to: 'search#by_genres'
  get '/search', to: 'search#by_creator'
  
  # Placeholder for possible future features of this site
  
  #---User Profile---
  get '/profile', to: 'profile#view'
  get '/edit_profile', to: 'profile#edit'
  post '/edit_profile', to: 'profile#save_changes'
  delete '/delete_profile', to: 'profile#delete'
  
  get '/user_test_list', to: 'profile#tests'
  post '/publish_test', to: 'profile#publish_test'
  delete '/delete_test', to: 'profile#delete_test'

  # Placeholder for subscription buying routing
  
  #---Taking the test---
  get '/test', to: 'test#view'
  post '/test_code_word', to: 'test#check_code_word'
  get '/test_start', to: 'test#start'
  post '/test_finish', to: 'test#finish'
  get '/test_results', to: 'test#results'
  
  #---Creating the test---
  get '/create_test', to: 'create_test#view'
  post '/create_test', to: 'create_test#create'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

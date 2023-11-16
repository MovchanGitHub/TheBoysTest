Rails.application.routes.draw do
  root 'home#index'
  get '/welcome', to: 'home#welcome'

  #---Registration and Authorization---
  get '/registration', to: 'registration#new'          # get html to create a profile
  post '/registration', to: 'registration#create'      # create a profile

  get '/auth', to: 'auth#new'                          # get html to sign in
  post '/auth', to: 'auth#create'                      # sign in

  delete '/auth', to: 'auth#delete'                    # log out

  #---Site Navigation---
  # TODO change to one route with key
  get '/search', to: 'search#by_genres'
  get '/search', to: 'search#by_creator'

  
  # Placeholder for possible future features of this site
  
  #---User Profile---
  get '/profile/:id', to: 'profile#show'                  # show user profile
  get '/profile/:id/edit', to: 'profile#edit'              # get html to edit user profile
  patch '/profile/:id', to: 'profile#update'              # commit changes to user profile
  delete '/profile/:id', to: 'profile#destroy'            # delete user profile
  
  get '/profile/:id/tests', to: 'profile#tests_show'          # show list of user tests
  patch '/profile/:id/tests/:id', to: 'profile#test_publish'   # publish specific test (optional)
  delete '/profile/:id/tests/:id', to: 'profile#test_delete'  # delete specific test

  # Placeholder for subscription buying routing
  
  #---Taking the test---
  get '/tests/:id', to: 'test#show'                    # show test
  put '/tests/:id/code_word', to: 'test#code_word'    # check test code word
  get '/tests/:id/start', to: 'test#start'            # start the test
  post '/tests/:id/finish', to: 'test#finish'          # finish the test
  get '/tests/:id/results', to: 'test#results'        # show test results
  
  #---Creating the test---
  get '/tests/new', to: 'tests#new'                # get html to create new test
  post '/tests', to: 'tests#create'                # create new test
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

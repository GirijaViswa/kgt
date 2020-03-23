Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/products', to: 'product#index'                    #get all the available products
  get '/products/:name/videos', to: 'video#show'          #get all videos available for the product
  post '/new_user', to: 'user#create'                     #create a new user
  post '/auth', to: 'user#check'                          #Authenticate the user
  get '/users/:user_id', to: 'user#show'                  #Show the user
  get '/users/:user_id/mycollections', to:  'user#collections'  #Show the user collections

end

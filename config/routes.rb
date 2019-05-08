Rails.application.routes.draw do
  namespace :api do
    get '/practices' => 'practices#index' 
    post '/practices' => 'practices#create'
    get '/practices/:id' => 'practices#show' 
    get '/practices/:id' => 'practices#update'
    delete '/practices/:id' => 'practices#destroy'
  end
end

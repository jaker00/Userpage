Rails.application.routes.draw do
  get '/accountspage/:id' => "application#show"
  get '/new_account' => "application#new"
  get '/create_account' => "application#create"
  
end

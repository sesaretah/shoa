Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  root 'home#index'
  post '/rivers', to: "rivers#create"
  get  '/rivers', to: "rivers#index"
  get '/chat', to: "home#chat"
end

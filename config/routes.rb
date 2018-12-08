Rails.application.routes.draw do
root 'home#index'
post '/rivers', to: "rivers#create"
end

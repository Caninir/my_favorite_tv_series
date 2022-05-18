Rails.application.routes.draw do
  post '/tv_shows', to: 'tv_shows#create'
  get '/tv_shows', to: 'tv_shows#index'
  get '/welcome', to: 'pages#welcome'
  root 'pages#welcome'
end

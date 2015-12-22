Rails.application.routes.draw do
  get '/notifications/all' => 'notifications#all'

  resources :notifications

  root 'notifications#index'
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'parser#index'
  get 'parser/post', to: 'parser#post'
  get 'parser/get', to: 'parser#get'
end

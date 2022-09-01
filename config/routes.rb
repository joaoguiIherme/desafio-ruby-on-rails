Rails.application.routes.draw do
  devise_for :users
  root to: 'parser#index'

  resources :transactions, only: %i[index] do
    collection do
      get 'import/list', to: 'transactions#list_by_store'
      get 'import/new', to: 'transactions#import_new'
      post 'import/new', to: 'transactions#import'
    end
  end

  get 'parser/get', to: 'parser#get'
end

Rails.application.routes.draw do

  resources :images do
    resources :comments, only: [:create]
    resource :hearts, only: [:create]
  end
  get '/' => 'images#index'

end

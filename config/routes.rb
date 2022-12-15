Rails.application.routes.draw do
  get 'items', to: 'items#index'
  get 'items/:id', to: 'items#show'
  get 'merchants', to: 'merchants#index'
  get 'merchants/:id', to: 'merchants#show'
end

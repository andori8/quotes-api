Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post 'add', to: 'quotes#add'
      get 'show', to: 'quotes#show'
    end
  end
end

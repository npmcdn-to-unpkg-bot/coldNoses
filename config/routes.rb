Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/calender'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end

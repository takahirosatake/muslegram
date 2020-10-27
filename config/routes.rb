Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  root to: "youtubes#index"
 
  resources :youtubes, only: [:index], shallow: true do
    collection do
      get 'find_videos',     to: 'youtubes#results'
      get 'results',         to: 'youtubes#results'
    end
    resource :playlists, only: [:create, :destroy]
  
  end
  resources :users, only:[:edit, :show, :update]
  resources :messages, except: :show

end

Rails.application.routes.draw do
  devise_for :users
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

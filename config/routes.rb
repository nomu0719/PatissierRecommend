Rails.application.routes.draw do
  get 'users/show'
  get 'patissiers/show'
  devise_for :patissiers, controllers: {
  sessions:      'patissiers/sessions',
  passwords:     'patissiers/passwords',
  registrations: 'patissiers/registrations'
}
  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}
 root to: 'homes#top'
 resources :patissiers, only: [:show, :index]
 resources :users, only: [:show]
 resources :shops do
   collection do 
     get 'maps'
     get 'recommend_ranking'
    end
   resources :item_images, only: [:create, :destroy]
   resources :comments, only: [:create, :destroy]
   resource :recommends, only: [:create, :destroy]
   resource :favorites, only: [:create, :destroy]
 end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

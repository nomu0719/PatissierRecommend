Rails.application.routes.draw do
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
 
 resources :shops, only: [:new, :create, :index, :show, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

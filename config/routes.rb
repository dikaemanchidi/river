Rails.application.routes.draw do
  get 'homes/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
    post 'users/admin_guest_sign_in', to: 'users/sessions#admin_guest_sign_in'
  end
  devise_for :views
  resources :blogs do
    resources :comments
end
    root 'homes#index'
  if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
end
end

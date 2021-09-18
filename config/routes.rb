Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  devise_for :views
  resources :blogs do
    resources :comments
end
    root 'blogs#index'
  if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
end
end

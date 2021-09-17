Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  resources :blogs
    root 'blogs#index'
  if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
end
end

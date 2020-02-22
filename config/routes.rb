Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :instructor do
    root "top#index"
  end

  namespace :organizer do
    root "top#index"
  end

  namespace :customer do
    root "top#index"
  end

end

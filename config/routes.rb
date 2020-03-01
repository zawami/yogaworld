# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :instructor do
    root 'top#index'
    get "login", to: "sessions#new",as: 'login'
    post "session", to: "sessions#create",as: 'session'
    delete "session", to: "sessions#destroy"
  end

  namespace :organizer do
    root 'top#index'
    get "login",to: "sessions#new",as: 'login'
    post "session",to: "sessions#create",as: 'session'
    delete "session",to: "sessions#destroy"
  end

  namespace :customer do
    root 'top#index'
  end
end

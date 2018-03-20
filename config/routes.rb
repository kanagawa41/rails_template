Rails.application.routes.draw do
  root to: 'home#index'

  mount LetterOpenerWeb::Engine, at: "/letter_opener"

  # devise_for :users
	devise_for :users, :controllers => {
	  :sessions           => "users/sessions",
	  :registrations      => "users/registrations",
	  :passwords          => "users/passwords",
	  # :omniauth_callbacks => "users/omniauth_callbacks",
	  :confirmations      => "users/confirmations"
	}

  get 'home/index'
  get 'home/after_login'
  get 'home/after_logout'
  get 'home/after_regist'
end

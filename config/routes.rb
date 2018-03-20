Rails.application.routes.draw do
  root to: 'home#index'

	if Rails.env.development?
	  mount LetterOpenerWeb::Engine, at: "/letter_opener"
	end

  # devise_for :users
	devise_for :users, :controllers => {
	  :sessions           => "users/sessions",
	  :registrations      => "users/registrations",
	  :passwords          => "users/passwords",
	  # :omniauth_callbacks => "users/omniauth_callbacks",
	  :confirmations      => "users/confirmations"
	}

  get 'home/index'
end

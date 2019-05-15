Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'public/index'

  unauthenticated :user do
    root :to => "public#index"
  end

  # ログインしようとしたユーザーをリダイレクト
  get '/users', to: redirect("/users/sign_up")

  devise_for :users, :controllers => {
      :registrations => 'users/registrations',
      :sessions => 'users/sessions'
  }


  get 'textbook/index'
  get 'textbook/show'
  resources :textbook, param: :id

  get 'dashboard' => 'top#index'
  get 'help' => 'help#index'

  root to: 'public#index'

end

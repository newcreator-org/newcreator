Rails.application.routes.draw do
  get 'textbook/index'
  get 'textbook/show'
  get 'help/index'
  get 'top/index'
  root to: 'public#index'
  get 'public/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

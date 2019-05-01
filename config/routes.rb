Rails.application.routes.draw do
  get 'textbook/index'
  get 'textbook/show'
  get 'dashboard' => 'top#index'
  get 'help' => 'help#index'
  root to: 'public#index'
end

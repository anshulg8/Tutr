Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root 'posts#index'

  %w( 404 422 500 ).each do |code|
    get code, :to => "errors#show", :code => code
  end
  
end
Rails.application.routes.draw do
  resources :posts
  root 'posts#index'

  %w( 404 422 500 ).each do |code|
    get code, :to => "errors#show", :code => code
  end
  
end
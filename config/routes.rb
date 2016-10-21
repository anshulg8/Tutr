Rails.application.routes.draw do
  resources :posts
  root 'posts#index'

  get 'welcome/about'
  get 'about' => 'welcome#about'
  get 'hello-world' => 'welcome#hello_world'

  %w( 404 422 500 ).each do |code|
    get code, :to => "errors#show", :code => code
  end
  
end
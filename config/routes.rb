Rails.application.routes.draw do

  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/hello-world'

  root 'welcome#index'

  get 'about' => 'welcome#about'
  get 'contact' => 'contacts#new'
  get 'hello-world' => 'welcome#hello_world'

  %w( 404 422 500 ).each do |code|
    get code, :to => "errors#show", :code => code
  end
  
end
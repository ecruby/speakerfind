ActionController::Routing::Routes.draw do |map|

  map.resources :users
  map.resources :activations
  map.resources :profiles
  
  map.signup "/signup", :controller => "users", :action => "new"
  map.root :controller => "home"

end

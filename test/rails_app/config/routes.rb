RailsApp::Application.routes.draw do
  imhotep :wiki, :controller => "wiki"
  imhotep :page, :path => "", :except => :index
  root :to => "home#index"
end

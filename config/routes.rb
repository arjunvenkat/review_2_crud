Review2App::Application.routes.draw do

#CREATE
  get "/messages/new", :controller => 'Messages', :action => 'new'
  post "/messages", :controller => 'Messages', :action => 'create'
#READ
  get "/messages", :controller => 'Messages', :action => 'index'
  get "/messages/:id", :controller => 'Messages', :action => 'show'

#UPDATE
  get "/messages/:id/edit", :controller => 'Messages', :action => 'edit'
  post "/messages/:id", :controller => 'Messages', :action => 'update'
#DELETE

end

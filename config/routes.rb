Rails.application.routes.draw do
  resources :books
  # Defines the root path route ("/")
  root "movies#index"

  # Routes for the Movie resource:

  get("/movies/:id/edit", controller: "movies", action: "edit")

  # CREATE
  post("/movies", { :controller => "movies", :action => "create" })

  # READ
  get("/movies", { :controller => "movies", :action => "index" })

  get("/movies/new", { :controller => "movies", :action => "new" })

  get("/movies/:id", { :controller => "movies", :action => "show" })

  # UPDATE
  patch("/movies/:id", { :controller => "movies", :action => "update" })

  # DELETE
  delete("/movies/:id", { :controller => "movies", :action => "destroy" })

  #------------------------------

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end

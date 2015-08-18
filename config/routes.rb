Rails.application.routes.draw do
  
  resources :users, except: [:index] do
    resources :appointments, except: [:index, :show, :edit]
  end

  # users
  get "/me/:username", to: "users#show", as: "profile"
  get "/signup", to: "users#new", as: "signup"
  post "/signup", to: "users#create"
  delete "/logout", to: "sessions#destroy", as: "logout"
  
  # appointments
  get "/me/:user_id/appts/:id", to: "appointments#show", as: "appt"
  get "/me/:user_id/appts/:id/edit", to: "appointments#edit", as: "edit_appt"

  #auth routes
  get "/signup" => "users#new"

  # workouts
  resources :workouts, only: [:index, :show]

  # sessions
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"

  # musclegroups
  root "musclegroups#index"
  get "/:name", to: "musclegroups#show", as: "muscle"

end

#                   Prefix Verb   URI Pattern                                Controller#Action
#    user_appointments POST   /users/:user_id/appointments(.:format)     appointments#create
# new_user_appointment GET    /users/:user_id/appointments/new(.:format) appointments#new
#     user_appointment PATCH  /users/:user_id/appointments/:id(.:format) appointments#update
#                      PUT    /users/:user_id/appointments/:id(.:format) appointments#update
#                      DELETE /users/:user_id/appointments/:id(.:format) appointments#destroy
#                users POST   /users(.:format)                           users#create
#             new_user GET    /users/new(.:format)                       users#new
#            edit_user GET    /users/:id/edit(.:format)                  users#edit
#                 user GET    /users/:id(.:format)                       users#show
#                      PATCH  /users/:id(.:format)                       users#update
#                      PUT    /users/:id(.:format)                       users#update
#                      DELETE /users/:id(.:format)                       users#destroy
#              profile GET    /me/:username(.:format)                    users#show
#               signup GET    /signup(.:format)                          users#new
#                      POST   /signup(.:format)                          users#create
#               logout DELETE /logout(.:format)                          sessions#destroy
#                 appt GET    /me/:user_id/appts/:id(.:format)           appointments#show
#            edit_appt GET    /me/:user_id/appts/:id/edit(.:format)      appointments#edit
#                      GET    /signup(.:format)                          users#new
#             workouts GET    /workouts(.:format)                        workouts#index
#              workout GET    /workouts/:id(.:format)                    workouts#show
#                login GET    /login(.:format)                           sessions#new
#                      POST   /login(.:format)                           sessions#create
#                 root GET    /                                          musclegroups#index
#               muscle GET    /:name(.:format)                           musclegroups#show

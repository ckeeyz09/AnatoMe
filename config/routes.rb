Rails.application.routes.draw do
  
  resources :users, except: [:index] do
    resources :appointments, except: [:index, :show]
  end

  # users
  get "/me/:username", to: "users#show", as: "profile"
  get "/signup", to: "users#new", as: "signup"
  post "/signup", to: "users#create"
  get "/logout", to: "sessions#destroy", as: "logout"
  
  #auth routes
  get "/signup" => "users#new"

  # workouts
  resources :workouts, only: [:index, :show]

  # musclegroups
  root "musclegroups#index"
  get "/muscle/:name", to: "musclegroups#show", as: "muscle"

  # sessions
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"

end

#                Prefix Verb   URI Pattern                                     Controller#Action
#     user_appointments POST   /users/:user_id/appointments(.:format)          appointments#create
#  new_user_appointment GET    /users/:user_id/appointments/new(.:format)      appointments#new
# edit_user_appointment GET    /users/:user_id/appointments/:id/edit(.:format) appointments#edit
#      user_appointment PATCH  /users/:user_id/appointments/:id(.:format)      appointments#update
#                       PUT    /users/:user_id/appointments/:id(.:format)      appointments#update
#                       DELETE /users/:user_id/appointments/:id(.:format)      appointments#destroy
#                 users POST   /users(.:format)                                users#create
#              new_user GET    /users/new(.:format)                            users#new
#             edit_user GET    /users/:id/edit(.:format)                       users#edit
#                  user GET    /users/:id(.:format)                            users#show
#                       PATCH  /users/:id(.:format)                            users#update
#                       PUT    /users/:id(.:format)                            users#update
#                       DELETE /users/:id(.:format)                            users#destroy
#               profile GET    /me/:username(.:format)                         users#show
#                signup GET    /signup(.:format)                               users#new
#                       POST   /signup(.:format)                               users#create
#                logout GET    /logout(.:format)                               sessions#destroy
#                       GET    /signup(.:format)                               users#new
#              workouts GET    /workouts(.:format)                             workouts#index
#               workout GET    /workouts/:id(.:format)                         workouts#show
#                 login GET    /login(.:format)                                sessions#new
#                       POST   /login(.:format)                                sessions#create
#                  root GET    /                                               musclegroups#index
#                muscle GET    /muscle/:name(.:format)                         musclegroups#show

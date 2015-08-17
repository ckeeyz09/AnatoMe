Rails.application.routes.draw do
  
  # musclegroups
  root 'musclegroups#index'
  # get '/:name', to: 'musclegroups#show', as: 'muscle'

  resources :users, except: [:index] do
    resources :appointments, except: [:index, :show, :edit]
  end
  # users
  get '/me/:username', to: 'users#show', as: 'profile'

  # appointments
  get '/me/:user_id/appts/:id', to: 'appointments#show', as: 'appt'
  get '/me/:user_id/appts/:id/edit', to: 'appointments#edit', as: 'edit_appt'

  #auth routes
  get '/signup' => 'users#new'
  resources :users

  get '/login' => 'sessions#new'

  post '/login' => 'sessions#create'

  get '/profile' => 'users#show'

  delete '/logout' => 'sessions#destroy'


  # workouts
  resources :workouts, only: [:index, :show]
end

#              Prefix Verb   URI Pattern                                Controller#Action
#                 root GET    /                                          musclegroups#index
#               muscle GET    /:name(.:format)                           musclegroups#show
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
#                 appt GET    /me/:user_id/appts/:id(.:format)           appointments#show
#            edit_appt GET    /me/:user_id/appts/:id/edit(.:format)      appointments#edit
#               signup GET    /signup(.:format)                          users#new
#                      GET    /users(.:format)                           users#index
#                      POST   /users(.:format)                           users#create
#                      GET    /users/new(.:format)                       users#new
#                      GET    /users/:id/edit(.:format)                  users#edit
#                      GET    /users/:id(.:format)                       users#show
#                      PATCH  /users/:id(.:format)                       users#update
#                      PUT    /users/:id(.:format)                       users#update
#                      DELETE /users/:id(.:format)                       users#destroy
#                login GET    /login(.:format)                           sessions#new
#                      POST   /login(.:format)                           sessions#create
#                      GET    /profile(.:format)                         users#show
#               logout DELETE /logout(.:format)                          sessions#destroy
#             workouts GET    /workouts(.:format)                        workouts#index
#              workout GET    /workouts/:id(.:format)                    workouts#show

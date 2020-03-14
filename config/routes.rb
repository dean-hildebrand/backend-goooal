Rails.application.routes.draw do
resources :users
resources :teams
resources :players
# resources :favorite_teams
post '/favorite_teams', to: 'teams#favorite'
                              # teams is controller % favorite is the method name
delete '/favorite_teams/users_id/team_id', to: 'teams#destroy'
end

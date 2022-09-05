Rails.application.routes.draw do

  root "vehicles#index"


  resources :vehicles do
    resources :trips
  end

  # get "/vehicles/:vehicle_id/trips/", to: "trips#show", as: "vehicle_trip_path"

end

Rails.application.routes.draw do
  # Start Routes
  root to: 'urls#new'
  post '/', to: 'urls#create', as: 'urls'
  post '/api', to: 'urls#create_api', format: :json
  get '/:short_url', to: 'urls#show'
end

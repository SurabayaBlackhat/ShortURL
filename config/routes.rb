Rails.application.routes.draw do
  # Start Routes
  root to: 'urls#new'
  post '/', to: 'urls#create', as: 'urls'
  get '/:short_url', to: 'urls#show'
end

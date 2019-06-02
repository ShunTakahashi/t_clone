Rails.application.routes.draw do
  resources :twts
  get "/" => "twts#top"
end

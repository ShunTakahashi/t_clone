Rails.application.routes.draw do
  resources :twts do
    collection do
      post :confirm
     end
    end
  get "/" => "twts#top"
end

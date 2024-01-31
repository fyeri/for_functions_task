Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]

  if Rails.env.development?
     mount LetterOpenerWeb::Engine, at: "/letter_opener" 
      require "sidekiq/web"
    mount Sidekiq::Web => "/sidekiq"
  end
end

#   if Rails.env.development?
#     require "sidekiq/web"
#     mount Sidekiq::Web => "/sidekiq"
#   end
# end

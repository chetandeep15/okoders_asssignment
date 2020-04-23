Rails.application.routes.draw do
  devise_for :users

  root 'questions#index'
  resource :questions, only:[:show]

  resource :users, only: [] do
    collection do
      post :follow_topic
      post :follow_user
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

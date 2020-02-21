Rails.application.routes.draw do
   resources :cocktails, only: %I[new create show index] do
    resources :doses, only: %I[create]
  end
  resources :doses, only: [:destroy, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

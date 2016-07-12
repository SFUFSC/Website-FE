Rails.application.routes.draw do
  # get 'users/index'

  # get 'users/new'

  # get 'users/create'

  # get 'users/show'

  # get 'users/update'

  # get 'users/edit'

  # get 'users/destroy'

  # devise_for :users
  devise_for :users, controllers: { sessions: 'users/sessions', invitations: 'users/invitations', confimations: 'users/confimations', 
  mailer: 'users/mailer', passwords: 'users/passwords', registrations: 'users/registrations', unlocks: 'users/unlocks'}


  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'users#index'

end

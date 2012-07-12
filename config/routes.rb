DeadlineCamp::Application.routes.draw do

  match "/404", :to => "web/errors#not_found"
  match "/500", :to => "web/errors#internal_server_error"

  mount Ckeditor::Engine => '/ckeditor'

  namespace :api do
    resources :members, :only => [:index, :show]
  end

  scope :module => :web do
    root :to => 'welcome#index'

    namespace :admin do
      root :to => 'welcome#index'

      resources :members, :only => [:index, :edit, :update, :destroy]
      resources :pages
      resources :news
      resources :photo_albums
      resource :session, :only => [:new, :create, :destroy]
    end


    resources :members, :only => [:index, :new, :create]
    resource :session, :only => [:new, :create, :destroy]
    resource :account, :only => [:show, :edit, :update] do
      scope :module => :account do
        resource :password, :only => [:edit, :update]
      end
    end
    resource :remind_password, :only => [:new, :create]
    resources :pages, :only => [:show]
    resources :news, :only => [:index, :show]
    resources :photo_albums, :only => [:index]
  end

end

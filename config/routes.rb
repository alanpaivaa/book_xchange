Rails.application.routes.draw do

  resources :countries, param: :name, shallow: true do
    resources :states, shallow: true do
      resources :cities, shallow: true do
        resources :neighborhoods, shallow: true do
          resources :streets, shallow: true
        end
      end
    end
  end

end

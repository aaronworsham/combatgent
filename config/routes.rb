Combatgent::Application.routes.draw do

  match "lookbooks" => "products#lookbooks"
  match "my_closet" => "users#closet"
  
  resources :users do
    member do
      get :closet
    end
  end
  
  resources :closet_items
  resources :outfits
  
  namespace :admin do
    resources :outfits do
      resources :outfit_images
      resources :outfit_products do
        member do
          get :select
          get :remove
        end
        collection do
          get :available
          get :selected
        end
      end
    end
  end
  
  match '/products', :controller=>'products', :action=>'index' 
  
end

Combatgent::Application.routes.draw do

  match "lookbooks" => "products#lookbooks"
  match "my_closet" => "users#closet"
  
  resources :users do
    member do
      get :closet
    end
  end
  
  resources :closet_items
  
end

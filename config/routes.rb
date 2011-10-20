Combatgent::Application.routes.draw do

  resources :products do
    member do
      get 'lookbooks'
    end
  end
  
  match "lookbooks" => "products#lookbooks"
  match "closet" => "users#closet"
  
end

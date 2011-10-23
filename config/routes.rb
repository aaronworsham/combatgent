Combatgent::Application.routes.draw do

  match "lookbooks" => "products#lookbooks"
  match "my_closet" => "users#closet"
  
end

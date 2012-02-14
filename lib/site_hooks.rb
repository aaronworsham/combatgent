class SiteHooks < Spree::ThemeSupport::HookListener 
  insert_after :admin_tabs do 
    %(<%= tab(:outfits) %>) 
  end
  
  insert_after :admin_product_form_right, 'admin/products/combat_fields'
  
  insert_after :admin_product_sub_tabs do
    %(<%= tab :fits, :match_path => 'admin/fits', :css_class => 'last' %>)
  end
end
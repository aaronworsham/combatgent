class SiteHooks < Spree::ThemeSupport::HookListener 
  insert_after :admin_tabs do 
    %(<%= tab(:outfits) %>) 
  end
end
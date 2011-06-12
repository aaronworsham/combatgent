class SiteHooks < Spree::ThemeSupport::HookListener 
  remove :homepage_sidebar_navigation
  
  Spree::Config.set(:logo => '')
end
class SiteHooks < Spree::ThemeSupport::HookListener 
  remove :homepage_sidebar_navigation
  
  replace :footer_left, 'shared/page_footer'
end
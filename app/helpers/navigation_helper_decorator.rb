Admin::NavigationHelper.class_eval do
  # This is a duplicate of the helper method that has bug fixed in later versions of Spree. Until this app has Spree upgraded from
  # 0.60.4 we will need this helper method to avoid hitting error caused from bug.
  def tab(*args)
    options = {:label => args.first.to_s}
    if args.last.is_a?(Hash)
      options = options.merge(args.pop)
    end
    options[:route] ||=  "admin_#{args.first}"

    destination_url = send("#{options[:route]}_path")

    ## if more than one form, it'll capitalize all words
    label_with_first_letters_capitalized = t(options[:label], :default => options[:label]).gsub(/\b\w/){|c| c.upcase}

    link = link_to(label_with_first_letters_capitalized, destination_url)

    css_classes = []

    selected = if options[:match_path]
      request.fullpath.starts_with?("/admin#{options[:match_path]}")
    else
      args.include?(controller.controller_name.to_sym)
    end
    css_classes << 'selected' if selected

    if options[:css_class]
      css_classes << options[:css_class]
    end
    content_tag('li', link, :class => css_classes.join(' '))
  end
end
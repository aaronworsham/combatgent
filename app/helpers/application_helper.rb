module ApplicationHelper
  def small_inches
    values = []
    (3..36).each do |number|
      values << ["#{number}.0 inches",number]
      values << ["#{number}.5 inches",number+0.5] unless number == 24
    end
    values
  end
  
  def large_inches
    values = []
    (24..60).each do |number|
      values << ["#{number}.0 inches",number]
      values << ["#{number}.5 inches",number+0.5] unless number == 48
    end
    values
  end
  
  def heights
    values = []
    [5,6].each do |feet|
      (0..11).each{ |inches| values << "#{feet}' #{inches}\"" }
    end
    values
  end
  
  def pounds
    values = []
    (100..300).each do |number|
      values << ["#{number} pounds",number]
    end
    values
  end
  
  def jean_sizes
    waist_values = (28..38)
    length_values = (28..38)
    
    values = []
    waist_values.each do |waist|
      length_values.each{ |length| values << "#{waist}/#{length}" }
    end
    values
  end
  
  def shoe_sizes
    values = []
    (5..14).each do |number|
      values << number
      values << number+0.5 unless number == 14
    end
    values
  end
  
  # returns the price of the product to show for display purposes
  def product_price(product_or_variant, options={})
    options.assert_valid_keys(:format_as_currency, :show_vat_text)
    options.reverse_merge! :format_as_currency => true, :show_vat_text => Spree::Config[:show_price_inc_vat]

    amount = product_or_variant.price
    amount += Calculator::Vat.calculate_tax_on(product_or_variant) if Spree::Config[:show_price_inc_vat]
    options.delete(:format_as_currency) ? format_price(amount, options) : amount
  end

end

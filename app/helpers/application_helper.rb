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
end

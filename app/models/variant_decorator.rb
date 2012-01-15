Variant.class_eval do
  def options_text_label
    self.option_values.sort{|ov1, ov2| ov1.option_type.position <=> ov2.option_type.position}.map { |ov| "#{ov.option_type.presentation}" }.to_sentence({:words_connector => ", ", :two_words_connector => ", "})
  end
  
  def option_text_for_select
self.option_values.sort{|ov1, ov2| ov1.option_type.position <=> ov2.option_type.position}.map { |ov| "#{ov.presentation}" }.to_sentence({:words_connector => ", ", :two_words_connector => ", "})
  end
end
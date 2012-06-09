class TextDescInput < SimpleForm::Inputs::TextInput
  def input
    input_html_options[:rows] = 7
    super
  end
end


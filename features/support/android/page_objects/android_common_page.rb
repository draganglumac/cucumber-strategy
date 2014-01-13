class AndroidCommonPage

  def initialize
    @text = ['common', 'page']
  end

  def present?(text)
    @text.include?(text) or raise "Text '#{text}' not present on the page."
  end

end

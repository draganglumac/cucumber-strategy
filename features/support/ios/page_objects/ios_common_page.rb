class IosCommonPage

  def initialize
    @text = ['common', 'rage']
  end

  def present?(text)
    @text.include?(text) or raise "Text '#{text}' not present on the page."
  end

end

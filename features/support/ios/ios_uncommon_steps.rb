module IosActions
  
  def ensure_ucommmon_scenario
    puts "Ensure uncommon scenario for iOS."
  end

  def navigate_to_common
    puts "Navigate to common on iOS."
  end

  def verify_common_page(text_snippets)
    current_page = IosCommonPage.new 
    text_snippets.each { |snippet| current_page.present?(snippet) }
  end

end

module AndroidActions

  def ensure_ucommmon_scenario
    puts "Ensure uncommon scenario for Android."
  end

  def navigate_to_common
    puts "Navigate to common on Android."
  end

  def verify_common_page(text_snippets)
    current_page = AndroidCommonPage.new 
    text_snippets.each { |snippet| current_page.present?(snippet) }
  end

end

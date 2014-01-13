module IosSteps 

  def ensure_on_home_page
    puts "iOS, I am on the home page."
  end

  def log_in_successfully
    puts "iOS, log in as validuser/password"
  end

  def verify_on_showcase
    puts "iOS, I am on the Showcase page and I see categories"
  end

  def log_in_unsuccessfully
    puts "iOS, log in as invaliduser/password"
  end

  def verify_login_screen
    puts "iOS, I am on the login screen"
  end

  def verify_login_error_message_present
    puts "iOS, I can see error message that my username or password is wrong."
  end

end

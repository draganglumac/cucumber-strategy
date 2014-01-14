module AndroidActions

  def ensure_on_home_page
    puts "Android, I am on the home page."
  end

  def log_in_successfully
    puts "Android, log in as validuser/password"
  end

  def verify_on_showcase
    puts "Android, I am on the Showcase page and I see categories"
  end

  def log_in_unsuccessfully
    puts "Android, log in as invaliduser/password"
  end

  def verify_login_screen
    puts "Android, I am on the login screen"
  end

  def verify_login_error_message_present
    puts "Android, I can see error message that my username or password is wrong."
  end

end

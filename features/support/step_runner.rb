module StepRunner

  def runner
    if android?
      @runner ||= AndroidRunner.new
    elsif ios?
      @runner ||= IosRunner.new
    else
      raise "Neither ios nor android are set as PLATFORM in profile. Check your profile (config/cucumber.yml) and try again."
    end
  end

end

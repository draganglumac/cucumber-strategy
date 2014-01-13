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

  def object_for(name) 
    if android?
      @page_objects ||= AndroidPageObjects.new
      @page_objects.object_for(name)
    elsif ios?
      @page_objects ||= IosPageObjects.new
      @page_objects.object_for(name)
    else
      raise "Neither ios nor android are set as PLATFORM in profile. Check your profile (config/cucumber.yml) and try again."
    end
  end


end

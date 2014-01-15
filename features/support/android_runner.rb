class AndroidRunner
  include AndroidActions if android?

  def method_missing(method, *args, &block)
    raise Cucumber::Pending.new("Step not yet implemented for Android.")
  end
end

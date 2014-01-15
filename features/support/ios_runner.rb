class IosRunner
  include IosActions if ios?

  def method_missing(method, *args, &block)
    raise Cucumber::Pending.new("Step not yet implemented for iOS.")
  end
end

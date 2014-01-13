class IosPageObjects

  def initialize
    @page_objects = {}
  end

  def object_for(name)
    case name
    when 'Common'
      @page_objects[name] ||= IosCommonPage.new
    end

    @page_objects[name]
  end

end

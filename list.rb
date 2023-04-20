require './my_enumarable'

class MyList
  include MyEnumarable

  def initialize(*args)
    @list = args
  end
end

require ‘./my_enumarable’
class MyList
  include MyEnumarable
  def initialize(*list)
    @list = list
  end
  def each(&block)
    @list.each(&block)
  end
end

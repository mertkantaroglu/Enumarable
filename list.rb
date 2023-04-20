require './my_enumarable'

class MyList
  include MyEnumarable

  def initialize(*args)
    @list = args
  end
end

module MyEnumarable
  def all?()
    each { |value| return false unless yield(value) }
    true
  end

  def any?()
    each { |value| return true if yield(value) }
    false
  end
end
module MyEnumarable
  def all?()
    each { |value| return false unless yield(value) } if block_given?
    true
  end
  def any?()
    each { |value| return true if yield(value) } if block_given?
    false
  end
  def filter()
    result = []
    each { |value| result << value if yield(value) } if block_given?
    result
  end
end

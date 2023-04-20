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

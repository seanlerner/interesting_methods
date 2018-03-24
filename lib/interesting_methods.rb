class Object

  def im
    interesting_methods
  end

  def interesting_methods
    if self.class == Module
      (singleton_methods + instance_methods).uniq.sort
    else
      (public_methods - Object.methods).sort
    end
  end

  def self.interesting_methods
    (public_methods - Object.methods).sort
  end

end

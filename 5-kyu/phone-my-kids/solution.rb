class Mother
  @@subclasses = []

  def self.inherited(subclass)
    @@subclasses.push(subclass)
  end
  
  def self.phone_kids
    @@subclasses.each { |i| i.send(:phone) }
  end
end
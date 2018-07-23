class Hash
  def method_missing(symbol, *args)
    if symbol.to_s =~ /^_(\w+)$/
      self[get_key($1)]
    elsif symbol.to_s =~ /^_(\w+)=$/
      key = if exsisting = get_key($1)
              exsisting
            else
              $1.to_sym
            end
      self[key] = args[0]
    else
      super
    end

  end

  private
  def get_key(name)
    if self.has_key? name.to_sym
      name.to_sym
    elsif self.has_key? name
      name
    end
  end
end
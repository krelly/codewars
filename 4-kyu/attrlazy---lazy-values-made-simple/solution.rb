module AttrLazy
  def attr_lazy(name, &block)
    define_method(name) do
      variable_name = "@#{name.to_s.delete('?')}"
      if instance_variable_defined?(variable_name.to_sym)
        instance_variable_get(variable_name)
      else
        instance_variable_set(variable_name, instance_eval(&block))
      end
    end
  end
end
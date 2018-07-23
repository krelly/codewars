name = global_variables.grep(/boom/).first
bomb.cut_the_wire(eval(name.to_s))

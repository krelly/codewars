Lazy loading values (memoization) is a great way to optimize code. Many developers like to use it to cleanup their code as well. For example:

```ruby
# contrived example
class Numbers
  def initialize(*numbers)
    @numbers = numbers
  end
  
  # we only load and cache this when its requested
  def evens
    @evens ||= @numbers.select(&:even?)
  end
end
```

However, one issue with lazy loading attributes is that if the result is nil or false, then the result will continue to be re-computed each time the method is called. 

For example:

```ruby
def even?
  @even ||= @numbers.all?(&:even?)
end
```

For this kata we want to fix this. Using some meta-programming magic we are going to create an `attr_lazy` helper. Its signature will be as such:

```ruby
attr_lazy(name, &block)
```

The name argument will be the name of the method to be created, and the block will be called the first time the method is accessed. The value returned from the block will be used as the value of the method. 

The method should store the value as an instance variable.

```ruby
attr_lazy(:even) { ... } # value will be stored as @even variable
```

If a question mark is in the name we will remove it, since ruby doesn't like variables with question marks in them:

```ruby
attr_lazy(:even?) { ... } # value will be stored as @even variable
```

Here is a full example:

```ruby
class Numbers
  extend AttrLazy
  
  def initialize(*numbers)
    @numbers = numbers
  end
  
  attr_lazy :even? do
    @numbers.all?(&:even?)
  end
end
```

There is one more thing. We want to make sure that we have access to the instance variable so that we can set it manually, either before the method is called or anytime after. Therefor the block passed in to `attr_lazy` should only be called, and its value applied to the variable, if the variable has not already been set directly. 

For example, in the follow (contrived) example, the block will never be called if `mark_even` is called first:

```ruby
class Numbers
  extend AttrLazy
  
  def initialize(*numbers)
    @numbers = numbers
  end
  
  attr_lazy :even? do
    @numbers.all?(&:even?)
  end
  
  def mark_even
    @even = true
  end
end
```

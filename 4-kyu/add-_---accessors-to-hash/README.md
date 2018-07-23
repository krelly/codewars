Instead of having to access values in hash by

```ruby
h[:one]
```
or
```ruby
h["one"]
```

write a method_missing that allows to use

```ruby
h._one
```

both for reading and writing. It should <ul>
<li>first check for a key as a symbol, then for a key as a string</li>
<li>return nil if neither was found</li>
<li>return the value upon setting a new one</li>
<li>add a new key as a symbol if it doesn't exist yet</li>
<li>update whatever key is there, either symbol or string</li>
</ul>
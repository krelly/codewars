The rgb() method is incomplete. Complete the method so that passing in RGB decimal values will result in a hexadecimal representation being returned.  The valid decimal values for RGB are 0 - 255.  Any (r,g,b) argument values that fall out of that range should be rounded to the closest valid value. 

The following are examples of  expected output values:
```javascript
rgb(255, 255, 255) // returns FFFFFF
rgb(255, 255, 300) // returns FFFFFF
rgb(0,0,0) // returns 000000
rgb(148, 0, 211) // returns 9400D3
```
```coffeescript
rgb(255, 255, 255) # returns FFFFFF
rgb(255, 255, 300) # returns FFFFFF
rgb(0,0,0) # returns 000000
rgb(148, 0, 211) # returns 9400D3
```
```ruby
rgb(255, 255, 255) # returns FFFFFF
rgb(255, 255, 300) # returns FFFFFF
rgb(0,0,0) # returns 000000
rgb(148, 0, 211) # returns 9400D3
```
```python
rgb(255, 255, 255) # returns FFFFFF
rgb(255, 255, 300) # returns FFFFFF
rgb(0,0,0) # returns 000000
rgb(148, 0, 211) # returns 9400D3
```
```csharp
Rgb(255, 255, 255) # returns FFFFFF
Rgb(255, 255, 300) # returns FFFFFF
Rgb(0,0,0) # returns 000000
Rgb(148, 0, 211) # returns 9400D3
```
```fsharp
rgb 255  255  255 // returns FFFFFF
rgb 255  255  300 // returns FFFFFF
rgb 0 0 0 // returns 000000
rgb 148  0  211 // returns 9400D3
```
```c
char output[7] = {0};

rgb(255, 255, 255, output); 
output == "FFFFFF";

rgb(255, 255, 300, output); 
output == "FFFFFF";

rgb(0, 0, 0, output); 
output == "000000";

rgb(148, 0, 211, output);
output == "9400D3";
```
```cpp
rgb(255, 255, 255) # returns FFFFFF
rgb(255, 255, 300) # returns FFFFFF
rgb(0,0,0) # returns 000000
rgb(148, 0, 211) # returns 9400D3
```
```r
rgb(255, 255, 255)
[1] "FFFFFF"

rgb(255, 255, 300)
[1] "FFFFFF"

rgb(0, 0, 0)
[1] "000000"

rgb(148, 0, 211)
[1] "9400D3"
```
```dart
rgb(255, 255, 255) // returns FFFFFF
rgb(255, 255, 300) // returns FFFFFF
rgb(0, 0, 0)       // returns 000000
rgb(148, 0, 211)   // returns 9400D3
```
```if:nasm
<code>
char \*rgb(int r, int g, int b, char \*outp)
</code>
```
```nasm
mov rdi, 255
mov rsi, 255
mov rdx, 255
mov rcx, outp
call rgb        ; rax <- FFFFFF

mov rdi, 255
mov rsi, 255
mov rdx, 300
mov rcx, outp
call rgb        ; rax <- FFFFFF

mov rdi, 0
mov rsi, 0
mov rdx, 0
mov rcx, outp
call rgb        ; rax <- 000000

mov rdi, 148
mov rsi,   0
mov rdx, 211
mov rcx, outp
call rgb        ; rax <- 9400D3
```
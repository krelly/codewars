<font size="5">Description:</font><br>
Given an array (arr) as an argument complete the function <code>countSmileys</code> that should return the total number of smiling faces.<br>
<font size="4">Rules for a smiling face:</font><br>
-Each smiley face must contain a valid pair of eyes.
Eyes can be marked as <code>:</code> or <code>;</code><br>
-A smiley face can have a nose but it does not have to.
Valid characters for a nose are <code>-</code> or <code>~</code><br>
-Every smiling face must have a smiling mouth that should be marked with either
<code>)</code> or <code>D</code>.<br>
No additional characters are allowed except for those mentioned.<br>
<strong>Valid smiley face examples:</strong><br>
<code>:) :D ;-D :~)</code><br>
<strong>Invalid smiley faces:</strong><br>
<code>;( :> :} :]</code>
<br><br>
<strong>Example cases:</strong><br>
```javascript
countSmileys([':)', ';(', ';}', ':-D']);       // should return 2;
countSmileys([';D', ':-(', ':-)', ';~)']);     // should return 3;
countSmileys([';]', ':[', ';*', ':$', ';-D']); // should return 1;
```
<br>
<b>Note:</b> In case of an empty array return 0. You will not be tested with invalid input (input will always be an array). Order of the face (eyes, nose, mouth) elements will always be the same
<h3>Happy coding!</h3>
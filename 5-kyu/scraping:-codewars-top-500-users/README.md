You should get and parse the html of the [codewars leaderboard page](https://www.codewars.com/users/leaderboard).

You can use `Nokogiri`(Ruby) or `BeautifulSoup`(Python) or `CheerioJS`(Javascript).<br>
For Javascript: Return a Promise resolved with your 'Leaderboard' Object!


<div><b><u style='color: red; font-size: 1.25em;'>You must meet the following criteria</u></b>: </div>
<br>
<span style='font-size: 1.25em;'>Return a 'Leaderboard' object with a position property.</span>
```
Leaderboard#position should contain 500 'User' objects.
Leaderboard#position[i] should return the ith ranked User(1 based index).
```

<span style='font-size: 1.25em;'>Each User should have the following properties:</span>
```
User#name    # => the user's username, not their real name
User#clan    # => the user's clan, empty string if empty clan field
User#honor   # => the user's honor points as an integer
```


<span style='font-size: 1.25em'>Ex:<span> 
```
  an_alien = leaderboard.position[3]   # => #<User:0x3124da0 @name="myjinxin2015", @clan="China Changyuan", @honor=21446>
  an_alien.name                        # => "myjinxin2015"
  an_alien.clan                        # => "China Changyuan"
  an_alien.honor                       # => 21446
  
```

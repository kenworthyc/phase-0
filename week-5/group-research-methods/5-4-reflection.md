What was your experience like researching for Ruby methods. Did you find them quickly? How easy was it to implement once you found one?

Reading through the Ruby docs was pretty frustrating for me. I find the trouble I had sort of funny, because it took me a minimal amount of research (maybe 10 minutes) to come upon one or two solutions I thought would work, and then it took me the following two hours to determine that they would not work, and then another hour to find the solution that would. I partially think the example code on the Ruby docs is unnecessarily obfuscatory — I found most of the code examples unclear. In general, I'd find the most broken-down examples and useful information on blogs.

Did you find any methods you thought would work but didn't? What made you think they would work? How did you determine they didn't?

And I partially think that I probably spent too much time trying to make .each and .map/.collect work. (This is for the array method.) I thought .each would be fine, to iterate over the array and locate the integers; then after trying it a few times with no changes, I did more research and found that .each doesn't alter the structure over which it iterates, and that .map or .collect would. Those methods did successfully add to the integers, but they also changed all the strings to nil, since they iterate over the entire array. This whole time I was attempting to only apply these methods if the array cell was (.is_a?) an integer; I finally realized that approach would only work if I used an index-specific method (.at(index)). (Now I think .map could have worked if I'd kept trying and duplicated the strings to return instead of nil, but I'm not certain.)

How does the method you chose iterate through and modify information in a data structure?

 For the array method: I iterated through the indices of the array using `.at(index)`, and used the `.is_a?(ObjectType)` to determine if the array element at each index was an Integer. (You can also use `is_a?()` on other objects, like Strings, Arrays, and Hashes.)

 For the hash method: I used the iterator `.each_pair` (just like `.each`, but takes two parameters— one for the key and one for value) to access each key-value pair in the pets hash, and added the modifying argument to the value (using the parameter for value).

Is the method you implemented destructive or non-destructive?

My methods were both destructive; they altered the input array directly, and needed no extra container for the method to fill in (so as not to change the input array).

What did you learn from reading your accountability-group member's explanations on their solutions?

My group members' explanations described a few methods to me which I'd heard of before, but didn't know exactly how to use, such as .include? (didn't know this worked on strings, not just on arrays);



What did you learn about researching and explaining your research to others?

I found I got a more complete understanding of the methods I had tried when I explained them to other people (and having a specific audience was motivating). As soon as I had to take responsibility for someone else's understanding, I felt a new ownership over the concepts and methods— I had been a little scared of them before! Which I hadn't realized until I just had to buckle down and explain it.
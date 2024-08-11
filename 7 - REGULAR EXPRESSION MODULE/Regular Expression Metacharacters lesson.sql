# Regular Expression Metacharacters 
# [-.^$*+?}| 

# ^: Matches the start of a line.
# $: Matches the end of a line.
# .: Matches any single character except a newline character.
# [...]: Matches any one character enclosed in the square brackets. If the first character is "^", it matches any character not enclosed in the brackets.
# [^...]: Matches any character not enclosed in the brackets.
# p1|p2|p3: Matches any of the patterns p1, p2, or p3.
# *: Matches zero or more occurrences of the preceding character or pattern.
# +: Matches one or more occurrences of the preceding character or pattern.
# : Matches zero or one occurrence of the preceding character or pattern.
# {n}: Matches exactly n occurrences of the preceding character or pattern.
# {n,}: Matches n or more occurrences of the preceding character or pattern.
# {n,m}: Matches between n and m (inclusive) occurrences of the preceding character or pattern.
# ( ... ): Groups characters or patterns together.
# \b: Matches a word boundary.
# \B: Matches a non-word boundary.
# \d: Matches any digit.
# \D: Matches any non-digit character.
# \s: Matches any whitespace character.
# \S: Matches any non-whitespace character.
# \w: Matches any word character (equivalent to [a-zA-Z0-9_]).
# \W: Matches any non-word character.
# \n: Matches a newline character.
# \r: Matches a carriage return character.
# \t: Matches a tab character.
# \: Matches a backslash character.


SELECT *
FROM customers
WHERE first_name REGEXP 'k' # gonna search any value that has K in it
;

SELECT *
FROM customers
WHERE first_name REGEXP '[a-c]' # we are looking for a specific set of character
;								# for this query we looking for a value that have letter range from a-c
								
SELECT *
FROM customers
WHERE total_money_spent REGEXP '[0-9]' # can also put range of numbers
;									   

SELECT *
FROM customers
WHERE total_money_spent REGEXP '0-9' # if we remove bracket, meaning we are looking for literal string
;									 # so the bracket is used to find a range of the value we put


SELECT *
FROM customers
WHERE phone REGEXP '.' # gonna search for any character
;					   # those that dont have any value will be removed from output


SELECT *
FROM customers
WHERE phone REGEXP '6.' # gonna search for any 6 that has any value or character after it
;

SELECT *
FROM customers
WHERE first_name REGEXP 'k...n' # gonna search for any K that has value or character (depending on how many dot we put) before N
;

SELECT *
FROM customers
WHERE first_name REGEXP '^k' # gonna search for any value that STARTS with K. caret (^) means starts with
;

SELECT *
FROM customers
WHERE first_name REGEXP 'n$' # gonna search for any value that ENDS with N. dollar sign ($) means ends with
;

SELECT *
FROM customers
WHERE first_name REGEXP 'Obi.*' # asterisk (*) means zero or more occurences
;								# if we put period (.) only it means that it has to have value 
								# so by putting asterisk (*) it means that it doesnt have to have any value or if it does it will still show output
						
                                
SELECT *
FROM customers
WHERE first_name REGEXP 'Obi.+' # + means that it has to atleast have 1 or more value or character
;                                
                                
SELECT *
FROM customers
WHERE first_name REGEXP 'k.?n' # ? means that it has to be 0 or 1 no more no less
;                                     
                                
SELECT *
FROM customers
WHERE first_name REGEXP 'k.{3}n' # {} means that it has to be how many character we put inside the bracket
;                                  
                                
                                
SELECT *
FROM customers
WHERE first_name REGEXP 'k...n' # essentially same as above
;                                 
                                
                                
SELECT *
FROM customers
WHERE first_name REGEXP 'kev|fro' # means either 'left value' or 'right value' between the |
;                       







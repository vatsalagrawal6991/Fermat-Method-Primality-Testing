# Made By Vatsal Agrawal
# Fermat-Method-Primality-Testing
Primality Testing Using Fermat Method by using random module and a help to produce a some random type of function in comments

**************************HOW TO MAKE EXECUTABLE AND RUN PROGRAMME******************************
1) Run prime n q 

Problem Statment 

Develop a recursive functional implementation for primality testing based on the following computational theory.
Fermat’s little theorem: If n is a prime and a < n is any positive integer, then a
n ≡ a modulo n
(congruent modulo n: Two numbers are said to be congruent modulo n if they both have the same
remainder when divided by n).
If n is not a prime, then, in general, most of the numbers a < n will not satisfy the above relation.
Thus, given a number n, we can pick a random number a < n and then compute the remainder
a
nmodulo n. If this is not equal to a, n is certainly not a prime. Otherwise, chances are good that
n is a prime. We can assume that the probability that n is a prime is 0.5. We can keep repeating
the above experiment and stop if either (i) at any stage we find that n is not a prime, or (ii) we find
that the probability that n is not a prime has decreased to an acceptable level.
With the above information, implement a recursive prime n q where n is the number whose
primality is to be tested and q is the number of times the Fermat’s test is to be applied. Note, no
proof of correctness or timing analysis needs to be provided for this question

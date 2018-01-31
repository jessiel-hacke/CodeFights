## Almost Increasing Sequence

Given a sequence of integers as an array, determine whether it is possible to obtain a strictly increasing sequence by removing no more than one element from the array.

**Example**

- For _sequence = [1, 3, 2, 1]_, the output should be _almostIncreasingSequence(sequence) = false;_ There is no one element in this array that can be removed in order to get a strictly increasing sequence.
- For _sequence = [1, 3, 2]_, the output should be _almostIncreasingSequence(sequence) = true._ You can
remove 3 from the array to get the strictly increasing sequence [1, 2]

. Alternately, you can remove 2 to get the strictly increasing sequence [1, 3].

**Input/Output**

- **[execution time limit] 4 seconds (rb)**
- **[input] array.integer sequence** _Guaranteed constraints:_  

  - 2 ≤ sequence.length ≤ 10^5,
  - -10^5 ≤ sequence[i] ≤ 10^5.
- **[output] boolean** Return true if it is possible to remove one element from the array in order to get a strictly increasing sequence, otherwise return false.

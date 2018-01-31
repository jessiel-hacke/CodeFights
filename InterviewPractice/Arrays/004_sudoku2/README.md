## Sudoku

Sudoku is a number-placement puzzle. The objective is to fill a 9 × 9 grid with numbers in such a way that each column, each row, and each of the nine 3 × 3 sub-grids that compose the grid all contain all of the numbers from 1 to 9 one time.

Implement an algorithm that will check whether the given grid of numbers represents a valid Sudoku puzzle according to the layout rules described above. Note that the puzzle represented by grid does not have to be solvable.

**Example**

- For
grid = <br>
[['.', '.', '.', '1', '4', '.', '.', '2', '.'],<br>
['.', '.', '6', '.', '.', '.', '.', '.', '.'],<br>
['.', '.', '.', '.', '.', '.', '.', '.', '.'],<br>
['.', '.', '1', '.', '.', '.', '.', '.', '.'],<br>
['.', '6', '7', '.', '.', '.', '.', '.', '9'],<br>
['.', '.', '.', '.', '.', '.', '8', '1', '.'],<br>
['.', '3', '.', '.', '.', '.', '.', '.', '6'],<br>
['.', '.', '.', '.', '.', '7', '.', '.', '.'],<br>
['.', '.', '.', '5', '.', '.', '.', '7', '.']]<br>
the output should be  sudoku2(grid) = true; <br><br>
- For grid = <br>
[['.', '.', '.', '.', '2', '.', '.', '9', '.'],<br>
['.', '.', '.', '.', '6', '.', '.', '.', '.'],<br>
['7', '1', '.', '.', '7', '5', '.', '.', '.'],<br>
['.', '7', '.', '.', '.', '.', '.', '.', '.'],<br>
['.', '.', '.', '.', '8', '3', '.', '.', '.'],<br>
['.', '.', '8', '.', '.', '7', '.', '6', '.'],<br>
['.', '.', '.', '.', '.', '2', '.', '.', '.'],<br>
['.', '1', '.', '2', '.', '.', '.', '.', '.'],<br>
['.', '2', '.', '.', '3', '.', '.', '.', '.']]<br>
the output should be sudoku2(grid) = false. The given grid is not correct because there are two 1s in the second column. Each column, each row, and each 3 × 3 subgrid can only contain the numbers 1 through 9 one time.

**Input/Output**

- **[execution time limit] 4 seconds (rb)**
- **[input] array.array.char grid** A 9 × 9 array of characters, in which each character is either a digit from '1' to '9' or a period '.'.
- **[output] boolean** Return true if grid represents a valid _Sudoku_ puzzle, otherwise return false

.

# Lua Nested Table Iteration Bug

This repository demonstrates a potential issue with iterating over deeply nested tables in Lua using `pairs`.  The `pairs` iterator does not guarantee a specific order, which can lead to unexpected results or even infinite loops if not carefully considered.

The `bug.lua` file shows a simple function that recursively iterates through a nested table.  However, because the order of iteration is not defined, the behavior might be inconsistent across different Lua implementations or versions.

The `bugSolution.lua` file provides a solution that addresses this issue by using a different approach for table traversal, ensuring consistent and predictable behavior regardless of the table's structure.
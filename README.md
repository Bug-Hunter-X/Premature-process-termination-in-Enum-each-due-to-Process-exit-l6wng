# Elixir Bug: Premature Process Termination in Enum.each

This repository demonstrates a common Elixir coding error involving the misuse of `Process.exit/2` inside an `Enum.each/2` loop. The improper use of `Process.exit/2` can lead to unexpected behavior and premature termination of the process before the loop completes.

## Bug Description
The provided Elixir code attempts to iterate through a list and print each element. However, if the element is equal to 3, the `Process.exit/2` function is called, terminating the process immediately.  This prevents the remaining elements from being processed.

## Solution
The solution involves replacing `Process.exit/2` with a more appropriate mechanism for handling such conditions, like raising an exception or using a different iteration method that provides more control flow.
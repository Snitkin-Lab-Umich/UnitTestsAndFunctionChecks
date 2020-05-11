# Unit Tests and Function Checks


To add unit test functionality to your R package run
```
usethis::use_testthat()
```
This command will generate a subdirectory called `tests/testthat/` where you will write your test files. 

For unit testing you can create as many files as you like: one for each function, one for each lib file, or one mega function. I have been organizing mine so there is a one-to-one mapping to the lib files. 

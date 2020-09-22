

# TASK - Create a function for seraching for word inside a file
   - The function should traverse the file and check if a word exists in that file
   - The important part is that the execution time of the function should be less than a second.
   - This coding challenge should be attempted using a singly ruby file (.rb) and need not add user interface.

# Solution : -
To find the solution for this task I have decided to use liner searching with the multithreading, to use multithreading we have used a libery called parallel which help us to run any code in a parallel process using all threads or cores. 
(multithreading used to speed up the process)

### Installation

Install the dependencies and devDependencies and start the server.
You need to change the source path in the setup.sh 
```sh
source /usr/local/rvm/scripts/rvm
```
with your the path for your system, then run the setup.sh file to install al dependencies

```sh
$ cd spotwiki-task
$ sh setup.sh
```

### Run the solution
 Find the wrod which start with your searching terms [consider searching term as -- dip]
run the following command
```sh
time ruby -r "./wordlist_first.rb" -e "get_words 'wordlist.txt', 'dip'"
```

Find the words which includes your searching terms in any position of the line inn the file 
run the following command
```sh
time ruby -r "./wordlist_first.rb" -e "get_included_words 'wordlist.txt', 'dip'"
```

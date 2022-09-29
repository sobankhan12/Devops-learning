# Branches

- each task has one separate branch

- after completion of code we merge other branches with master

- this concept is very useful for parallel development

- when you create new file it show in every branch until you commit, when you commit it will belong

  to specific or particular branch

- when you create a new branch whole data of existing branch will be copied to newly branch
- changes are personal to particular branch
- default branch is master

- ```bash
  # How to checkout current branch
  $ git branch 
  # how to create a new branch
  $ git branch devops
  # how to swith  branches 
  $ git checkout devops
  # how to create and swith to new branch
  $ git checkout -b "new-branch"
  
  
  ```

- ## Merge

  - you can not merge branches of different repos

  - merges different branches into master branch

    ```bash
    $ git merge devops
    ```

- ## Conflict

  - when same files have different content in different branches when you merge then conflict come

  - you resolve the conflict and then add and commit these changes 

    

- ## Stashing

  - Suppose you are implementing a new feature on your product. Your code is in progress and suddenly your customer escalation come. He says you have to work urgently on another feature and you do want to commit your partial code  and through away changes, you want to keep your partial  code in a safe place so that you come to start again coding where you left so here stash comes into play

  - Stash only work on modified files.

  - After stash apply your data will also present in the stash so you have to clear the stash

  - in stash copy and paste method apply

    ```bash
    # how to stash any changes of file
    $ git stash
    # how to backup of stash code
    $ git stash apply stash@{number}
    # how to clear stash
    $ git stash clear
    # how to see list stashes
    $ git stash list
    ```

    

- ## Reset 

  - it is powerful to undo local changes to the state of the git repository

  - ### Staging changes undo

    - if you want to undo staging  that you stage do you use git reset

      ```bash
      $ git reset "filename"
      $ git reset .    
      ```

  - ## Undo changes from staging and working directory
  
    ```bash
    $ git reset --hard "filename"
    ```
  
    

- ## Revert

  - it is a powerful command for you to undo an existing commit

  - It does not delete any data in this process. Git creates a new commit with the included files just reverted the previous state of file 

  - So your version control history moves forward and state of file moves backward

    ```bash
    $ git revert "commit id"
    
    ```

    

- ## Remove untracked files

  - make sure dry run for untracked files

  - remove files forcefully

    ```bash
    # dry run to see files 
    $ git clean -n
    # now delete files
    $ git clean -f
    ```

    

- # Tags

  - to learn or remember any commit by using tag

    ```bash
    $ git tag -a "tag name" -m "payment option" "commit id"
    # tag list
    $ git tag
    # tag delete 
    $ git tag -d "tag name"
    ```

    

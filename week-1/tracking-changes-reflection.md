# 1.5 Tracking Changes Reflection
* How does tracking and adding changes make developers' lives easier?
  * Tracking and adding changes allows developers to keep track of when certain features were added.  This can remind a developer what changes were made during each revision.  This can be useful, for example, if a developer has the need to roll back a series of changes.
* What is a commit?
  * A commit is submitting a series of changes to the repository.  You can edit and add a number of files and then commit the changes to "check it in" to the repository.  Git will track the revision number associated with those changes.
* What are the best practices for commit messages?
  * Commit messages should be short and to the point.  There should be a short summary and then a slightly more detailed explanation below highlighting the changes.  Text should wrap at around 72 characters as many tools which print out revision summary messages don't do any special wrapping of characters on their own.  Using 72 characters will ensure that they are printed out satisfactorily.  
* What does the HEAD^ argument mean?
  * HEAD^ refers to the last commit, while HEAD is the commit you are currently working on.  This shortcut can be used to quickly revert changes that you have made to the previous revision.
* What are the 3 stages of a git change and how do you move a file from one stage to the other?
  1.  Working - The first stage is where you make updates to files in the relevant working directories.  Often times this involves creating a new branch for making changes and then updating the relevant files.  Once the files have the appropriate updates, they can move to the next state where the files are "staged".  You can get to this state with the command "git add .", which will add all updated files to the staging area.  
  2.  Staged - This stage of a file is a snapshot of a file that is marked as "staged".  This means that the file is ready to be committed to the repository.  You can also make additional updates to the files but they won't necessarily make it into the commit unless you re-stage them.  You can get to the next stage of git with the command "git commit"
  3.  Commit - This stage is where the updates to the files have been made to the Git repository.  There is an associated version to the files in case the changes need to be rolled back.  Committing will only submit the changes that have previously been staged.  
* Write a handy cheatsheet of the commands you need to commit your changes?
  * "git add ." - This will take snapshots of all the files that have been updated and move them to a status of "staged".
  * "git commit -m <message>" - This command will commit the staged snapshots to the repository and attach the message that you have included.
* What is a pull request and how do you create and merge one?
  * A pull request is a way to suggest a merge of changes from a repository into the branch in question.  Once there is a commit or series of commits in the repository, you can push them to GitHub.  You can then submit a pull request to have the changes from the repository merged into the branch.     
* Why are pull requests preferred when working with teams?
  * Pull requests are a form of better change control.  This is much preferred to pushing changes directly to the master branch as it allows the changes to be reviewed.

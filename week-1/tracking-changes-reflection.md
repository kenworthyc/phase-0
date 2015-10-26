1.
Tracking and adding changes allows code to be constructed in a reviewable environment. When you're dealing with a system of interacting functions, knowing what changes happened when makes fixing problems far easier.

2.
A commit is a tracked change recorded by git.

3.
Commit messages should be written in the present imperative (in order to parse with git's messages in the shell), about 50 characters long. A more detailed message can and should be added below, demonstrating where and why the changes occurred, and how they differ from the previous version.

4.
The HEAD^ argument (in this context: `git reset --soft HEAD^`) affects a  file on the commit list. HEAD^ lets you change a file or files in the last commit. (HEAD refers to the current commit, HEAD^ to the last commit, HEAD~3 the 3rd commit from the current, &c.)

5.
The 3 stages of a git change are best practiced on a working branch separate from the master. The 3 stages consist of tracking files, staging changed files, and committing the finalized changes to your branch. Tracking happens as soon as a git sees a file in your working branch. Staging occurs when you add a modified file to the list intended for a commit. Finally, committing staged files will save the changes to git, and require a short message describing the changes and their purpose.

6.
`git checkout -b new-branch` -- creates new branch for changes
`git add .` --> stages all files in working directory to be committed
`git commit -m "commit note"` --> commits all staged files with commit message
`git push origin new-branch` --> uploads changes on branch to GitHub
`git status` --> lists all files, staged/unstaged/untracked

7.
A pull request is a message from a testing branch to the repo's master branch, asking for permission to merge. The pull request is initiated from the GitHub website; on the appropriate branch's page in the top right, there is a "Pull Request" button to click. After the changes are looked over and the merge is approved, a similar button on the branch's page, "Merge Branch", will appear; clicking it will merge that branch to the master.

8.
When many people collaborate on a project, a pull request notifies others that the changes on a given branch are completed for review. A pull request must be accepted with a merge (to master) command, and that means a quality-check stage is built directly into the production of a project. This makes managing the many fingers of a complex product just a bit safer and easier, since the project is organized into branches and its core function is protected by pull requests.

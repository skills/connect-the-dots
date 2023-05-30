<!--
  <<< Author notes: Step 2 >>>
  Start this step by acknowledging the previous step.
  Define terms and link to docs.github.com.
-->

## Step 2: Find a commit in history

_Thanks for the duplicate note :wave:_

An important part of version control is the ability to look into the past. By using `git blame`, and finding the story behind a commit, we're able to do more than _blame_ people for code. We're able to see the story around why a commit was made. What is the associated pull request? Who approved the pull request? What tests were run on that commit before it was merged?

The obvious reason to find things in history is to know about the history. With issues and pull requests, we see a more complete story about the history, not just the bare minimum.

### What's `git blame`?

`git blame` is a Git functionality that shows what revision and author last modified each line of a file. Information like who made a commit, when, and even why can be found this way. If you aren't sure who introduced certain changes to a file, you can use `git blame` to find out. While `git blame` sounds rather accusatory, this can be used to understand the context around decisions.

### What's a Secure Hash Algorithm (SHA)?

A SHA is a reference to a specific object. In this case, it's a reference to a commit. On GitHub, you can look at a specific commit to see the changes introduced, by whom, and if they were a part of a pull request.

### :keyboard: Activity: Find commit in history

1. Navigate to the Code tab of your repository
   - _Tip: you may have previously created your repository in a new tab_
2. Click `docs` to navigate into the `/docs` directory
3. Click `_sidebar.md` to view the file
4. On the top of the file, click **Blame** to see the details of the most recent revision
5. Click the commit message, `add sidebar to documentation` to see the commit details
6. Copy the first seven characters of the SHA (the first 7 characters of the 40 character hexadecimal string listed after `commit`)
7. Comment on issue #2 by adding the SHA from step 6 as a comment text and click on "Comment" button
8. Wait about 20 seconds then refresh this page (the one you're following instructions from). [GitHub Actions](https://docs.github.com/en/actions) will automatically update to the next step.

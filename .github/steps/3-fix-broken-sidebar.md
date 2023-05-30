<!--
  <<< Author notes: Step 3 >>>
  Start this step by acknowledging the previous step.
  Define terms and link to docs.github.com.
-->

## Step 3: Fix a broken sidebar

_Great job finding that commit :heart:_

Thanks for finding that commit! We now know that the sidebar was indeed added, and it was done in that commit. Let's see if we can dig a little deeper to find out if any planning or conversation, using comments, occurred around this change.

As we've already seen, conversations in issues and pull requests can reference other work, but the amount of context goes much further than crosslinks. Remember, Git is version control! For example, the commit that you found in the last step is connected with much more information such as:

- Who made the commit.
- What other changes were included.
- When the commit was made.
- Which pull request the commit was a part of.

The pull request is important because it goes beyond knowing when a commit happened. You can know _why_ a commit happened. Finding history is not about _blaming_ anyone, but about seeing the bigger picture. Why were decisions made? Who was involved? What were the build outputs and test results for each commit? Who requested changes, and who approved them?

### Finding a pull request from a commit

When you're looking at a commit on GitHub, you can see a lot of information. From this view, you can also find a link to the pull request in which the commit was created. We'll use this in the next step.

![screenshot of a view of a commit on GitHub, highlighting the link to the pull request](https://user-images.githubusercontent.com/16547949/67341250-3edbb480-f4fd-11e9-805a-6bce5a8ba2d1.png)

### :keyboard: Activity: Fix a broken sidebar

1. In the main branch [Edit the `docs/_sidebar.md` file](/docs/_sidebar.md).
2. Correct the spelling of the reference `(doc-references__.md)` on line 4 by changing it into `(doc-references.md)`.
3. Select or create a new branch `fix-sidebar` for this commit and start a pull request.
4. Make sure that **main** is selected for **base:** and **fix-sidebar** for **compare:**.
5. Using the **Assignees** section on the right side, assign yourself to the pull request.
6. In the PR comment add 'Closes #2' and autolink issue #2.
7. Click **Create pull request** and wait about 20 seconds.
8. Merge this pull request.
9. Delete the branch 'fix-sidebar'.
10. Wait about 20 seconds then refresh this page (the one you're following instructions from). [GitHub Actions](https://docs.github.com/en/actions) will automatically update to the next step.

<!--
  <<< Author notes: Header of the course >>>
  Include a 1280x640 image, course title in sentence case, and a concise description in emphasis.
  In your repository settings: enable template repository, add your 1280x640 social image, auto delete head branches.
  Add your open source license, GitHub uses Creative Commons Attribution 4.0 International.
-->

# Connect the Dots in a GitHub Repository

<!--
  <<< Author notes: Start of the course >>>
  Include start button, a note about Actions minutes,
  and tell the learner why they should take the course.
  Each step should be wrapped in <details>/<summary>, with an `id` set.
  The start <details> should have `open` as well.
  Do not use quotes on the <details> tag attributes.
-->

<!--step0-->

Have you ever worked in a repository with a lot of history? Perhaps you've had to track down related issues and pull requests in the past, or you've had to find who committed a particular change. If you've ever found yourself in any of these situations, you'll know how important it is to navigate your workspace.

- **Who is this for**: Developers, GitHub users, users new to Git, students, managers, and teams.
- **What you'll learn**: 
  - Find relevant issues and pull requests.
  - Search history to find context.
  - Make connections within GitHub to help others find things.
- **What you'll build**: Repository with existing commits, duplicated issues, and a content defect to be fixed.
- **Prerequisites**: Before you take this course, you may want to go through the [GitHub Quickstart](https://docs.github.com/en/get-started/quickstart) introduction on GitHub Docs and [Introduction to GitHub](https://github.com/skills/introduction-to-github) course on GitHub Skills. 
- **How long**: This course is three steps long and takes less than 15 min to complete.

## How to start this course

1. Above these instructions, right-click **Use this template** and open the link in a new tab.
   ![Use this template](https://user-images.githubusercontent.com/1221423/169618716-fb17528d-f332-4fc5-a11a-eaa23562665e.png)
2. In the new tab, follow the prompts to create a new repository.
   - Choose your personal account or an organization to host the repository.
   - We recommend creating a public repository. Private repositories will [use Actions minutes](https://docs.github.com/en/billing/managing-billing-for-github-actions/about-billing-for-github-actions).
   ![Create a new repository](https://user-images.githubusercontent.com/1221423/169618722-406dc508-add4-4074-83f0-c7a7ad87f6f3.png)
3. After your new repository is created, wait about 20 seconds, then refresh the page. Follow the step-by-step instructions in the new repository's README.

<!--endstep0-->

<!--
  <<< Author notes: Step 1 >>>
  Choose 3-5 steps for your course.
  The first step is always the hardest, so pick something easy!
  Link to docs.github.com for further explanations.
  Encourage users to open new tabs for steps!
-->

<details id=1>
<summary><h2>Step 1: Resolve Duplicate Issues</h2></summary>

GitHub has special capabilities to help reference other information on GitHub. For example, when you reference another issue or pull request by number, that number will be hyperlinked. At the same time, a cross-reference is created in the linked issue or pull request. This two-way reference helps people track the relationship of information across GitHub.

![a screenshot of an issue linking to a PR, and a PR with a cross-reference to the issue](https://user-images.githubusercontent.com/6351798/172456846-2daec570-08b0-4ffa-a7cb-41acc50b836e.png)

With collaboraration from multiple team members, sometimes issues can be duplicated. In the above example, the new issue `#8346` is a duplicate of a previous issue `#8249`. The cross-reference ability allows you to track these duplications and close issues when appropriate.
  
### Creating references

When you link to another issue, a reference within GitHub is automatically created. In fact, you don't even need to include the full link. If you were to type `#5` within a comment, that would turn into a link to issue or pull request number 5.

When you want to create a crosslink, start typing the title of an issue or pull request directly after you type the `#` symbol. GitHub will suggest issues or pull requests that will link to the right place. To learn even more, check out the [Autolinked References and URLs](https://docs.github.com/en/articles/autolinked-references-and-urls) article.

### :keyboard: Activity: Find and close the cross-linked issue

1. Navigate to the issue #1 (Welcome)
2. Type "Duplicate of #2" as a comment and close issue #1
3. Wait about 20 seconds then refresh this page for the next step.

</details>

<!--
  <<< Author notes: Step 2 >>>
  Start this step by acknowledging the previous step.
  Define terms and link to docs.github.com.
  TBD-step-2-notes.
-->

<details id=2>
<summary><h2>Step 2: Find a commit in history</h2></summary>

An important part of version control is the ability to look into the past. By using `git blame`, and finding the story behind a commit, we're able to do more than _blame_ people for code. We're able to see the story around why a commit was made. What is the associated pull request? Who approved the pull request? What tests were run on that commit before it was merged?

The obvious reason to find things in history is to know about the history. With issues and pull requests, we see a more complete story about about the history, not just just the bare minimum.

### What's `git blame`?

`git blame` is a Git functionality that shows what revision and author last modified each line of a file. Information like who made a commit, when, and even why can be found this way. If you aren't sure who introduced certain changes to a file, you can use `git blame` to find out. While `git blame` sounds rather accusatory, this can be used to understand the context around decisions.

### What's a Secure Hash Algorithm (SHA)?

A SHA is a reference to a specific object. In this case, it's a reference to a commit. On GitHub, you can look at a specific commit to see the changes introduced, by whom, and if they were a part of a pull request.

### :keyboard: Activity: Find commit in history

1. Navigate to the Code tab of your repository
   - _Tip: you may have previously created your repository in a new tab_
2. Click `docs` to navigate into the `/docs` directory
3. Click `_sidebar.md` to view the file
4. On the top right side of the file, click **Blame** to see the details of the most recent revision
5. Click the commit message, `add sidebar to documentation` to see the commit details
6. Copy the first seven characters of the SHA (the first 7 characters of the 40 character hexadecimal string listed after `commit`)
7. Comment on issue #2 by adding the SHA from step 6 as a comment text and click on "Comment" button
8. Wait about 20 seconds then refresh this page for the next step.

</details>

<!--
  <<< Author notes: Step 3 >>>
  Start this step by acknowledging the previous step.
  Define terms and link to docs.github.com.
  TBD-step-3-notes.
-->

<details id=3>
<summary><h2>Step 3: Fix a broken sidebar</h2></summary>

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
10. Refresh this page for the next step.

</details>

<!--
  <<< Author notes: Finish >>>
  Review what we learned, ask for feedback, provide next steps.
-->

<details id=X>
<summary><h2>Finish</h2></summary>

### Congratulations friend, you've completed this course!

<img src=https://octodex.github.com/images/collabocats.jpg alt=celebrate width=300 align=right>

In this course, you've learned a lot about finding and sharing information. Within a GitHub repository, you can find history about what changes were made, and more importantly, _why_ changes were made.

### What's next?

Check out these resources to learn more or get involved:
- Are you a student? Check out the [Student Developer Pack](https://education.github.com/pack).
- [Take another GitHub Skills course](https://github.com/skills).
- [Read the GitHub Getting Started docs](https://docs.github.com/en/get-started).
- To find projects to contribute to, check out [GitHub Explore](https://github.com/explore).

</details>

<!--
  <<< Author notes: Footer >>>
  Add a link to get support, GitHub status page, code of conduct, license link.
-->

---

Get help: [Post in our discussion board](https://github.com/skills/.github/discussions) &bull; [Review the GitHub status page](https://www.githubstatus.com/)

&copy; 2022 GitHub &bull; [Code of Conduct](https://www.contributor-covenant.org/version/2/1/code_of_conduct/code_of_conduct.md) &bull; [CC-BY-4.0 License](https://creativecommons.org/licenses/by/4.0/legalcode)

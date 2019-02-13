# portfolio-template
CS Portfoio Project

In this assignment you will create a new web page to host the APCS projects you work on this year. As you finish a project
you will update your portfolio project page with references to the new work (to be done later). For this assignment, you will create 
a short bio about yourself (that you are comfortable being available public on the internet). This will be done using HTML markup.

# Goals
1. Introduce you to the git workflow.
2. Introduce you to some basic HTML.
3. Create a central location to show off the work you've done for APCS.
4. Publish a live webpage

## Prerequisites
You will need an activated github account. (Should have already completed this step.)

## Steps
* You should have accepted the assignment at this point. Github will have already created the repository and linked it to your github account. 
* Clone the project on your laptop using the [steps below](#clone-your-project).
* Create a new file named `index.html` in the `cs-portfolio-username` directory that was created from your clone step.
* Update the new index.html file using `sublime` with the [template html below](#index-html-template) and customize it to your liking. Save changes.
* Perform git [check-in steps below](#git-check-in-steps) 
* Finally, update the github project to use github pages so that you can see it live on the interwebs! [setps below](#publish-your-project)

### Clone your project
* Open powershell and change directory, `cd`, to `c:\users\APCS\java`
* Perform a `git clone`, you obtain the clone address from your projects page.
** `git clone http:\\github.....`
** `cd` into the new directory git created, it should be something like `cs-portfolio-username` 
** This step only needs to be done ONCE. We need to set the `user.name` and `user.email` so git knows who has authored the changes. This needs to be done otherwise you won't be able to commit changes.
*** `git config user.emal "youremal@sccs-stu.net"`
*** `git config user.name "your_username"`


### index html template
```
<!DOCTYPE html>
<html>
  <head>
    <title>Title of the document</title>
  </head>
<body>
<p>Not Swett</p>

<p>
Interesting stuff about me....
</p>
<table>
  <tr><th> Project </th><th> Demo Link </th><th>Code Base Link </th></tr>
  <tr><td> Frist Proj TBD </td><td> N/A </td><td> N/A </td></tr>
</table>
</body>
</html>
```

### git check-in steps
Generally, the process looks like:
Add new files, commit those files for a check-in, push the check-in to the master copy.

Add\Commit\Push
These are the steps you'll follow for a basic git check-in:
* Everything new that you've created in the directory: 
** `git add .` -OR- `git add theSpecificfile.ext`
* Bundle the added files in a commit:
** `git commit -m "some message to tag with the check in"`
* Finally persist your changes to github:
** `git push`
*** (You should be prompted to enter your github username and password)


### Publish your project
Github makes it easy to "webify" your project. If you include a index.html in the root of your project directory then github will serve up the page like a real live boy, no Pinocchio stuff!
* Click on the settings for you project (this is usually up at the top right of your page with a little gears icon).
* Scroll down to the GitHub Pages section
* Select the source location, usually this is `master-branch`
* Once you select the source location, you will see a message that your site is published along with a URL to the site, e.g.
** Your site is published at https://jswett77.github.io/someproject/
* As you complete projects we can update this project to reflect the other programming projects you have completed.

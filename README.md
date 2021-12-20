
# shinytest

The goal of shinytest is to make sure you don't run into technical issues during your technical test.

Use this test repository to check that you can:

- fork and clone a github repository
- run the shiny app (very similar to the one you'll run in the technical task)
- get familiar with the functions used in the code if needed
- make and commit changes
- push your commits to the forked repository

This is the workflow which will be used during the technical task.


# Checklist

## 1. Fork and clone the repository

- Use the fork button on github to create a copy of `antoine-sachet/shinytest` on your own github account. The new repository should be `[your-account]/shinytest`.

- Clone the forked repository (`[your-account]/shinytest`) on your machine, so you can open the code and edit it. You can use the command line, some software with a GUI or even use Rstudio (`New project / from version control`).

At this stage, you should have all the code from the repository in a directory on your machine.

## 2. Run the app

You can run the app in Rstudio by clicking the "Run app" button, or manually using `shiny::runApp()`, or by sourcing the file `app.R`.

You'll need at least the following packages: `shiny`, `readr`, `dplyr`, `tidyr`, `ggplot2`. 

I recommend installing the whole tidyverse (which contains all the above except `shiny`) directly, with `install.packahes("tidyverse")`.

While you don't need to use the tidyverse (in particular `dplyr`) in any code you write, some of the code you read and run will use it.

Make sure you can run the app: you should see a drop-down menu and a simple bar plot which changes depending on the selection.

## 3. Get familiar with the code

Part of your technical test will rely on an app very similar to this one. It'd be a good idea to be familiar with everything used in the app.

## 4. Make a change and commit it

Make a change (could be anything) and commit it (using a descriptive commit message).

## 5. Push your change(s) to the your github repository

Since you own the forked repository that you cloned from, you will have write access to that remote repository.

Make sure you can push your commits to github. You may need to add a remote, setup credentials, etc. 

After pushing, please double-check you can see your changes on github.

Happy to help if you're stuck, just reach out!




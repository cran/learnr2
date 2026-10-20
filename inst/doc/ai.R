## ```{r}
## #| label: student-information-1
## #| echo: false
## learnr2::student_info()
## ```

## ```{r}
## #| label: your-answers-1
## #| echo: false
## learnr2::question(
##   "How many minutes, approximately, did it take you to complete this
##   tutorial? For example, an hour and a half would be 90 minutes.",
##   type = "reflection_editable",
##   validate = "integer"
## )
## ```
## 
## ```{r}
## #| label: your-answers-2
## #| echo: false
## learnr2::download_answers_button(filename_prefix = "<name>")
## ```

## ## Interacting with sites with `GET()`
## ###
## 
## In order to get data from an API, we use the **httr** package.
## The package is designed to imitate standard HTTP in R.
## Read more about HTTP [here](https://www.jmarshall.com/easy/http/).
## 
## ### Exercise 1

## ### Exercise 6
## 
## ```{r}
## #| label: definitions-6
## #| echo: false
## learnr2::question(
##   "Explain potential outcomes in about two sentences.",
##   learnr2::answer(
##     "This is where we place the correct answer. It will appear only after
##     students have submitted their own answers. Note that we do not need to
##     wrap the answer text by hand.",
##     correct = TRUE
##   ),
##   type = "reflection"
## )
## ```

## ### Exercise 7
## 
## <!-- XX: The instructions for this step go here, as prose. -->
## 
## ```{r}
## #| label: exercise-7
## #| echo: false
## learnr2::question(
##   'In the R Terminal, run show_file("analysis.qmd", chunk = "Last"). CP/CR.',
##   type = "reflection"
## )
## ```
## 
## ###
## 
## ```{r}
## #| label: exercise-7-answer
## #| echo: true
## # XX: our code, which both runs and is shown
## ```
## 
## ###
## 

## median_age <- get_acs(geography = "county",
##                       variables = "B01002_001",
##                       year = 2020)
## write_rds(median_age, "data/median_age.rds")
## 
## median_age <- read_rds("data/median_age.rds")

## fit_gauss <- brm(formula = biden ~ 1,
##                 data = poll_data,
##                 refresh = 0,
##                 silent = 2,
##                 seed = 9)
## write_rds(fit_gauss, "data/fit_gauss.rds")
## 
## fit_gauss <- read_rds("data/fit_gauss.rds")

## ![](images/example.png){width=90%}

## ### Exercise 1
## 
## You should be connected to a repo named `r4ds-1`. If you are not, create one and connect to it.
## 
## You need two R Terminals: one for running this tutorial and one for your exercises.
## 
## Create a new Quarto Document and save it as `analysis.qmd`. Add a YAML header at the top with a title (`"Analyzing the Billboard 100"`) and your name as author.
## 
## Render the document by running `quarto render` in the bash Terminal. Open the rendered `analysis.html` file in a new tab by right clicking it in the Explorer and selecting "Open with Live Server". When you run `quarto render` from now on that tab will be updated with the newly rendered file.
## 
## Create a `.gitignore` file with `analysis_files` on the first line and then a blank line. Commit and push.
## 
## If `show_file()` fails, it is probably because you have not yet loaded `library(learnr2)` in the R Terminal.
## 
## ```{r}
## #| label: introduction-1
## #| echo: false
## learnr2::question(
##   'In the R Terminal, run show_file(".gitignore"). CP/CR.',
##   type = "reflection"
## )
## ```
## 
## ###
## 
## <!-- XX: Insert a knowledge drop related to this project. -->
## 
## <!-- XX: By default, the next two questions just mention tidyverse. If there is more than one required library, you can just add those libraries to these steps, adjusting the grammar as needed. Or, you might have separate questions for each library, thereby providing more room for knowledge drops. -->

## ### Exercise 2
## 
## In your QMD, put `library(tidyverse)` in a new code chunk. Render the file by running `quarto render` in the bash Terminal.
## 
## Notice that the file does not look good because the code is visible and there are annoying messages. To take care of this, add `#| message: false` to remove all the messages in this setup chunk. Also, add the following to the YAML header to remove all code echoes from the HTML:
## 
## ```
## execute:
##   echo: false
## ```
## 
## Render the file again, using `quarto render`. Only the title and author should appear in the HTML.
## 
## ```{r}
## #| label: introduction-2
## #| echo: false
## learnr2::question(
##   'In the R Terminal, run show_file("analysis.qmd", chunk = "Last"). CP/CR.',
##   type = "reflection"
## )
## ```
## 
## ###
## 
## <!-- XX: Insert a knowledge drop related to this project. -->

## ### Exercise 3
## 
## Place your cursor in the QMD file on the `library(tidyverse)` line. Use `Cmd/Ctrl + Enter` to execute that line.
## 
## Note how this command causes `library(tidyverse)` to be copied down to the R Terminal and then executed.
## 
## ```{r}
## #| label: introduction-3
## #| echo: false
## learnr2::question("CP/CR.", type = "reflection")
## ```
## 
## ###
## 
## <!-- XX: Insert a knowledge drop related to this project. -->

## ### Exercise 4
## 
## <!-- XX: Delete this question if you do not make use of a `data` directory in this tutorial. -->
## 
## Create a `data` directory at the top level of the `XX` repo. This is a good place to store any data that you are working with.
## 
## ```{r}
## #| label: introduction-4
## #| echo: false
## learnr2::question("In the bash Terminal, run `ls`. CP/CR.", type = "reflection")
## ```
## 
## ###
## 
## You answer should look something like this:
## 
## ```
## $ ls
## README.md  analysis.html  analysis.qmd  analysis_files  data
## ```
## 
## ###
## 
## <!-- XX: If you have downloaded some data, then you might want to create the tibbles that you will use here. (Of course, you also need to create those tibbles in a top-of-file chunk so that our-answer chunks will run.) -->

## ## XX: First topic (use sentence case)
## ###
## 
## <!-- XX: Mention the packages/functions which you plan on covering in this Topic. Not everything mentioned here is specified in the Introduction/Summary, but everything in Introduction/Summary is referenced in one of these topic introductions, the space before Exercise 1 in each topic. -->

## ### Exercise 1
## 
## <!-- XX: In this question, "XX" is the full name of the file, like "cheeses.xlsx". -->
## 
## We begin by downloading XX directly from GitHub to the `data` directory using `download.file()`.
## 
## In the R Terminal, run:
## 
## ```
## download.file(
##   "https://github.com/PPBDS/ai.tutorials/raw/refs/heads/main/inst/tutorials/r4ds-2/data/cheeses.xlsx",
##   destfile = "data/XX"
## )
## ```
## 
## ```{r}
## #| label: cheese-1
## #| echo: false
## learnr2::question("CP/CR.", type = "reflection")
## ```
## 
## ###
## 
## <!-- XX: Insert a knowledge drop related to this project. -->

## ### Exercise 6
## 
## Prompt AI to generate R code that ... Add the code to your QMD in a new chunk. Place your cursor on the first line of the code and run `Cmd/Ctrl + Enter`.
## 
## ```{r}
## #| label: something-1
## #| echo: false
## learnr2::question(
##   'In the R Terminal, run show_file("analysis.qmd", chunk = "Last"). CP/CR.',
##   type = "reflection"
## )
## ```
## 
## ###
## 
## ```{r}
## #| label: something-1-answer
## #| echo: false
## # XX: Insert code that produces the correct result — a plot, summary statistics, or printed tibble. With echo: false, students see only the output; use echo: true when you want them to study the code too.
## ```
## 
## ###
## 
## <!-- XX: Insert a knowledge drop related to this project. -->

## ### Exercise 3
## 
## Before creating a plot, we need to ensure that your data matches ours. Run your pipe in the R Terminal and compare your output to the result shown below.
## 
## ```{r}
## #| label: xx-first-topic-3
## #| echo: false
## learnr2::question(
##   'In the R Terminal, run show_file("analysis.qmd", chunk = "Last"). CP/CR.',
##   type = "reflection"
## )
## ```
## 
## ###
## 
## ```{r}
## #| label: xx-first-topic-3-answer
## #| echo: false
## # XX: Insert code that prints the tibble students should have at this stage.
## ```
## 
## ###
## 
## <!-- XX: Insert a knowledge drop related to this project. -->

## ### Exercise 4
## 
## Within the latest code chunk, assign the result of the pipe to `x`.
## 
## Place your cursor on the line where the pipe is assigned to `x`, run `Cmd/Ctrl + Enter`, thus ensuring that the workspace also includes a copy of `x`.
## 
## ```{r}
## #| label: xx-first-topic-4
## #| echo: false
## learnr2::question("CP/CR.", type = "reflection")
## ```
## 
## <!-- XX: Show x here. -->
## 
## ###
## 
## <!-- XX: Insert a knowledge drop related to this project. -->

## ### Exercise 5
## 
## Add the option `#| cache: true` to the chunk which creates `x`. This causes Quarto to cache the results of the chunk. The next time you render your QMD, as long as you have not changed the code, Quarto will just load up the saved object.
## 
## Run `quarto render` in the bash Terminal. Rendering creates an `analysis_cache` directory next to the QMD.
## 
## ```{r}
## #| label: xx-first-topic-5
## #| echo: false
## learnr2::question("In the bash Terminal, run `ls`. CP/CR.", type = "reflection")
## ```
## 
## ###
## 
## <!-- XX: Insert a knowledge drop related to this project. -->

## ### Exercise 6
## 
## Add `analysis_cache` to the `.gitignore`. The contents of the cache directory do not belong on GitHub.
## 
## ```{r}
## #| label: xx-first-topic-6
## #| echo: false
## learnr2::question(
##   'In the R Terminal, run show_file(".gitignore"). CP/CR.',
##   type = "reflection"
## )
## ```
## 
## ###
## 
## <!-- XX: Insert a knowledge drop related to this project. -->

## ### Exercise 7
## 
## Within the R Terminal, type `x`, which we previously assigned to a pipe and ran in the R Terminal. Hit `Enter`.
## 
## ```{r}
## #| label: xx-first-topic-7
## #| echo: false
## learnr2::question("CP/CR.", type = "reflection")
## ```
## 
## ###
## 
## Our result:
## 
## ```{r}
## #| label: xx-first-topic-7-answer
## #| echo: false
## # x
## ```
## 
## ###
## 
## <!-- XX: Insert a knowledge drop related to this project. -->

## ### Exercise 8
## 
## Ask AI to generate R code that uses `x` to plot a basic graph showing XX ... Mention you want to use the data from `x`. If using a chat interface copy/paste the `x` you ran in the R Terminal with the resulting tibble. You only need the top 3 lines, mainly to include column names.
## 
## Consider adding a title, subtitle, and caption. If axis labels would be useful, add them, but if unnecessary, don't bother. Don't assign the code for the plot to any variable. Put the plot code in a new code chunk. Run `quarto render` to ensure that everything works. Make your plot look nice.
## 
## Take a screenshot of the plot in your rendered page and paste it below.
## 
## ```{r}
## #| label: xx-first-topic-8
## #| echo: false
## learnr2::question(
##   "Paste a screenshot of your plot.",
##   type = "reflection",
##   allow_image = TRUE
## )
## ```
## 
## ###
## 
## Our result:
## 
## ```{r}
## #| label: xx-first-topic-8-answer
## #| echo: false
## # XX: Insert plotting code. With echo: false, students see only the plot, not this code. Make sure the plot has a subtitle that states the take-away message and uses clean, concise code.
## ```
## 
## ###
## 
## <!-- XX: Insert a knowledge drop related to this project. -->

## ## Summary
## ###
## 
## <!-- XX: The exact same two to four sentences about the main packages/functions used in the Introduction, but written here in the past tense. You made a promise and you kept it.  -->

## ### Exercise 1
## 
## Run `quarto render` to ensure that everything works.  The resulting HTML page should be attractive, showing clean versions of your plot(s).
## 
## ```{r}
## #| label: summary-1
## #| echo: false
## learnr2::question(
##   'At the R Terminal, run show_file("analysis.qmd"). CP/CR.',
##   type = "reflection"
## )
## ```
## 
## ###
## 
## <!-- XX: Insert a knowledge drop related to this project. -->

## ### Exercise 2
## 
## Publish your rendered QMD to GitHub Pages. In the bash Terminal --- not the R Terminal! --- run:
## 
## ```
## quarto publish gh-pages analysis.qmd
## ```
## 
## ```{r}
## #| label: summary-2
## #| echo: false
## learnr2::question("Copy/paste the resulting URL below.", type = "reflection")
## ```
## 
## ###
## 
## <!-- XX: Insert a knowledge drop related to this project. -->
## 

## ### Exercise 3
## 
## Commit and push all your files.
## 
## ```{r}
## #| label: summary-3
## #| echo: false
## learnr2::question("Copy/paste the URL to your GitHub repo.", type = "reflection")
## ```
## 
## ###
## 
## <!-- XX: The tutorial is now over. Add any necessary acknowledgements and/or provide a link to further high quality readings, ideally readings which you mentioned in at least one knowledge drop above. -->

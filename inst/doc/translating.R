## {{</* include _extensions/r-wasm/live/_knitr.qmd */>}}

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

## ```{r exercise-1, exercise = TRUE}
## ```

## ```{webr}
## #| label: functions-and-packages-2
## #| exercise: ex_load_tidyverse
## #| persist: true
## ______
## glimpse(mtcars)
## ```

## ```{webr}
## #| label: analysis-3
## #| setup: true
## #| exercise: ex_summarise
## library(dplyr)
## flights <- nycflights13::flights
## ```

## ::: { .hint exercise="ex_load_tidyverse" }
## Some hint text, or an inline code sample.
## :::

## ::: { .solution exercise="ex_load_tidyverse" }
## ```r
## library(tidyverse)
## glimpse(mtcars)
## ```
## :::

## ```{webr}
## #| label: analysis-4
## #| exercise: ex_load_tidyverse
## #| solution: true
## library(tidyverse)
## glimpse(mtcars)
## ```

#' @title Count and calculate proportions in group(s)
#'
#' @description Summarizes the count and proportion of observations that meet one or more conditions within given group(s).
#'
#' @param .data A data frame, data frame extension (e.g. a tibble), or a lazy data frame (e.g. from \code{dbplyr} or \code{dtplyr}).
#' @param ... Variables to group by.
#' @param cond Short for "condition". Expressions that return a logical value. Expressions are defined in terms of variables in .data and multiple expressions, if included, must be combined with the & operator. Only rows for which all conditions return \code{TRUE} are evaluated.
#'
#' @return A new data frame summarizing the groups, total number of observations in each group, count of observations that return \code{TRUE} for the condition(s) and proportion (%) of observations that return \code{TRUE} for the condition(s).
#' @import dplyr
#' @export
#'
#' @examples
#' group_count_and_prop(dplyr::starwars, gender, cond = height > 150 & mass > 50)
#' group_count_and_prop(mtcars, cyl, cond = mpg > 20)

group_count_and_prop <- function(.data, ..., cond) {
  .data |> dplyr::group_by(...) |>
    dplyr::summarize(n = n(),
              count = length(which({{ cond }})),
              prop = (length(which({{ cond }}))/n())*100)
}

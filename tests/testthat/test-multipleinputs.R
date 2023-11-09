test_that("accepts multiple inputs for single arg", {
  expect_identical(object = group_count_and_prop(dplyr::storms,
                                                 year, name,
                                                 cond = category > 1),
                   expected = dplyr::storms |>
                     group_by(year, name) |>
                     summarize(n = n(),
                               count = length(which(category > 1)),
                               prop = (length(which(category > 1))/n())*100))

  expect_identical(object = group_count_and_prop(dplyr::storms,
                                                 category,
                                                 cond = wind > 50 & year == "2021"),
                   expected = dplyr::storms |>
                     group_by(category) |>
                     summarize(n = n(),
                               count = length(which(wind > 50 & year == "2021")),
                               prop = (length(which(wind > 50 & year == "2021"))/n())*100))
})

test_that("error for invalid arg inputs", {
  expect_error(object = group_count_and_prop(starwars,
                                             notfound,
                                             cond = sex == "male"))
  
  expect_error(object = group_count_and_prop(mtcars,
                                             cyl,
                                             cond = "notlogical"))
})

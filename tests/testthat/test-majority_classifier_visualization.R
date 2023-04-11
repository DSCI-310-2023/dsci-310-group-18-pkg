test_that("X-axis label is not the same!", {
  plot <- majority_classifier_vis_function(majority_classifier)
  expect_identical(plot$labels$x, 'Heart disease degree of severity')})
test_that("Y-axis label is not the same!", {
  plot <- majority_classifier_vis_function(majority_classifier)
  expect_identical(plot$labels$y, 'Percent of outcomes \n in training dataset')})


test_that("Y axis is not what we expected", {
  expect_equivalent(knn_visualization(heart_data_accuracies)$labels$y, "Accuracy Estimate")})

test_that("X axis is not what we expected", {
  expect_equivalent(knn_visualization(heart_data_accuracies)$labels$x, "Neighbors")
})

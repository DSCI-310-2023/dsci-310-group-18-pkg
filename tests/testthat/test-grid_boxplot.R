# Check-expects
test_that("First boxplot check-expect is not the same!", {
  age <- 0:10
  max_heart_rate <- 0:10
  diagnosis_f <- factor(c(1,2,3,4,0,1,2,3,4,0,1))
  heart_data <- data.frame(max_heart_rate, age, diagnosis_f)
  boxplot_age <- grid_boxplot(heart_data, diagnosis_f, age, "Age (years)", "A. Boxplot of degree of heart \n disease in relation to patient's \nage")

  testthat::expect_equivalent(boxplot_age$labels$y, "Age (years)")
})

test_that("Second boxplot check-expect is not the same!", {
  age <- 0:10
  max_heart_rate <- 0:10
  diagnosis_f <- factor(c(1,2,3,4,0,1,2,3,4,0,1))
  heart_data <- data.frame(max_heart_rate, age, diagnosis_f)
  boxplot_max_heart_rate <- grid_boxplot(heart_data, diagnosis_f, max_heart_rate, "Maximum heart rate (BPM)", "C. Boxplot of degree of heart \ndisease in relation to patient's \nmaximum heart rate")

  testthat::expect_equivalent(boxplot_max_heart_rate$labels$y, "Maximum heart rate (BPM)")
})

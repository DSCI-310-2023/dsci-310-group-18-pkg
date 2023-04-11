#' Make a grid boxplot
#'
#' @param data The dataset we're using.
#' @param xAxis The X axis parameter, must be factor type
#' @param yAxis The Y Axis parameter, must be numeric type
#' @param yLabel The label for the Y Axis.
#' @param titleLabel The label for the title.
#'
#' @return A visualization of a boxplot.
#' @export
#'
#' @examples
#' grid_boxplot(mtcars, diagnosis_f, age, "Age (years)",
#' "A. Boxplot of degree of heart \n disease in relation to patient's \nage")
grid_boxplot <- function(data, xAxis, yAxis, yLabel, titleLabel){
  boxplot_age <- ggplot2::ggplot(data, ggplot2::aes(x = xAxis, y= {{yAxis}})) +
    ggplot2::geom_boxplot(color="#033291", fill="#b0c8f7", alpha=0.2) +
    ggplot2::labs(x="Degree of heart disease", y=yLabel) +
    ggplot2::ggtitle(titleLabel) +
    ggplot2::theme(text = ggplot2::element_text(size = 12))
}


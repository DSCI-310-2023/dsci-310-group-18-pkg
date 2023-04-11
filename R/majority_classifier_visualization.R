#' majority_classifier_vis_function
#'
#' @param data Data frame used for visualization.
#' @param hGraph Height of the graph.
#' @param wGraph Width of the graph.
#' @param textSize Size of the text.
#' @param colWidth The width of the Column.
#' @param xLabel Label for the x axis.
#' @param yLabel Label for the y axis.
#' @param titleLabel Label for the title.
#'
#' @return Visualization for Neighbors vs Accuracy Estimate.
#' @export
#'
#' @examples
#' majority_classifier_vis_function(majority_classifier)
majority_classifier_vis_function <- function(data,
                                             hGraph = 5,
                                             wGraph = 7,
                                             textSize = 20,
                                             colWidth = 0.5,
                                             xLabel = 'Heart disease degree of severity',
                                             yLabel = 'Percent of outcomes \n in training dataset',
                                             titleLabel = 'Label proportions of classifier in dataset'){
  options(repr.plot.height = hGraph, repr.plot_width = wGraph)
  total_rows <- nrow(training_split_new)
  majority_classifier_vis <- data |>
    dplyr::mutate(percent_outcomes=percent_outcomes/100) |>
    ggplot2::ggplot(ggplot2::aes(x = stats::reorder(diagnosis_f,-percent_outcomes), y=percent_outcomes)) +
    ggplot2::geom_col(width = colWidth, fill = '#4362d1') +
    ggplot2::labs(x = xLabel,
         y = yLabel,
         title = titleLabel) +
    ggplot2::theme(text = ggplot2::element_text(size = textSize))+
    ggplot2::scale_y_continuous(labels=scales::percent, sec.axis=ggplot2::sec_axis(~.*total_rows,name="Count"))
}

#' knn Visualization
#'
#' @param data Data frame used for visualization.
#'
#' @return Visualization for Neighbors vs Accuracy Estimate.
#' @export
#'
#' @examples
#' knn_visualization(heart_data_accuracies)
knn_visualization <- function(data) {
  accuracy_versus_k <- ggplot2::ggplot(data, ggplot2::aes(x = neighbors, y = mean))+
    ggplot2::geom_point() +
    ggplot2::geom_line() +
    ggplot2::labs(x = "Neighbors", y = "Accuracy Estimate") +
    ggplot2::ggtitle("Plot of estimated accuracy versus the number of neighbors") +
    ggplot2::theme(text = ggplot2::element_text(size = 22)) +
    ggplot2::ylim(0.2, 0.8) +
    ggplot2::scale_x_continuous(breaks = 1:21)
  accuracy_versus_k
}

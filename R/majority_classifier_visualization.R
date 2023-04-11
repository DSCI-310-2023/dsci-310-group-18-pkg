majority_classifier_vis_function <- function(data, hGraph = 5, wGraph = 7, textSize = 20, colWidth = 0.5, xLabel = 'Heart disease degree of severity', yLabel = 'Percent of outcomes \n in training dataset', titleLabel = 'Label proportions of classifier in dataset'){
  options(repr.plot.height = hGraph, repr.plot_width = wGraph)
  total_rows <- nrow(readr::read_csv('data/modelling/training_split_new.csv'))
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

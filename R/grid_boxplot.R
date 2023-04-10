library(ggplot2)
grid_boxplot <- function(data, yAxis, yLabel, titleLabel){
  boxplot_age <- ggplot(data, aes(x=diagnosis_f, y= {{yAxis}})) +
    geom_boxplot(color="#033291", fill="#b0c8f7", alpha=0.2) +
    labs(x="Degree of heart disease", y=yLabel) +
    ggtitle(titleLabel) +
    theme(text = element_text(size = 12))
}


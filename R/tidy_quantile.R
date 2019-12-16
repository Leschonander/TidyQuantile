#' Tidy Quantile
#'
#' This function takes in a variable from a tibble, and returns a quantile.
#'
#' @param data Dataframe/tibble which the variable is contained in
#' @param var What variable to make the quantiles from
#' @param length.out How many quantiles to create
#' @return A quantile
#' @export
tidy_quantile <- function(data, var, length.out){
  data %>%
    pull({{ var }}) %>%
    quantile(probs = seq(0, 1, length.out = length.out))
}

#' Tidy Quantile St
#'
#' This function loads into sf objects which are then merged to
#' create quantiles.
#'
#' @param x The first sf Dataframe/tibble which the variable is contained in
#' @param y The second sf Dataframe/tibble which the variable is contained in
#' @param var What variable to make the quantiles from
#' @param length.out How many quantiles to create
#' @return A quantile
#' @export
tidy_quantile_st <- function(x, y, var, length.out){
  st_join(x, y) %>%
    st_set_geometry(NULL) %>%
    group_by({{ var }}) %>%
    tally() %>%
    pull(n) %>%
    quantile(probs = seq(0, 1, length.out = length.out))
}

#' Tidy Talley st
#'
#' This functcion returns a count for a given grouping variable and two sf objects that are
#' to be merged.
#'
#' @param x The first sf Dataframe/tibble which the variable is contained in
#' @param y The second sf Dataframe/tibble which the variable is contained in
#' @param var What variable to make the quantiles from
#' @param length.out How many quantiles to create
#' @return A quantile
#' @export
tidy_tally_st <- function(x, y, by){
  st_join(x, y) %>%
    st_set_geometry(NULL) %>%
    group_by({{ by }}) %>%
    tally()
}

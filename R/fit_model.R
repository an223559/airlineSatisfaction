#' Fit a logistic regression model for airline passenger satisfaction
#'
#' @param data A data frame containing the airline passenger data
#' @param predictors A character vector of predictor variable names
#' @return A fitted glm object with binomial family
#' @export
#' @importFrom stats as.formula glm binomial
#' @examples
#' fit_satisfaction_model(airline, c("online_boarding", "leg_room_service"))
fit_satisfaction_model <- function(data, predictors) {
  formula <- stats::as.formula(
    paste("satisfied_or_no ~", paste(predictors, collapse = " + "))
  )
  stats::glm(formula, data = data, family = stats::binomial())
}

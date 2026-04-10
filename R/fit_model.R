#' Fit a logistic regression model for airline passenger satisfaction
#'
#' @param data A data frame containing the airline passenger data
#' @param predictors A character vector of predictor variable names
#' @return A fitted glm object with binomial family
#' @export
#' @examples
#' fit_satisfaction_model(airline, c("online_boarding", "leg_room_service"))
fit_satisfaction_model <- function(data, predictors) {
  formula <- as.formula(
    paste("satisfied_or_no ~", paste(predictors, collapse = " + "))
  )
  glm(formula, data = data, family = binomial)
}

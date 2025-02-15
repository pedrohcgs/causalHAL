% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hal_cate_partially_linear.R
\name{fit_hal_cate_partially_linear}
\alias{fit_hal_cate_partially_linear}
\title{Doubly-robust nonparametric superefficient estimation of the partial conditional average treatment effect
using the highly adaptive lasso R-learner
with adaptive MARS-based variable and interaction screening.}
\usage{
fit_hal_cate_partially_linear(
  W,
  A,
  Y,
  weights = NULL,
  pi.hat = NULL,
  m.hat = NULL,
  formula_cate = NULL,
  max_degree_cate = 1,
  smoothness_orders_cate = 1,
  num_knots_cate = c(50),
  sl3_Lrnr_pi.hat = NULL,
  sl3_Lrnr_m.hat = NULL,
  verbose = TRUE,
  ...
)
}
\arguments{
\item{W}{A \code{numeric} \code{matrix} of covariate values.}

\item{A}{A \code{numeric} vector of treatment values. May be binary or continuous.}

\item{Y}{A \code{numeric} vector of outcome values.}

\item{weights}{(Optional) A \code{numeric} vector of observation weights.}

\item{pi.hat}{A \code{numeric} vector containing estimates of the propensity score `pi(W) := P(A=1 | W)`.}

\item{m.hat}{A \code{numeric} vector containing estimates of the treatment-marginalized outcome regression `m(W) := E[Y | W]`.}

\item{formula_cate}{(Optional) A \code{hal9001}-formatted \code{formula} object for the CATE/tau to be passed to \code{\link[hal9001]{formula_hal}}.
By default the CATE model is learned data-adaptively using MARS-based screening and HAL. See documentation for \code{\link[hal9001]{fit_hal}}.}

\item{max_degree_cate}{(Optional) Same as \code{max_degree} but for CATE model.  See documentation for \code{\link[hal9001]{fit_hal}}.}

\item{smoothness_orders_cate}{(Optional) Same as \code{smoothness_orders} but for CATE model.  See documentation for \code{\link[hal9001]{fit_hal}}.}

\item{num_knots_cate}{(Optional) Same as \code{num_knots} but for CATE model.  See documentation for \code{\link[hal9001]{fit_hal}}.}

\item{...}{Other arguments to be passed to \code{\link[hal9001]{fit_hal}}.}
}
\description{
This method estimates the conditional average treatment effect function `w - > tau(w) := E[Y | A=1, W =w] - E[Y | A=0, W = w]`
under the regression model `E[Y | A, W] = E[Y | A=0, W] + A * tau(W)`.
}

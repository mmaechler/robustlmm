\name{plot.rlmerMod}
\alias{plot.rlmerMod}
\alias{print.rlmerMod_plots}
\title{Plot Method for "rlmerMod" objects.}
\usage{
  \method{plot}{rlmerMod} (x, y = NULL, which = 1:4, 
    title = c("Fitted Values vs. Residuals", 
              "Normal Q-Q vs. Residuals", 
              "Normal Q-Q vs. Random Effects",
              "Scatterplot of Random Effects for Group \"\%s\""),
    multiply.weights = FALSE, ...)

  \method{print}{rlmerMod_plots} (x,
    ask = interactive() & length(x) > 1, ...)
}
\arguments{
  \item{x}{an object as created by \code{rlmer} or
  \code{rlmer}; or an object as created by
  \code{plot.rlmerMod}}

  \item{y}{currently ignored.}

  \item{which}{integer number between 1 and 4 to specify
  which plot is desired.}

  \item{title}{Titles for the different plots. The fourth
  item can be a format string passed to \code{sprintf} to
  add the name of the current group.}

  \item{multiply.weights}{multiply the residuals / random
  effects with the robustness weights when producing the
  Q-Q plots.}

  \item{ask}{waits for user input before displaying each
  plot.}

  \item{...}{currently ignored.}
}
\value{
  a list of plots of class \code{\link{ggplot}} that can be
  used for further modification before plotting (using
  \code{print}).
}
\description{
  Diagnostic plots for objects of class \code{rlmerMod} and
  \code{lmerMod}.
}
\details{
  The robustness weights for estimating the fixed and
  random effects are used in the plots, e.g., the ones
  returned by \code{getME(object, "w_e")} and
  \code{getME(object, "w_b")}.
}
\examples{
\dontrun{
  rfm <- rlmer(Yield ~ (1|Batch), Dyestuff)
  plot(rfm)
  fm <- lmer(Reaction ~ Days + (Days|Subject), sleepstudy)
  plot.rlmerMod(fm)
}
}
\seealso{
  \code{\link{getME}}, \code{\link[ggplot2]{ggplot}}
}


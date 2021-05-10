#'  Forest Growth
#' @param time  period of growth
#' @param cc_threshold (kg C)
#' @param r exponential growth rate before canopy closure
#' @param K carrying capacity (kg C)
#' @param g linear growth rate after canopy closure (kg/year)
#' @param C size of forest (kg C)
#' @return 
#'

forest_growth = function(time, parms) {
  
  # compute rate of change of forest size
  dforest_growth = parms$
  
  # set rate of change to 0 if C is greater than carrying capacity (K)
  dforest_growth = ifelse(C = parms$K, 0, dforest_growth)
  return(list(dforest_growth))
}
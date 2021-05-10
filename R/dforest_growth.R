#'  Forest Growth
#' @param time  period of growth
#' @param cc_threshold (kg C)
#' @param r exponential growth rate before canopy closure
#' @param K carrying capacity (kg C)
#' @param g linear growth rate after canopy closure (kg/year)
#' @param C size of forest (kg C)
#' @return forest growth rate
#' @author Claudia Flores, Bret Folger, and Julia Dagum

forest_growth = function(time, C, parms) {
  
  # compute rate of change of forest size
  dforest_growth = C * exp(parms$r*time)
  
  # set rate of change to 0 if C is greater than carrying capacity (K) or for forest where carbon is  at or above the threshold canopy closure then set to g
  dforest_growth = ifelse(C = parms$K, 0, ifelse(C >= parms$cc_threshold, parms$g, dforest_growth))
  return(list(dforest_growth))
}



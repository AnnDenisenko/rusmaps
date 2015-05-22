#' It's square a number
#'
#' It's square a number
#'
#' Build map with railways
#' @param mo_f a number which will be squared
#' @return The square of x
#' @export
#' @examples
#' square(-1)
plus_rail <- function(mo_f){
  
  r <- ggplot(mo_f, aes(long, lat, group = group, fill=NAME)) +  
  
  geom_polygon(data = mo_f, aes(long,lat), 
               fill=NA, 
               color = "black",
               size=0.1)+ 
  geom_polygon(data = rail_f, aes(long,lat), 
               fill=NA, 
               color = "green",
               size=0.1)+ 
  
  #geom_text(data=cnames, aes(long, lat, group = group, label = NAME), size=2) +
  
  theme(axis.line=element_blank(),   
        axis.text.x=element_blank(), 
        axis.text.y=element_blank(),
        axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),
        legend.position="none",
        panel.background=element_blank())

  return(r)
}

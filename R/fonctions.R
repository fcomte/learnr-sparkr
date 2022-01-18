#' Lance l'atelier
#'
#' @param file le file Rmd du tutoriel
#' @param port le port sur lequel on envoie la page web
#' @param host l'url sur laquelle on publie
#'
#' @export
launch_workshop <- function(file, port = 8181, host = 'localhost') {
  rmarkdown::run(file = file,
                   shiny_args = list(host = host, port = port, launch.browser = FALSE))
}
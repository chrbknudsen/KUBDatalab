customize_lesson <- function(){
  if(dir.exists(".github/workflows")){
    destination <- ".github/workflows/secondary_flow.yaml"
    filsti <- system.file("extdata", "secondary_flow.yaml", package = "KUBDatalab")
    if (file.exists(filsti)) {
      # Kopier filen til korrekt destination
      succes <- file.copy(filsti, destination)

      if (succes) {
        cat("Fil kopieret til :", destination, "\n")
      } else {
        stop("Filen kunne ikke kopieres.")
      }
    } else {
      stop("Filen blev ikke fundet i pakken.")
  }
  }
}


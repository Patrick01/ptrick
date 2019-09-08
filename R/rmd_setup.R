rmd_setup <- function(dir_name) {
  fs::dir_create(dir_name)
  fs::dir_create(file.path(dir_name, "data"))
  fs::file_move(system.file("rmd_template.Rmd", package = "ptrick"),
                file.path(dir_name, "rmd_template.Rmd"))
}


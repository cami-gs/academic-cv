html_file <- rmarkdown::render("cv.Rmd")
pagedown::chrome_print(html_file, output = "Camila_Gonzalez_Silva_CV.pdf")

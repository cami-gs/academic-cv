#!/usr/bin/env Rscript

# Render CV to HTML and PDF
# Expected project structure:
# .
# ├── cv.Rmd
# ├── styles.css
# ├── render.R
# ├── data/
# └── Camila_Gonzalez_Silva_CV.pdf

suppressPackageStartupMessages({
  library(rmarkdown)
  library(pagedown)
})

input_file <- "cv.Rmd"
html_file  <- "Camila_Gonzalez_Silva_CV.html"
pdf_file   <- "Camila_Gonzalez_Silva_CV.pdf"

if (!file.exists(input_file)) {
  stop("Could not find ", input_file, call. = FALSE)
}

message("Rendering HTML from ", input_file, " ...")
rmarkdown::render(
  input = input_file,
  output_file = html_file,
  quiet = FALSE,
  envir = new.env(parent = globalenv())
)

message("Rendering PDF from ", html_file, " ...")
pagedown::chrome_print(
  input = html_file,
  output = pdf_file,
  verbose = 1
)

message("Done.")
message("HTML: ", normalizePath(html_file))
message("PDF : ", normalizePath(pdf_file))

# Academic CV in R with `pagedown`

This repository contains the source files and final output of my academic CV, built in **R** using **R Markdown** and **`pagedown`**.

The project is organized so that the CV can be **updated, rendered, and exported reproducibly**. Content, layout, and styling are separated to make maintenance easier and to allow future adaptations for other academic applications.

---

## Repository structure

```text
.
├── Camila_Gonzalez_Silva_CV.pdf
├── cv.Rmd
├── styles.css
├── render.R
└── data/
    ├── info.yml
    ├── education.csv
    ├── research_experience.csv
    ├── teaching_experience.csv
    ├── collective_engagement.csv
    ├── publications.csv
    ├── languages.csv
    └── skills.yml
```

### Main files

- **`cv.Rmd`**: main source file of the CV.
- **`styles.css`**: stylesheet controlling typography, spacing, and page layout.
- **`render.R`**: script used to render the CV to HTML and PDF.
- **`Camila_Gonzalez_Silva_CV.pdf`**: final exported PDF version.
- **`data/`**: structured content files used to populate the CV.

---

## How it works

The CV is generated from structured data files stored in `data/`.

- General information and short text blocks are stored in **YAML** files (`info.yml`, `skills.yml`).
- Chronological entries are stored in **CSV** files (`education.csv`, `research_experience.csv`, etc.).
- The `cv.Rmd` file reads those data files and formats them into a printable CV.
- The final HTML is then exported to PDF using `pagedown`.

This structure makes it possible to update the CV by editing only the relevant data file, without changing the whole document layout.

---

## Requirements

To render the CV locally, you need:

- **R**
- **RStudio** (recommended)
- the following R packages:
  - `pagedown`
  - `rmarkdown`
  - `yaml`
  - `readr`
- **Google Chrome** or **Chromium**, required by `pagedown::chrome_print()` to generate the PDF

---

## Installation

Install the required packages in R:

```r
install.packages(c("pagedown", "rmarkdown", "yaml", "readr"))
```

---

## How to render the CV

### 1. Open the project folder in RStudio

Make sure all files are in the same working directory.

### 2. Render the HTML version

Run:

```r
rmarkdown::render("cv.Rmd")
```

This will generate `cv.html`.

### 3. Export the PDF version

Run:

```r
pagedown::chrome_print("cv.html", output = "Camila_Gonzalez_Silva_CV.pdf")
```

This will generate the final PDF.

### 4. Alternative: use the render script

You can also run:

```r
source("render.R")
```

if `render.R` contains the full render workflow.

---

## How to update the CV

The project is designed so that updates can be made directly in the data files.

### Update personal information
Edit:

- `data/info.yml`

This file contains:
- name
- location
- contact details
- academic orientation
- research interests

### Update education
Edit:

- `data/education.csv`

### Update research experience
Edit:

- `data/research_experience.csv`

### Update teaching experience
Edit:

- `data/teaching_experience.csv`

### Update collective and community-based work
Edit:

- `data/collective_engagement.csv`

### Update publications
Edit:

- `data/publications.csv`

### Update languages
Edit:

- `data/languages.csv`

### Update methods and technical skills
Edit:

- `data/skills.yml`

After any change, rerun the render commands.

---

## Notes on formatting

This CV was designed to be:

- **academically appropriate**
- **printable in A4**
- **compact and legible**
- **suitable for academic applications**

The visual layout is controlled through `styles.css`, including:

- page margins
- font settings
- section hierarchy
- spacing between entries
- page numbering

The current version uses **EB Garamond** as the main typeface.

---

## Reproducibility

This repository is intentionally structured to keep:

- **content** separate from
- **document logic** and
- **visual styling**

This makes the CV easier to:
- update,
- review,
- reuse for different calls or applications,
- and version-control through GitHub.

---

## Output

Final PDF version:

[Download the academic CV (PDF)](./Camila_Gonzalez_Silva_CV.pdf)

---

## Contact

- **GitHub**: [cami-gs](https://github.com/cami-gs)
- **LinkedIn**: [cami-gs](https://www.linkedin.com/in/cami-gs/)
- **ORCID**: [0009-0001-7562-7321](https://orcid.org/0009-0001-7562-7321)
```

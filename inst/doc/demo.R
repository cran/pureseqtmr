## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(pureseqtmr)
library(testthat)
library(knitr)

## -----------------------------------------------------------------------------
if (is_pureseqtm_installed()) {
  get_example_filenames()
}

## -----------------------------------------------------------------------------
if (is_pureseqtm_installed()) {
  fasta_filename <- get_example_filename("1bhaA.fasta")
  head(readLines(fasta_filename))
}

## -----------------------------------------------------------------------------
if (is_pureseqtm_installed()) {
  topology <- predict_topology(fasta_filename)
  kable(topology)
}

## ----fig.width=7--------------------------------------------------------------
if (is_pureseqtm_installed()) {
  plot_topology(topology)
}

## -----------------------------------------------------------------------------
fasta_filename <- system.file(
  "extdata",
  "UP000464024.fasta",
  package = "pureseqtmr"
)
expect_true(file.exists(fasta_filename))

## -----------------------------------------------------------------------------
head(readLines(fasta_filename))

## -----------------------------------------------------------------------------
if (is_pureseqtm_installed()) {
  topology <- predict_topology(fasta_filename)
}

## -----------------------------------------------------------------------------
if (is_pureseqtm_installed()) {
  topology$name <- stringr::str_match(
    string = topology$name,
    pattern = "..\\|.*\\|(.*)_SARS2"
  )[, 2]
}

## ----fig.width=7--------------------------------------------------------------
if (is_pureseqtm_installed()) {
  plot_topology(topology)
}

## -----------------------------------------------------------------------------
if (is_pureseqtm_installed()) {
  kable(tally_tmhs(topology))
}


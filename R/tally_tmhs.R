#' Count the number of transmembrane helices in a topology
#' @inheritParams default_params_doc
#' @return a \link[tibble]{tibble} with the number of
#' TMHs per protein
#' @examples
#' if (is_pureseqtm_installed()) {
#'   tally_tmhs(
#'     predict_topology(
#'       get_example_filename("1bhaA.fasta")
#'     )
#'   )
#' }
#' @export
tally_tmhs <- function(
  topology
) {
  pureseqtmr::check_topology(topology)
  tally <- tibble::tibble(
    name = topology$name,
    n_tmhs = NA
  )
  n_rows <- nrow(tally)
  for (i in seq_len(n_rows)) {
    t <- topology$topology[i]
    n_tmhs <- stringr::str_count(t, "01")
    if (substring(t, 1, 1) == "1") n_tmhs <- n_tmhs + 1
    tally$n_tmhs[i] <- n_tmhs
  }
  tally
}

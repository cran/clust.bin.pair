#' PET and SPECT data for diagnosing hyperparathyroidism
#'
#' Following surgery which confirmed the absence of hyperparathyroidism
#' two diagnostic tests, PET and SPECT, were performed. Their measures
#' of true negatives and false positives are reported. Data reported
#' in Obuchowki 1998.
#'
#' @docType data
#'
#' @usage data(thyroids)
#'
#' @format A data frame with 21 rows and 6 variables:
#' \describe{
#'   \item{patient}{ID of the patient}
#'   \item{n.glands}{number of glands tested from the patient}
#'   \item{n.pet}{number of true negatives from the PET test}
#'   \item{x.pet}{individual results per gland from the PET test}
#'   \item{n.spect}{number of true negatives from the SPECT test}
#'   \item{x.spect}{individual results per gland from the SPECT test}
#' }
#'
#' @keywords datasets
#'
#' @source 
#' 
#' Obuchowski, N. A. (1998). \emph{On the comparison of correlated proportions for clustered data}. Statistics in medicine, 17(13), 1495-1507.
#' 
#' @examples
#' data(thyroids)
#' 
#' thyroids$n.glands == sapply(thyroids$x.pet, length)
#' thyroids$n.glands == sapply(thyroids$x.spect, length)
#' 
#' thyroids$n.pet   == sapply(thyroids$x.pet,   function(x) length(which(x == 1)))
#' thyroids$n.spect == sapply(thyroids$x.spect, function(x) length(which(x == 1)))
#' 
#' tc <- nested.to.contingency(thyroids$x.pet, thyroids$x.spect)
#'
#' clust.bin.pair(tc[,'ak'], tc[,'bk'], tc[,'ck'], tc[,'dk'], method="obuchowski")
#' 
#' do.call(clust.bin.pair, data.frame(tc))

"thyroids"

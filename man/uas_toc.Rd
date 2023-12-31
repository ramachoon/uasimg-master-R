% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/uas_toc.R
\name{uas_toc}
\alias{uas_toc}
\title{Generate a Table of Contents of flight summaries}
\usage{
uas_toc(
  html_reports,
  output_dir = ".",
  output_fn = "index.html",
  gather_dir = NULL,
  toc_title = "UAS Flight Summaries",
  toc_desc = NULL,
  fltmap_show = TRUE,
  fltmap_kml = FALSE,
  fltmap_base = NULL,
  header_html = NULL,
  footer_html = NULL,
  overwrite_toc = FALSE,
  overwrite_gather = FALSE,
  open_toc = FALSE,
  quiet = FALSE
)
}
\arguments{
\item{html_reports}{HTML file names of flight summaries}

\item{output_dir}{Output directory}

\item{output_fn}{Output file name}

\item{gather_dir}{Subdirectory of output_dir where HTML files will be copied}

\item{toc_title}{Title to show at the top of the Table of Contents}

\item{toc_desc}{A short description to appear under the title}

\item{fltmap_show}{Show a map of all flight areas, logical}

\item{fltmap_kml}{Create a KML of all flight areas, logical}

\item{fltmap_base}{A list object containing of background KML files and their symbology for the flight map, see Details.}

\item{header_html}{HTML file name or URL to use as a page header}

\item{footer_html}{HTML file name or URL to use as a page footer}

\item{overwrite_toc}{Overwrite existing file, logical}

\item{overwrite_gather}{Subdirectory of output_dir where HTML files will be copied}

\item{open_toc}{Open the table of contents in a browser when done, logical}

\item{quiet}{Suppress messages, logical}
}
\description{
Generate a Table of Contents of flight summaries
}
\details{
This function generates a master Table of Contents HTML page for a set
of individual flight summaries created by \code{\link{uas_report}}.

\code{htmls_reports} should be a vector of HTML filenames, including the full path. Reports will
be appear in the Table of Contents in the same order. To link to the reports, R will attempt
to create relative paths from the \code{output_dir} to the locations
of the \code{htmls_reports}. At a minimum, this requires \code{output_dir} and
\code{htmls_reports} to be on the same volume. Preferably \code{output_dir} will be a parent
directory of \code{htmls_reports}. If your HTML reports are scattered across many directories,
consider using \code{gather_dir} which will put them all in one place.

\code{gather_dir} specifies an optional \emph{sub-directory} of \code{output_dir} where
the HTML files in \code{htmls_reports} (and any associated files such as thumbnails) will be copied.
\code{gather_dir} should be relative to \code{output_dir} (not an absolute path). To copy HTML files
in \code{output_dir} itself (i.e., not a sub-directory), set \code{gather_dir = '.'}
Links in the TOC will then point to the copies of the HTML files in \code{gather_dir}.
If \code{gather_dir} does not already exist, R will attempt to create it. To link to the
HTML files where they currently are (i.e., not make copies), let \code{gather_dir = NULL} (the default).

If \code{fltmap_show = TRUE}, the Table of Contents will include an interactive map showing the flight
areas of all the flight summaries on the page. \code{fltmap_base} is an optional list
of lists you can use to include additional base layers. Currently only polygon and polyline KML files are
supported as additional base layers. Each list element should be a named list with three
elements: \emph{kml_fn} (a KML file name), \emph{color} (a named color or hex code for the outline),
and \emph{weight} (outline thickness in pixels).

\code{header_html} and \code{footer_html} allow you to specify a page header and footer, i.e., to
add branding elements to the TOC.
}
\seealso{
\code{\link{uas_report}}
}

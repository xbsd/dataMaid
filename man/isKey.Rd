% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/isKey.R
\name{isKey}
\alias{isKey}
\title{Check if a variable qualifies as a key}
\usage{
isKey(v)
}
\arguments{
\item{v}{A variable (vector) to check. All variable types are allowed.}
}
\value{
A \code{\link{checkResult}} with three entires: 
\code{$problem} (a logical indicating whether \code{v} is a key),
\code{$message} (if a problem was found, the following message: 
"The variable is a key (distinct values for each observation).", 
otherwise "") and \code{$problemValues} (always \code{NULL}).
}
\description{
A \code{\link{checkFunction}} that checks if \code{v} 
is a key, that is, if every observation has a unique value in \code{v} and 
\code{v} is not a numeric/integer nor a Date variable. This
function is intended for use as a precheck in \code{\link{clean}}.
}
\details{
Note that numeric or integer variables are not considered candidates 
for keys, as truly continuous measurements will most likely result in unique 
values for each observation.
}
\examples{
keyVar <- c("a", "b", "c", "d", "e", "f")
notKeyVar <- c("a", "a", "b", "c", "d", "e", "f")

isKey(keyVar)
isKey(notKeyVar)

}
\seealso{
\code{\link{check}}, \code{\link{allCheckFunctions}}, 
\code{\link{checkFunction}}, \code{\link{checkResult}}
}

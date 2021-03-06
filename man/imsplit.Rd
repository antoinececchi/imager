% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/cimg_class.R
\name{imsplit}
\alias{imsplit}
\title{Split an image along a certain axis (producing a list)}
\usage{
imsplit(im, axis, nb = -1)
}
\arguments{
\item{im}{an image}

\item{axis}{the axis along which to split (for example 'c')}

\item{nb}{number of objects to split into.
if nb=-1 (the default) the maximum number of splits is used ie. split(im,"c") produces a list containing all individual colour channels}
}
\description{
Use this if you need to process colour channels separately, or frames separately, or rows separately, etc. You can also use it to chop up an image into blocks.
}
\examples{
im <- as.cimg(function(x,y,z) x+y+z,10,10,5)
imsplit(im,"z") #Split along the z axis into a list with 5 elements
imsplit(im,"z",2) #Split along the z axis into two groups
imsplit(im,"z",2) \%>\% imappend("z") #Split and reshape into a single image
}
\seealso{
imappend (the reverse operation)
}


% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/cimg_class.R
\name{pixel.grid}
\alias{pixel.grid}
\title{Returns the pixel grid for an image}
\usage{
pixel.grid(im, standardise = FALSE)
}
\arguments{
\item{im}{an image}

\item{standardise.}{If TRUE use a centered, scaled coordinate system. If FALSE use standard image coordinates (default FALSE)}
}
\value{
a data.frame
}
\description{
The pixel grid for image im gives the (x,y,z,c) coordinates of each successive pixel as a data.frame. The c coordinate has been renamed 'cc' to avoid conflicts with R's c function.
NB: coordinates start at (x=1,y=1), corresponding to the top left corner of the image, unless standardise == TRUE, in which case we use the usual Cartesian coordinates with origin at the center of the image and scaled such that x varies between -.5 and .5, and a y arrow pointing up
}


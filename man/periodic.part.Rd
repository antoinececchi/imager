% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/cimg_class.R
\name{periodic.part}
\alias{periodic.part}
\title{Compute the periodic part of an image, using the periodic/smooth decomposition of Moisan (2009)}
\usage{
periodic.part(im)
}
\arguments{
\item{im}{an image}
}
\value{
an image
}
\description{
Moisan (2009) defines an additive image decomposition
im = periodic + smooth
where the periodic part shouldn't be too far from the original image. The periodic part can be used in frequency-domain analyses, to reduce the artifacts induced by non-periodicity.
}
\examples{
im <- load.image(system.file('extdata/parrots.png',package='imager')) \%>\% subim(x <= 512)
layout(t(1:3))
plot(im,main="Original image")
periodic.part(im) \%>\% plot(main="Periodic part")
#The smooth error is the difference between the original image and its periodic part
(im-periodic.part(im)) \%>\% plot(main="Smooth part")
}
\author{
Simon Barthelmé
}
\references{
L. Moisan, Periodic plus Smooth Image Decomposition,J. Math. Imaging Vision, vol. 39:2, pp. 161-179, 2011
}


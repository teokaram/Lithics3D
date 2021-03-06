% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geom_dist.R
\name{proj_pt2p}
\alias{proj_pt2p}
\title{Project coordinates onto a 3D plane}
\usage{
proj_pt2p(coords, p)
}
\arguments{
\item{coords}{An Nx3 matrix-like object with coordinates defining a line, one
per row.}

\item{p}{A 3x3 matrix-like object with coordinates defining a plane, one per
row.}
}
\value{
An Nx4 matrix-like object containing projected coordinates
(columns 1-3) and signed distances (column 4) for every input point
(one per row)
}
\description{
Orthogonally projects a set of coordinates onto a 3D plane,
defined by 3 co-planar points, and computes distances to the plane. If only
plane equation coefficients are available, use the pc2pt function to obtain
co-planar points. Note that this function returns signed distances so it is
also useful to identify points below or above the plane.
}
\note{
should be useful for thickness maps too, but needs to be rotated
anyway...
}
\section{TODO}{
 Write tests and make sure it works as expected. CHANGE NAME
TO proj.pt2p
}

\examples{
library(rgl)
pts = data.frame(x=c(10, -10), y=c(33, -31) ,z=c(11, -7))
p = data.frame(x=c(1, 3, 4), y=c(0,2,1), z=c(3,4,5))
p.coefs = planeCoefs(p)
points3d(pts, color="red")
planes3d(p.coefs[1], p.coefs[2], p.coefs[3], p.coefs[4])
pts.proj = proj_pt2p(pts, p)
points3d(pts.proj[,1:3], color="green", size=5)
}

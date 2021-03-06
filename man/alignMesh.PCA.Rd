% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/align_pca.R
\name{alignMesh.PCA}
\alias{alignMesh.PCA}
\title{Align a mesh3d object along the axes of its two main principal 
components.}
\usage{
alignMesh.PCA(mesh)
}
\arguments{
\item{mesh}{a mesh3d object to be aligned.}
}
\value{
aligned mesh3d object with vertex coordinates replaced by PCA scores.
}
\description{
Performs a simple alignment of the input triangular mesh along
its two main principal components. While generally useful for flat, elongated
flakes and bifaces, this function does not guarantee proper alignment along
a technologically or typologically relevant axis. Nevertheless, it is useful
for preliminary mesh operations/analyses.
}
\examples{
data(demoFlake1)
alignedMesh<-alignMesh.PCA(demoFlake1$mesh)
\dontrun{
library(rgl)
view3d(theta=0, phi=0)
shade3d(alignedMesh, color=3)
}
}
\author{
Shannon McPherron, Cornel M. Pop
}

# pgirmess

Set of tools for reading, writing and transforming spatial and seasonal data, model selection and specific statistical tests for ecologists.

## Version >= 2.0.0

It includes functions to interpolate regular positions of points between landmarks, to discretize polylines into regular point positions, link distant observations to points and convert a bounding box in a spatial object. It also provides miscellaneous functions for field ecologists such as spatial statistics and inference on diversity indices or writing data.frame with Chinese characters.

***Warning:** functions of earlier pgirmess versions  dealing with rasters have been deprecated. They can easily and much more efficiently be implemented with [terra](https://cran.r-project.org/web/packages/terra/index.html) ([documentation here](https://rspatial.org/terra/)). Other functions depending on [rgdal](https://cran.r-project.org/web/packages/rgdal/index.html), [rgeos](https://cran.r-project.org/web/packages/rgeos/index.html) and [maptools](https://cran.r-project.org/web/packages/maptools/index.html) (no longer maintained after 2023) have been rewritten and made compatible with [sf](https://cran.r-project.org/web/packages/sf/index.html)*

## Release of version  1.7.0

version 1.7.0 includes functions to interpolate regular positions of points between landmarks, to discretize polylines into regular point positions, link distant observations to points, read subsets of big rasters, compute zonal statistics or table of categories from raster within polygons or circular buffers. It also provides miscellaneous functions for model selection, spatial statistics and inference on diversity indices, geometries, writing data.frame with Chinese characters, and some other functions for field ecologists.

A number of functions of this version is based on packages [rgdal](https://cran.r-project.org/web/packages/rgdal/index.html), [rgeos](https://cran.r-project.org/web/packages/rgeos/index.html) and [maptools](https://cran.r-project.org/web/packages/maptools/index.html) on schedule to be no longer maintained from 2023 onwards.

***Warning:** A version 1.7.1 has been released on CRAN, the only difference with 1.7.0 being a warning message "on attach" about the transition to 2.0.0.*

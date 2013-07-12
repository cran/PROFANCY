\name{initializeData}
\alias{initializeData}
\title{initialize environment envData}
\description{
  initialize environment envData.
}
\usage{
  initializeData()
}
\details{
The environment variable envData save many information. We can use the function \code{\link{ls}} to see the variable and use
 \code{ls(envData)} to see information in it, which include \code{DiseaseInfList}, \code{EHMNAddPathInfNetwork}, \code{KEGGAddPathInfNetwork}, \code{MetaboliteInf}, \code{ProstateCandidates}, \code{ProstateSeeds} etc. We can use the function \code{\link{get}} to obtain one of them.  
}
\author{ Qianlan Yao <yaoqianlan@yahoo.com> Desi Shang <sds_46@163.com> Chunquan Li <lcqbio@aliyun.com>}


\examples{
  
  initializeData()
  
  ##see information in environment variable envData
  ls(envData)
  
  ##obtain one variable in environment variable envData
  KEGGAddPathInfNetwork<-get("KEGGAddPathInfNetwork",envir=envData)
}
\keyword{ file }


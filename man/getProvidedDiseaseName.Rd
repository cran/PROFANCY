\name{getProvidedDiseaseName}
\alias{getProvidedDiseaseName}
\title{Get all disease names provided by PROFANCY package  }
\description{
  Get all disease names provided by PROFANCY package.
}
\usage{
     getProvidedDiseaseName()
}



\value{
  A character vector.
}


\author{ Qianlan Yao <yaoqianlan@yahoo.com> Desi Shang <sds_46@163.com> Chunquan Li <lcqbio@aliyun.com>}
\seealso{\code{\link{getTopDiseaseMetabolites}}}

\examples{
\dontrun{
#############    Get all disease Names provided  ################
ProvidedDiseaseName<-getProvidedDiseaseName()
print(ProvidedDiseaseName[1:5])
write.table(ProvidedDiseaseName,"ProvidedDiseaseName.txt",quote=FALSE,row.names=FALSE,sep="\t")



}
}
\keyword{ file }


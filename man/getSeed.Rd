\name{getSeed}
\alias{getSeed}
\title{Get seed metabolites }
\description{
  Get seed metabolites (known disease metabolites). If seedDefault is TRUE, this system provided default seed metabolites. Otherwise, users should input the seed metabolites and the seed metabolites are inputting metabolite which are in the metabolites network.
}
\usage{
     getSeed(diseaseName,network,seed,seedDefault)
}
\arguments{
  \item{diseaseName}{A character of the name of the disease users want to study.}
  \item{network}{A charecter. Which type of metabolites network should be chose. Users could choose KEGG or EHMN network. The defult value is "KEGG" network.}
  \item{seed}{A charecter vector. The seed metaboites (the known disease metabolites are used in random walk analysis on the network. If users have set the seedDefault parameter TURE and selceted diseaseName provided by system, users do not need to set this parameter. Otherwise, users should input seed metabolites.}
  \item{seedDefault}{a logical value(TRUE or FALSE). If users set TRUE and have selected the diseaseName provided by system, the seed metabolites are default known disease metabolites. Otherwise, users shoud input seed metabolites.}
}
\details{

Note if the seedDefault is TRUE, you should not set the seed parameter, the default seeds would be used in this condition. 
If users want to input seeds, users should set the seedDefault FALSE.

}
\value{
  A character vector.
}


\author{ Qianlan Yao <yaoqianlan@yahoo.com> Desi Shang <sds_46@163.com> Chunquan Li <lcqbio@aliyun.com>}
\seealso{\code{\link{getTopDiseaseMetabolites}}}

\examples{
\dontrun{
#############    Get disease seed metabolites   ################
##Example 1: Users have chose disease name provided by system (Prostate cancer),
## network is set "EHMN". The seeds are provided by default.
seed1<-getSeed(diseaseName="Prostate cancer",network="EHMN",seedDefault=TRUE)
print(seed1[1:5])



##Example 2: The disease name is provided by users. The seeds are provided by users.
## The network is set "KEGG".
diseaseName<-"prostate cancer"  ##the disease name provided by users.
path2<-paste(system.file(package="PROFANCY"),"/localdata/ProstateSeeds.txt",sep="")
seedExample<-read.table(path2)
seedExample<-seedExample[[1]]
seed2<-getSeed(diseaseName="Prostate cancer",network="EHMN",seed=seedExample,seedDefault=FALSE)
print(seed2[1:5])


}
}
\keyword{ file }


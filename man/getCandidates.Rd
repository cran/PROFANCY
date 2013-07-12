\name{getCandidates}
\alias{getCandidates}
\title{Get candidate metabolites }
\description{
  Get candidate metabolites to be prioritized. If candidateDefault is TRUE, this system provided default candidate metabolites which is the metabolites in metabolites network except seed metabolites. Otherwise, users could input candidate metabolites. Then the candidate metabolites are the inputting metabolites which are in the metabolites network.
}
\usage{
     getCandidates(diseaseName,candidates,network,candidateDefault,seed,seedDefault)
}
\arguments{
  \item{diseaseName}{A character of the name of the disease users want to study.}
  \item{network}{A charecter presents which type of metabolites network should be chose. Users could choose KEGG or EHMN network. The defult value is "KEGG" network.}
  \item{seed}{A charecter vector. The seed metaboites are the known disease metabolites which are used in PROFANCY method. If users have set the seedDefault parameter TURE thus selceted diseaseName provided by system, users do not need to set this parameter. Otherwise, users should input seed metabolites.}
  \item{candidates}{A charecter vector. If users set the candidateDefault parameter FALSE, users should input candidates. If users do not set this parameter, the candidate metabolites are all metabolites in the network except seed metabolites.}
  \item{seedDefault}{a logical value(TRUE or FALSE). If users set TRUE and have selected the diseaseName provided by system, the seed metabolites are default known disease metabolites. Otherwise, users shoud input seed metabolites.}
  \item{candidateDefault}{a logical value(TRUE or FALSE). If TRUE, the metabolites in network except seed metabolites will be prioritized. Otherwise, users shoud input candidate metabolites.}
}
\details{

Note if the seedDefault is TRUE, users should not set the seed parameter and the default seeds would be used in this condition. 
If users want to input seeds, users should set the seedDefault FALSE.
If the candidateDefault is TRUE, users should not set the candidate parameter, the default candidate metabolites would be used in this condition. 
If users want to input their own candidate, candidateDefault should be FALSE.

}
\value{
  A character vector.
}


\author{ Qianlan Yao <yaoqianlan@yahoo.com> Desi Shang <sds_46@163.com> Chunquan Li <lcqbio@aliyun.com>}
\seealso{\code{\link{getTopDiseaseMetabolites}}}

\examples{
\dontrun{
#############    Get disease candidates   ################
##Example 1: Users have chose disease name provided by system (Prostate cancer), 
##network is set to "EHMN". The candidates and seed metabolites are default.
Candidates1<-getCandidates(diseaseName="Prostate cancer",network="EHMN",
                seedDefault=TRUE,candidateDefault=TRUE)
print(Candidates1[1:5])



##Example 2: The disease name is input by users. The seeds are provided by users. 
##The network is set to "KEGG".The candidates are provided by users.
path1<-paste(system.file(package="PROFANCY"),"/localdata/ProstateCandidates.txt",sep="")
candidateExample<-read.table(path1)
candidateExample<-candidateExample[[1]]
path2<-paste(system.file(package="PROFANCY"),"/localdata/ProstateSeeds.txt",sep="")
seedExample<-read.table(path2)
seedExample<-seedExample[[1]]
Candidates2<-getCandidates(diseaseName="Prostate cancer",network="KEGG",seed=seedExample,
                seedDefault=FALSE,candidates=candidateExample,candidateDefault=FALSE)
print(Candidates2[1:5])


}
}
\keyword{ file }


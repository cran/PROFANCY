\name{getTopDiseaseMetabolites}
\alias{getTopDiseaseMetabolites}
\title{Get the disease Risk metabolites }
\description{
  This system could get the disease risk metabolites (top ranked candidate metabolites).
}
\usage{
     getTopDiseaseMetabolites(diseaseName=NULL,network=c("KEGG"),seed=NULL,
		 candidates=NULL,seedDefault=TRUE,candidateDefault=TRUE,showTop=30)
}
\arguments{
  \item{diseaseName}{A character of the name of the disease users want to study.}
  \item{network}{A charecter. Which type of metabolites network should be chose. Users could choose KEGG or EHMN network. The defult value is "KEGG" network.}
  \item{seed}{A charecter vector. The seed metaboites are the known disease metabolites are used in random walk analysis on the network. If users have set the seedDefault parameter TURE and selceted diseaseName provided by system, users do not need to set this parameter. Otherwise, users should input seed metabolites.}
  \item{candidates}{A charecter vector. If users set the candidateDefault parameter FALSE, users should input candidates. If users do not set this parameter, the candidate metabolites are all metabolites in the network except seed metabolites.}
  \item{seedDefault}{a logical value(TRUE or FALSE). If users set TRUE and have selected the diseaseName provided by system, the seed metabolites are default known disease metabolites. Otherwise, users shoud input seed metabolites.}
  \item{candidateDefault}{a logical value(TRUE or FALSE). If TRUE, the metabolites in network except seed metabolites will be prioritized. Otherwise, users shoud input candidate metabolites.}
  \item{showTop}{An integer. The number of top ranked candidate metabolites users want to show.}
}
\details{
The function \code{getTopDiseaseMetabolites} could get the top ranked candidate metaoblites by prioritization of the disease candidate metabolites using known disease metabolites as seed node to perform random walk on metabolite network with virtual pathway nodes.

Note that the diseaseName we provided can be obtained by   \code{getProvidedDiseaseName}.
If the seedDefault is TRUE, users should not set the seed parameter and the default seeds would be used in this condition. 
If users want to input seeds, users should set the seedDefault FALSE.
If the candidateDefault is TRUE, users should not set the candidates parameter, the default candidate metabolites would be used in this condition. 
If users want to input their own candidates, candidateDefault should be FALSE.
}
\value{
  A dataframe.
}


\author{ Qianlan Yao <yaoqianlan@yahoo.com> Desi Shang <sds_46@163.com> Chunquan Li <lcqbio@aliyun.com>}
\seealso{\code{\link{getProvidedDiseaseName}}}

\examples{
\dontrun{
#############    Prioritize candidate metabolites   ################
##Example 1: Users have chose disease name provided by system and network is set "EHMN". 
##The seeds and candidates are default.
ProvidedDiseaseName<-getProvidedDiseaseName() ##get all disease name provided.
diseaseName<-ProvidedDiseaseName[17]  ##choose the disease you want to study.
example1<-getTopDiseaseMetabolites(diseaseName=diseaseName,network="EHMN",
                  seedDefault=TRUE,showTop=30,candidateDefault=TRUE)
print(example1[1:5,])
write.table(example1,"example1.txt",quote=FALSE,row.names=FALSE,sep="\t")


##Example 2: The disease name is provided by users. The seeds and candidates 
##are provided by users. The network is set "KEGG".
diseaseName<-"prostate cancer"  ##the disease name provided by users.
path1<-paste(system.file(package="PROFANCY"),"/localdata/ProstateCandidates.txt",sep="")
candidateExample<-read.table(path1)
candidateExample<-candidateExample[[1]]
path2<-paste(system.file(package="PROFANCY"),"/localdata/ProstateSeeds.txt",sep="")
seedExample<-read.table(path2)
seedExample<-seedExample[[1]]
example2<-getTopDiseaseMetabolites(diseaseName,network="KEGG",seed=seedExample,
           candidates=candidateExample,seedDefault=FALSE,showTop=30,candidateDefault=FALSE)
print(example2[1:5,])
write.table(example2,"example2.txt",quote=FALSE,row.names=FALSE,sep="\t")



##Example 3: Disease name chose in our provided. The seeds are provided by 
##default. The candidates are provided by users. Network is set "EHMN".
path1<-paste(system.file(package="PROFANCY"),"/localdata/ProstateCandidates.txt",sep="")
candidateExample<-read.table(path1)
candidateExample<-candidateExample[[1]]
example3<-getTopDiseaseMetabolites(diseaseName="Prostate cancer",network="EHMN",
              candidates=candidateExample,seedDefault=TRUE,showTop=30,candidateDefault=FALSE)
print(example3[1:5,])
write.table(example3,"example3.txt",quote=FALSE,row.names=FALSE,sep="\t")



##Example 4: Disease name chose in our provided. The seeds are provided by users.
## The candidates are provided by default. Network is set "KEGG".
path2<-paste(system.file(package="PROFANCY"),"/localdata/ProstateSeeds.txt",sep="")
seedExample<-read.table(path2)
seedExample<-seedExample[[1]]
example4<-getTopDiseaseMetabolites(diseaseName="Prostate cancer",network="KEGG",
                   seed=seedExample,seedDefault=FALSE,showTop=30,candidateDefault=TRUE)
print(example4[1:5,])
write.table(example4,"example4.txt",quote=FALSE,row.names=FALSE,sep="\t")




}
}
\keyword{ file }


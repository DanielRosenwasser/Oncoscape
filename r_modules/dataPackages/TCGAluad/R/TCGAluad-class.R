#----------------------------------------------------------------------------------------------------
printf = function (...) print (noquote (sprintf (...)))
#----------------------------------------------------------------------------------------------------
.TCGAluad <- setClass ("TCGAluadClass", contains = "SttrDataPackageClass")
#----------------------------------------------------------------------------------------------------
#setGeneric('historyTable',   signature='obj', function (obj) standardGeneric ('historyTable'))
#----------------------------------------------------------------------------------------------------
# constructor
#TCGAluad <- function(name="", matrices=list(), history=PatientHistory(), manifest=data.frame())
TCGAluad <- function()
{
  dir <- system.file(package="TCGAluad", "extdata")
  stopifnot(file.exists(dir))
  data <- SttrDataPackage:::.loadFiles(dir)

  obj <- .TCGAluad(SttrDataPackage(name="TCGAluad",
                                 matrices=data$matrices,
                                 data.frames=data$data.frames,
                                 history=data$history,
                                 manifest=data$manifest,
                                 genesets=data$genesets,
                                 networks = data$networks,
                                 sampleCategorizations=data$sampleCategorizations
))

  obj

} # TCGAluad constructor

#----------------------------------------------------------------------------------------------------
setMethod('canonicalizePatientIDs', 'TCGAluadClass',
  function (obj, patient.ids) {
  	 
     ptIDs =  gsub("(^TCGA\\.\\w\\w\\.\\w\\w\\w\\w).*","\\1", patient.ids)
     ptIDs
     })
#----------------------------------------------------------------------------------------------------

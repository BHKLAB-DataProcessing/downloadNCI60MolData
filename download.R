require(downloader)
library(curl)

options(stringsAsFactors = FALSE)

out_dir <- "/pfs/out/"

curl_download("https://discover.nci.nih.gov/cellminerdata/normalizedArchives/nci60_RNA__Affy_HG_U133_Plus_2.0_RMA.zip", paste0(out_dir, "nci60_RNA__Affy_HG_U133_Plus_2.0_RMA.zip"))
unzip(zipfile=paste0(out_dir, "nci60_RNA__Affy_HG_U133_Plus_2.0_RMA.zip"), exdir=out_dir)
file.copy(paste0(out_dir, "output/RNA__Affy_HG_U133_Plus_2.0_RMA.xls"), out_dir)
file.remove(paste0(out_dir, "nci60_RNA__Affy_HG_U133_Plus_2.0_RMA.zip"))
unlink(paste0(out_dir, "output"), recursive=TRUE)

curl_download("https://discover.nci.nih.gov/cellminerdata/normalizedArchives/nci60_RNA__Agilent_Human_microRNA_(V2)_GeneSpringGX.zip", paste0(out_dir, "nci60_RNA__Agilent_Human_microRNA_(V2)_GeneSpringGX.zip"))
unzip(zipfile=paste0(out_dir, "nci60_RNA__Agilent_Human_microRNA_(V2)_GeneSpringGX.zip"), exdir=out_dir)
file.copy(paste0(out_dir, "output/RNA__Agilent_Human_microRNA_(V2)_GeneSpringGX.xls"), out_dir)
file.remove(paste0(out_dir, "nci60_RNA__Agilent_Human_microRNA_(V2)_GeneSpringGX.zip"))
unlink(paste0(out_dir, "output"), recursive=TRUE)

curl_download("https://discover.nci.nih.gov/cellminerdata/normalizedArchives/nci60_RNA__RNA_seq_composite_expression.zip", paste0(out_dir, "nci60_RNA__RNA_seq_composite_expression.zip"))
unzip(zipfile=paste0(out_dir, "nci60_RNA__RNA_seq_composite_expression.zip"), exdir=out_dir)
file.copy(paste0(out_dir, "output/RNA__RNA_seq_composite_expression.xls"), out_dir)
file.remove(paste0(out_dir, "nci60_RNA__RNA_seq_composite_expression.zip"))
unlink(paste0(out_dir, "output"), recursive=TRUE)

curl_download("https://discover.nci.nih.gov/cellminerdata/normalizedArchives/nci60_RNA__RNA_seq_isoforms.zip", paste0(out_dir, "nci60_RNA__RNA_seq_isoforms.zip"))
unzip(zipfile=paste0(out_dir, "nci60_RNA__RNA_seq_isoforms.zip"), exdir=out_dir)
file.copy(paste0(out_dir, "output/RNA__RNA_seq_isoforms.xls"), out_dir)
file.remove(paste0(out_dir, "nci60_RNA__RNA_seq_isoforms.zip"))
unlink(paste0(out_dir, "output"), recursive=TRUE)
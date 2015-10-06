## Create the 16S rRNA color table using Pawel's original HMP color table and some new assignments:

home_dir<-Sys.getenv("HOME")
global_file_dir<-paste0(home_dir,"/Github_repos/Global_Data/")
setwd(global_file_dir)
load(paste0(global_file_dir,"phColorTbl.v3.hmp.RData"))
globalTaxaColorTbl<-c(phColorTbl.hmp,"Other"="#C3CDCEFF","Raoultella_planticola"="#FFC2FF",
                  "Megasphaera_sp._type_1" = "mediumblue",
                  "Megasphaera_sp._type_2" = "springgreen4",
                  "Candidate_Division_TM7_vaginal" = "palevioletred3",
                  "Mobiluncus_mulieris" = "lightcoral",
                  "Peptoniphilus_harei" = "#CCCC00", # dirty yellow
                  "Ureaplasma_parvum" = "#9999FF", # light purple
                  "Streptococcus_oralis" = "#FF66FF", # pink
                  "Lactobacillus_helveticus" = "#00CCFF", # light blue,
                  "Bifidobacterium_longum" = "darkseagreen1", ## all bifido are this color unless otherwise noted
                  "Bacteroides_uniformis" = "#DE1058",
                  "Arcanobacterium_phocae" = "#8C10DE",#purple
                  "Peptostreptococcus_anaerobius" = "#DEDB10", ##goldish
                  "Streptococcus_equinus" = "turquoise", ##!! SAME AS Streptococcus_anginosus!!!
                  "Alloscardovia_omnicolens" = "#DE10A0", # dark pink
                  "Bifidobacterium_breve" = "darkseagreen1", ## all bifido are this color unless otherwise noted
                  "Eggerthella" = "#DE7710", #dark orange
                  "Mycoplasma_hominis" = "#10DE4E", #green
                  "Porphyromonas_bennonis" = "#DE4310", #crimson
                  "Eubacterium_saphenum" = "#8F10DE", #eggplant
                  "Fusobacterium_nucleatum" = "tan3" ##!!! SAME AS !!!Fusobacterium_gonidiaformans!!
)
save(globalTaxaColorTbl,file="globalTaxaColorTbl.Rdata")
green<-rgb(33,161,26,255,maxColorVal=255)
blue <- rgb(red=53,green= 177, blue=167,alpha=255,maxColorVal=255)
purple<- rgb(red=70,green= 26, blue=127,alpha=255,maxColorVal=255)
orange<- rgb(red=240,green= 142, blue=31,alpha=255,maxColorVal=255)
red<-rgb(red=251,green= 13, blue=29,alpha=255,maxColorVal=255)
brown<-rgb(red=123,green=90,blue=49,alpha=255,maxColorVal=255)

plot_colors <- c("L. jensenii" = brown,
                 "L. iners" = orange,
                 "G. vaginalis" = blue, 
                 "A. vaginae" = purple,
                 "L. crispatus"=red)


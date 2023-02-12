#####library####
#подключаем библитеку для чтения exel
library(openxlsx)
#подключаем библитеку для работы со статистическими данными
library(psych)
#подключаем библитеку для работы с ggplot2
library(ggplot2)


setwd("~/WorkSc/Луч/Деконструкция/Code")

#####SAMPLES####


######3#####
dfRadBillat<- read.xlsx(xlsxFile = WayToData,
                        sheet = '3')
dfRadBillat1 <-  subset(dfRadBillat, Side == Side3ch)

######4#####
dfRadProt<- read.xlsx(xlsxFile = WayToData,
                      sheet = '4')
dfRadProt1 <-  subset(dfRadProt, Stage == Stage4ch)

######5#####
dfRad<- read.xlsx(xlsxFile = WayToData,
                  sheet = '5')

gr1<- subset(dfRad, Group == Control)
gr2<- subset(dfRad, Group == Protocol_3d)


domYes<- subset(dfRad, Damage_dominant_hand == Dominant)
gr1_domYes<- subset(domYes, Group == Control)
gr2_domYes<- subset(domYes, Group == Protocol_3d)

domNo<- subset(dfRad, Damage_dominant_hand == NoDominant)
gr1_domNo<- subset(domNo, Group == Control)
gr2_domNo<- subset(domNo, Group == Protocol_3d)

defDors<- subset(dfRad, Type_deformation == DorsalDeformation)
gr1_defDors<- subset(defDors, Group == Control)
gr2_defDors<- subset(defDors, Group == Protocol_3d)

defPalm<- subset(dfRad, Type_deformation == PalmarDeformation)
gr1_defPalm<- subset(defPalm, Group == Control)
gr2_defPalm<- subset(dfRad, Group == Protocol_3d)


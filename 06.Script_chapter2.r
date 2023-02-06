#####library####
#подключаем библитеку для чтения exel
library(openxlsx)
#подключаем библитеку для работы со статистическими данными
library(psych)
#подключаем библитеку для работы с ggplot2
library(ggplot2)

setwd("~/WorkSc/Луч/Деконструкция/Code")

####Глава 2####


######3#####
escrAlgo("Сравнение на основе изображений компьютерной томографии двусторонней симметрии дистального метаэпифиза лучевой кости")
escrAlgo(Met3_group)

Table_numeric("возраст",dfRadBillat1$Age, dfRadBillat1$Side)
Table_nonparametric_2("Пол",dfRadBillat1$Sex,dfRadBillat1$Sex)
Table_nonparametric_2("Тип активности",dfRadBillat1$Type_action,dfRadBillat1$Type_action)

######4#####
escrAlgo("Определение точности переноса данных с помощью индивидуального напечатанного шаблона направителя")
escrAlgo(Met4_group)

Table_numeric("возраст",dfRadBillat1$Age, dfRadBillat1$Stage)
Table_nonparametric_2("Пол",dfRadBillat1$Gender,dfRadBillat1$Stage)
Table_nonparametric_2("Сторона",dfRadBillat1$Side,dfRadBillat1$Stage)
Table_nonparametric_2("Повреждение доминирующей руки",dfRadBillat1$DTH,dfRadBillat1$Stage)
Table_nonparametric_2("Тип деформации",dfRadBillat1$TypeD,dfRadBillat1$Stage)

######5#####
#######dfRad#######
escrAlgo("Описание всей выборки")
Met5_group(dfRad, "всей выборке")


#######gr1#######
escrAlgo("Описание первой группы")
Met5_group(gr1, "первой группе")
#######gr2#######
escrAlgo("Описание втрой группы")
Met5_group(gr2, "второй группе")


#######gr1_domYes#######
escrAlgo("Описание первой группы из выборки повреждения доминирующей руки")
Met5_group(gr1_domYes, "первой группе из выборки повреждения доминирующей руки")


#######gr2_domYes#######
escrAlgo("Описание второй группе из выборки повреждения доминирующей руки")
Met5_group(gr2_domYes, "второй группе из выборки повреждения доминирующей руки")

#######gr1_domNo#######
escrAlgo("Описание первой группы из выборки повреждения недоминирующей руки")
Met5_group(gr1_domNo, "первой группе из выборки повреждения недоминирующей руки")


#######gr2_domNo#######
escrAlgo("Описание второй группе из выборки повреждения недоминирующей руки")
Met5_group(gr2_domNo, "второй группе из выборки повреждения недоминирующей руки")

#######gr1_defDors#######
escrAlgo("Описание первой группы из выборки дорсальной деформации руки")
Met5_group(gr1_defDors, "первой группе из выборки дорсальной деформации руки")


#######gr2_defDors#######
escrAlgo("Описание второй группе из выборки дорсальной деформации руки")
Met5_group(gr2_defDors, "второй группе из выборки дорсальной деформации руки")

#######gr1_defPalm#######
escrAlgo("Описание первой группы из выборки ладонной деформации руки")
Met5_group(gr1_defPalm, "первой группе из выборки ладонной деформации руки")


#######gr2_defPalm#######
escrAlgo("Описание второй группе из выборки ладонной деформации руки")
Met5_group(gr2_defPalm, "второй группе из выборки ладонной деформации руки")


setwd("~/")

WayToData <- "~/WorkSc/Луч/Деконструкция/Code/Data/Луч Глава 5.xlsx"

Side3ch <- 'LEFT'

Stage4ch <- 'PostOp'


Control <- 'Контроль'
Protocol_3d <- 'Протокол 3d'
Dominant <- 'да'
NoDominant <- 'нет'
DorsalDeformation <- 'дорсальная'
PalmarDeformation <-'ладонная'


FileName <- "~/WorkSc/Луч/Деконструкция/Code/Текст_3dRadius.txt"


#Met3_group
Met3_group <- print(paste("В этом исследовании изучались ",length(dfRadBillat1$Side)," моделей для количественной оценки морфологии дистального метаэпифиза лучевой кости, включая стандартные измерения, обычно выполняемые клинически с использованием плоских двухмерных рентгенограмм. Все модели были сделаны на основании МСКТ ",length(dfRadBillat1$Side)/2," пациенов дистального метаэпифиза лучевой кости правой и левой руки. Исследовались пациенты без повреждения дистального метаэпифиза в анамнезе. Возрат пациентов, участвующих в исследовании был ",round(mean(dfRadBillat1$Age),2),"±",round(sd(dfRadBillat1$Age),2)," лет. Минимальный возраст участвовашего в исследовании был ",min(dfRadBillat1$Age),", максимальный ",max(dfRadBillat1$Age),". В исследовании было ",data.frame(table(dfRadBillat1$Type_action))[1,2],"(",round(data.frame(prop.table(table(dfRadBillat1$Type_action)))[1,2],2)*100,"%) пациентов, занятых перимущественно умственным и смешанным типом труда, и ",data.frame(table(dfRadBillat1$Type_action))[2,2],"(",round(data.frame(prop.table(table(dfRadBillat1$Type_action)))[2,2],2)*100,"%) пациентов, занятых перимущественно мануальным трудом.")) 


#Met4_group
Met4_group <- print(paste("В этой главе представлена клинически достигнутая точность коррекции в ",length(dfRadProt1$Name)," случаях внесуставной остеотомии, выполненной по поводу неправильного сращения дистального метаэпифиза лучевой кости. Всего в протокол 3d планирования вошло ",length(dfRadProt1$Name)," пациентов, ",data.frame(table(dfRadProt1$Gender))[1,2]," женщин (",round(data.frame(prop.table(table(dfRadProt1$Gender)))[1,2],2)*100,"%), ",data.frame(table(dfRadProt1$Gender))[2,2]," мужчин (",round(data.frame(prop.table(table(dfRadProt1$Gender)))[2,2],2)*100,"%). Средний возраст пациентов, включенных в протокол 3d планирования составил ",round(mean(dfRadProt1$Age),2),"±",round(sd(dfRadProt1$Age),2)," лет. У ",data.frame(table(dfRadProt1$Side))[1,2]," пациентов повреждение левой руки (",round(data.frame(prop.table(table(dfRadProt1$Side)))[1,2],2)*100," %), ",data.frame(table(dfRadProt1$Side))[2,2]," правой (",round(data.frame(prop.table(table(dfRadProt1$Side)))[1,2],2)*100," %). У ",data.frame(table(dfRadProt1$DTH))[1,2]," пациентов повреждение доминирующей руки (",round(data.frame(prop.table(table(dfRadProt1$DTH)))[1,2],2)*100," %), ",data.frame(table(dfRadProt1$DTH))[2,2]," не доминирующей руки (",round(data.frame(prop.table(table(dfRadProt1$DTH)))[2,2],2)*100," %). Пациентов с ладонным типом деформации ",data.frame(table(dfRadProt1$TypeD))[2,2],"(",round(data.frame(prop.table(table(dfRadProt1$TypeD)))[1,2],2)*100,"%), а пациентов с дорсальным типом деформации ",data.frame(table(dfRadProt1$TypeD))[1,2],"(",round(data.frame(prop.table(table(dfRadProt1$TypeD)))[1,2],2)*100,"%)."))

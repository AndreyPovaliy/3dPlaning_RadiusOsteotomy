#####FUNCTIONS####
#приемер: escrAlgo ("Запись1")
escrAlgo <- function(a) {
  
  pr <- print(a)
  write.table(pr, FileName, sep="*", append = TRUE)
  
}

#приемер: escrAlgoPs ("Запись2")
escrAlgoPs <- function(a) {
  
  pr <- print(paste((a)))
  write.table(pr, FileName, sep="*", append = TRUE)
  
}


#приемер: How_many(dfRad$name,"Всего в исследование вошло")
How_many<-function(a,b)
{
  количество_пациентов<-length(a)
  Опиние_количества<-print(paste(b,количество_пациентов, "пациентов."))
  write.table(Опиние_количества, FileName, sep="*", append = TRUE)
}



# приемер:Describe_numeric(dfRad$Age, "возраст","пациентов по всей выборке составил","лет")
Describe_numeric<-function(database,parametr,sample1,mesurement)
{
  mean1<-round(mean(database),2)
  sd1<-round(sd(database),2)
  Descr<-print(paste("Средний", parametr ,sample1,mean1 ,"±",sd1, mesurement,"."))
  write.table(Descr, FileName, sep="*", append = TRUE)
}


# приемер:Table_numeric("возраст",dfRad$Age, dfRad$Group)
Table_numeric<-function(parametr,database,dev )
{
  mean1<-round(mean(database),2)
  sd1<-round(sd(database),2)
  
  Descr<-print(paste(parametr,"*",mean1 ,"±",sd1))
  write.table(Descr, FileName, sep="*", append = TRUE)
}


# приемер:Table_numericW("возраст",dfRad$Age, dfRad$Group)
Table_numericW<-function(parametr,database,dev )
{
  mean1<-round(mean(database),2)
  sd1<-round(sd(database),2)
  p_value <- round(as.numeric(wilcox.test(database ~ dev)[3]),2)
  Descr<-print(paste(parametr,"*",mean1 ,"±",sd1,"*", p_value))
  write.table(Descr, FileName, sep="*", append = TRUE)
}

# приемер:Table_numericKr("возраст",dfRad$Age, dfRad$Group)
Table_numericKr<-function(parametr,database,dev )
{
  mean1<-round(mean(database),2)
  sd1<-round(sd(database),2)
  p_value <- round(as.numeric(kruskal.test(database ~ dev)[3]),2)
  Descr<-print(paste(parametr,"*",mean1 ,"±",sd1,"*", p_value))
  write.table(Descr, FileName, sep="*", append = TRUE)
}


# пример: Describe_nonparametric_2(dfRad$Gender, "В первой группе было")
Describe_nonparametric_2<-function(database, sample1)
{
  nonpar_tabble<-data.frame(table(database),prop.table(table(database)))
  
  
  
  Descr<-print(paste(sample1,nonpar_tabble[1,1],"-",nonpar_tabble[1,2],"(",round(nonpar_tabble[1,4]*100,2),"%) ,"
                     ,nonpar_tabble[2,1],"-",nonpar_tabble[2,2],"(",round(nonpar_tabble[2,4]*100,2),"%)."))
  write.table(Descr, FileName, sep="*", append = TRUE)
}



# приемер: Table_nonparametric_2("Пол",dfRad$Gender,dfRad$Group)
Table_nonparametric_2<-function(Type,database,dev)
{
  nonpar_tabble<-data.frame(table(database),prop.table(table(database)))
  
  pvalue <- round(as.numeric(summary(table(database, dev))[6]),2)
  Descr<-print(paste(Type,"***","p-value
",nonpar_tabble[1,1],"*",nonpar_tabble[1,2],"*",round(nonpar_tabble[1,4]*100,2),"%*",pvalue,"
",nonpar_tabble[2,1],"*",nonpar_tabble[2,2],"*",round(nonpar_tabble[2,4]*100,2),"%"))
  write.table(Descr, FileName, sep="*", append = TRUE)
}


# пример: Describe_nonparametric_3(dfRad$RI_GrN, "Лучевой наклон во всем образце составлял")
Describe_nonparametric_3<-function(database, sample1)
{
  nonpar_tabble<-data.frame(table(database),prop.table(table(database)))
  
  
  
  Descr<-print(paste(sample1,nonpar_tabble[1,1],"-",nonpar_tabble[1,2],"(",round(nonpar_tabble[1,4]*100,2),"%) ,"
                     ,nonpar_tabble[2,1],"-",nonpar_tabble[2,2],"(",round(nonpar_tabble[2,4]*100,2),"%) ,"
                     ,nonpar_tabble[3,1],"-",nonpar_tabble[3,2],"(",round(nonpar_tabble[3,4]*100,2),"%)."))
  write.table(Descr, FileName, sep="*", append = TRUE)
}


#пример: Table_nonparametric_3("Лучевой наклон",dfRad$RI_GrN, dfRad$Group)
Table_nonparametric_3<-function(Type,database,dev)
{
  nonpar_tabble<-data.frame(table(database),prop.table(table(database)))
  
  pvalue <- round(as.numeric(summary(table(database, dev))[6]),2)
  Descr<-print(paste(Type,"***","p-value
",nonpar_tabble[1,1],"*",nonpar_tabble[1,2],"*",round(nonpar_tabble[1,4]*100,2),"%*",pvalue,"
",nonpar_tabble[2,1],"*",nonpar_tabble[2,2],"*",round(nonpar_tabble[2,4]*100,2),"%
",nonpar_tabble[3,1],"*",nonpar_tabble[3,2],"*",round(nonpar_tabble[3,4]*100,2),"%"))
  write.table(Descr, FileName, sep="*", append = TRUE)
}


#pvalue сравнения непарметрич данных
#приемер: pvalueNonPara(dfRad$Gender,dfRad$Group,"по полу")
pvalueNonPara<-function(x,y, parametr1)
{
  S_Table<-round(as.numeric(summary(table(x, y))[6]),2)
  Описание<-print(paste("Разница между группами", parametr1," составила",S_Table, "."))
  write.table(Описание, FileName, sep="*", append = TRUE)   
}

#pvalue сравнения парметрич данных (kruskal.test)
#приемер: pvalueParaKr(dfRad,dfRad$RI_GrN,dfRad$Group,"по радиальному наклону")
pvalueParaKr <-function(database,x,y, parametr1)
{
  kruskal<-round(as.numeric(kruskal.test(x ~ y, data=database)[3]),2)
  Описание<-print(paste("Разница между группами", parametr1," составила",kruskal, "."))
  write.table(Описание, FileName, sep="*", append = TRUE)
}

#pvalue сравнения парметрич данных (wilcox.test)
#приемер: pvalueParaWx(dfRad,dfRad$Age,dfRad$Group,"по возрасту")
pvalueParaWx <-function(database,x,y, parametr1)
{
  wilcox<-round(as.numeric(wilcox.test(x ~ y, data=database)[3]),2)
  Описание<-print(paste("Разница между группами", parametr1," составила",wilcox, "."))
  write.table(Описание, FileName, sep="*", append = TRUE)
}




#####COMB FUNCTIONS####

######2#####

#Met5_group(dfRad, "всей выборке")
Met5_group<-function(gr0,a){
  pr<-print(paste("В ",a," было ",length(gr0$name)," пациентов (",data.frame(table(gr0$Gender))[2,2]," мужчин (",round(data.frame(prop.table(table(gr0$Gender)))[2,2],2)*100,"%), ",data.frame(table(gr0$Gender))[1,2]," женщина (",round(data.frame(prop.table(table(gr0$Gender)))[1,2],2)*100,"%)), ",length(gr0$name)," разных верхних конечностей. Пациентов из первой группе было ",data.frame(table(gr0$Group))[1,2],"(",round(data.frame(prop.table(table(gr0$Group)))[1,2],2)*100,"%), из второй ",data.frame(table(gr0$Group))[2,2],"(",round(data.frame(prop.table(table(gr0$Group)))[2,2],2)*100,"%).
Средний возраст в",a," составил ",round(mean(gr0$Age),2),"±",round(sd(gr0$Age),2)," года. Деформаций левой руки было ",data.frame(table(gr0$Side))[1,2],"(",round(data.frame(prop.table(table(gr0$Side)))[1,2],2)*100,"%), парвой руки - ",data.frame(table(gr0$Side))[2,2],"(",round(data.frame(prop.table(table(gr0$Side)))[2,2],2)*100,"%). Левшей было ",data.frame(table(gr0$Dominant_hand))[1,2],"(",round(data.frame(prop.table(table(gr0$Dominant_hand)))[1,2],2)*100,"%), правшей ",data.frame(table(gr0$Dominant_hand))[2,2],"(",round(data.frame(prop.table(table(gr0$Dominant_hand)))[1,2],2)*100,"%). Пациентов с повреждением ведущей руки ",data.frame(table(gr0$Damage_dominant_hand))[1,2],"(",round(data.frame(prop.table(table(gr0$Damage_dominant_hand)))[1,2],2)*100,"%), а пациентов с неведущей рукой было ",data.frame(table(gr0$Damage_dominant_hand))[2,2],"(",round(data.frame(prop.table(table(gr0$Damage_dominant_hand)))[2,2],2)*100,"%).
Пациентов с ладонным типом деформации ",data.frame(table(gr0$Type_deformation))[2,2],"",round(data.frame(prop.table(table(gr0$Type_deformation)))[1,2],2)*100,"%), а пациентов с дорсальным типом деформации ",data.frame(table(gr0$Type_deformation))[1,2],"(",round(data.frame(prop.table(table(gr0$Type_deformation)))[1,2],2)*100,"%).
В исследовании было ",data.frame(table(gr0$Type_action))[1,2],"(",round(data.frame(prop.table(table(gr0$Type_action)))[1,2],2)*100,"%) пациентов, занятых перимущественно умственным и смешанным типом труда, и ",data.frame(table(gr0$Type_action))[2,2],"(",round(data.frame(prop.table(table(gr0$Type_action)))[2,2],2)*100,"%) пациентов, занятых перимущественно мануальным трудом.
При рентгенографической оценке радиолульнарный угол поврежденной руки до операции ",round(mean(gr0$Ri_MesD0),2),"±",round(sd(gr0$Ri_MesD0),2),"градусов, угол наклона площадки поврежденной руки до операции ",round(mean(gr0$Vt_MesD0),2),"±",round(sd(gr0$Vt_MesD0),2)," градусов, лучелоктевой индекс поврежденной руки до операции ",round(mean(gr0$Rh_MesD0),2),"±",round(sd(gr0$Rh_MesD0),2)," мм. Исходная оценка по анкетированию DASH составила ",round(mean(gr0$DASH0),2),"±",round(sd(gr0$DASH0),2),", SF-16 физический компонент ",round(mean(gr0$SF_16_РН0),2),"±",round(sd(gr0$SF_16_РН0),2),", SF-16 ментальный компонент ",round(mean(gr0$SF_16_MН0),2),"±",round(sd(gr0$SF_16_MН0),2),"."))
  
  
  write.table(pr, FileName, sep="*", append = TRUE)
  
  
  Table_numeric("Возраст", gr0$Age, gr0$Group)
  Table_numeric("Радиолульнарный угол поврежденной руки до операции", gr0$Ri_MesD0, gr0$Group)
  Table_numeric("Угол наклона площадки поврежденной руки до операции", gr0$Ri_MesD0, gr0$Group)
  Table_numeric("Лучелоктевой индекс поврежденной руки до операции", gr0$Rh_MesD0, gr0$Group)
  Table_numeric("Анкетирование DASH до операции", gr0$DASH0, gr0$Group)
  Table_numeric("Анкетирование SF-16 физический компонент", gr0$SF_16_РН0, gr0$Group)
  Table_numeric("Анкетирование SF-16 ментальный компонент", gr0$SF_16_MН0, gr0$Group)
  
  
  Table_nonparametric_2("Пол",gr0$Gender, gr0$Group)
  Table_nonparametric_2("Группа",gr0$Group, gr0$Group)
  Table_nonparametric_2("Сторона повреждения",gr0$Side, gr0$Group)
  Table_nonparametric_2("Доминирующая рука",gr0$Dominant_hand, gr0$Group)
  Table_nonparametric_2("Повреждение доминирующей руки",gr0$Damage_dominant_hand, gr0$Group)
  Table_nonparametric_2("Тип деформации",gr0$Type_deformation, gr0$Group)
  Table_nonparametric_2("Тип трудовой активности",gr0$Type_action, gr0$Group)
  
  
}


######3#####
DnP_DNum23ch <- function(all,text){
  Age	
  Sex	
  BMI	
  Type_action 	
  Side
  
}




RES_3ch <- function(all,text){
  RI	
  RH	
  VT	
  MeVCA	
  MVCA	
  LVCA	
  SDVCA
  
}


pRES_3ch <- function(all){
  RI	
  RH	
  VT	
  MeVCA	
  MVCA	
  LVCA	
  SDVCA
  
}




######4#####


DnP_DNum24ch <- function(all,text){
  Gender	
  Age	
  Stage		
  DTH	
  TypeD
}




RES_4ch <- function(all,text){
  RI		
  VT		
  RH	
}


pRES_4ch <- function(all){
  RI		
  VT		
  RH  
}


######5#####
#data.frame(table(dfRad$Damage_dominant_hand))[1,2]
#round((data.frame(prop.table(table(gr1$VAS3)))*100)[1,2],2)

#round(mean(gr1$Grip_strength_12),2)
#round(sd(gr1$Grip_strength_12),2)

#length(dfRad$name)




#пример: DnP_DNum25ch(dfRad,"В выборке было")
DnP_DNum25ch <- function(all,text){
  Describe_nonparametric_2(all$Group,text)
  Describe_nonparametric_2(all$Gender,text)
  Describe_nonparametric_2(all$Damage_dominant_hand,text)
  Describe_nonparametric_2(all$Type_deformation,text)
  Describe_nonparametric_2(all$Type_action,text)
  
  Describe_numeric(all$Age, "возраст",text,"лет")
  Describe_numeric(all$BMI, "ИМТ",text,"")
  Describe_numeric(all$Ri_MesD0, "лучевой наклон поврежденной руки",text,"градусов")
  Describe_numeric(all$Vt_MesD0, "ладонный наклон поврежденной руки",text,"градусов")
  Describe_numeric(all$Rh_MesD0, "радиоульнарный индекс поврежденной руки",text,"мм")
  Describe_numeric(all$Ri_MesN, "лучевой наклон здоровой руки",text,"градусов")
  Describe_numeric(all$Vt_MesN, "ладонный наклон здоровой руки",text,"градусов")
  Describe_numeric(all$Rh_MesN, "радиоульнарный индекс здоровой руки",text,"мм")
  Describe_numeric(all$DASH0, "DASH до операции",text,"баллов")
  Describe_numeric(all$SF_16_РН0, "анкетирование физического компонента здоровья SF-16",text,"баллов")
  Describe_numeric(all$SF_16_MН0, "анкетирование психологического компонента здоровья SF-16",text,"баллов")
  
  
  Table_nonparametric_2("Группы",all$Group,all$Group)
  Table_nonparametric_2("Пол",all$Gender,all$Group)
  Table_nonparametric_2("Повреждение доминирующей ркуи",all$Damage_dominant_hand,all$Group)
  Table_nonparametric_2("Тип деформации",all$Type_deformation,all$Group)
  Table_nonparametric_2("Тип активности",all$Type_action,all$Group)
  
  Table_numericW("возраст",all$Age, all$Group)
  Table_numericW("ИМТ",all$BMI, all$Group)
  Table_numericW("лучевой наклон поврежденной руки",all$Ri_MesD0, all$Group)
  Table_numericW("ладонный наклон поврежденной руки",all$Vt_MesD0, all$Group)
  Table_numericW("радиоульнарный индекс поврежденной руки",all$Rh_MesD0, all$Group)
  Table_numericW("лучевой наклон здоровой руки",all$Ri_MesN, all$Group)
  Table_numericW("ладонный наклон здоровой руки",all$Vt_MesN, all$Group)
  Table_numericW("радиоульнарный индекс здоровой руки",all$Rh_MesN, all$Group)
  Table_numericW("DASH до операции",all$DASH0, all$Group)
  Table_numericW("анкетирование физического компонента здоровья SF-16",all$SF_16_РН0, all$Group)
  Table_numericW("анкетирование психологического компонента здоровья SF-16",all$SF_16_MН0, all$Group)
  
}

#пример: RES_5ch(dfRad,"В выборке было")
RES_5ch <- function(all,text){
  
  Describe_numeric(all$Minutes_1, "длительность операции",text,"минут")
  Describe_nonparametric_3(all$VAS3,text)
  Describe_numeric(all$Ri_MesD12, "лучевой наклон на 12й месяц",text,"градусов")
  Describe_numeric(all$Vt_MesD12, "локтевой наклон на 12й месяц",text,"градусов")
  Describe_numeric(all$Rh_MesD12, "лучелоктевой индекс на 12й месяц",text,"мм")
  Describe_numeric(all$DASH12, "DASH на 12й месяц после операции",text,"баллов")
  Describe_numeric(all$SF_16_РН_12, "анкетирование физического компонента здоровья SF-16 на 12й месяц",text,"баллов")
  Describe_numeric(all$SF_16_MН_12, "анкетирование психологического компонента здоровья SF-16 на 12й месяц",text,"баллов")
  Describe_numeric(all$Flex_Ext_12, "объем сгибания-разгибания на 12й месяц",text,"градусов")
  Describe_numeric(all$pron_sup_12, "объем пронации-супинации на 12й месяц",text,"градусов")
  Describe_numeric(all$Grip_strength_12, "сила захвата на 12й месяц",text,"процентов")
  Describe_nonparametric_3(all$Ri_GrD12,text)
  Describe_nonparametric_3(all$Vt_GrD12,text)
  Describe_nonparametric_3(all$Rh_GrD12,text)
  
  
  Table_numeric("длительность операции", all$Minutes_1, all$Group)
  Table_numeric("лучевой наклон на 12й месяц", all$Ri_MesD12, all$Group)
  Table_numeric("локтевой наклон на 12й месяц", all$Vt_MesD12, all$Group)
  Table_numeric("лучелоктевой индекс на 12й месяц", all$Rh_MesD12, all$Group)
  Table_numeric("DASH на 12й месяц после операции", all$DASH12, all$Group)
  Table_numeric("SF-16 на 12й месяц, физический компонент", all$SF_16_РН_12, all$Group)
  Table_numeric("SF-16 на 12й месяц, психологический компонент", all$SF_16_MН_12, all$Group)
  Table_numeric("объем сгибания-разгибания на 12й месяц", all$Flex_Ext_12, all$Group)
  Table_numeric("объем пронации-супинации на 12й месяц", all$pron_sup_12, all$Group)
  Table_numeric("сила захвата на 12й месяц", all$Grip_strength_12, all$Group)
  Table_nonparametric_3("ВАШ на третий день",all$VAS3, all$Group)
  Table_nonparametric_3("Оценка лучевого наклона",all$Ri_GrD12, all$Group)
  Table_nonparametric_3("Оценка локтевого наклона",all$Vt_GrD12, all$Group)
  Table_nonparametric_3("Оценка лучелоктевого индекса",all$Rh_GrD12, all$Group)
  
  
}




#пример: pRES_5ch(dfRad)
pRES_5ch <- function(all){
  
  
  Table_numericW("длительность операции", all$Minutes_1, all$Group)
  Table_numericW("лучевой наклон на 12й месяц", all$Ri_MesD12, all$Group)
  Table_numericW("локтевой наклон на 12й месяц", all$Vt_MesD12, all$Group)
  Table_numericW("лучелоктевой индекс на 12й месяц", all$Rh_MesD12, all$Group)
  Table_numericW("DASH на 12й месяц после операции", all$DASH12, all$Group)
  Table_numericW("SF-16 на 12й месяц, физический компонент", all$SF_16_РН_12, all$Group)
  Table_numericW("SF-16 на 12й месяц, психологический компонент", all$SF_16_MН_12, all$Group)
  Table_numericW("объем сгибания-разгибания на 12й месяц", all$Flex_Ext_12, all$Group)
  Table_numericW("объем пронации-супинации на 12й месяц", all$pron_sup_12, all$Group)
  Table_numericW("сила захвата на 12й месяц", all$Grip_strength_12, all$Group)
  Table_nonparametric_3("ВАШ на 3й день",all$VAS3, all$Group)
  Table_nonparametric_3("Оценка лучевого наклона",all$Ri_GrD12, all$Group)
  Table_nonparametric_3("Оценка локтевого наклона",all$Vt_GrD12, all$Group)
  Table_nonparametric_3("Оценка лучелоктевого индекса",all$Rh_GrD12, all$Group)
  
}


#Res_group(gr1,"первой группы","в первой группе")
Res_group<-function(gr0,a,b){
  
  pr<- print(paste("Результаты ",a,".
Средняя длительность операции ",b," составила ",round(mean(gr0$Minutes_1),2)," ± ",round(sd(gr0$Minutes_1),2)," минут.
",data.frame(table(gr0$VAS3))[1,2]," (",round((data.frame(prop.table(table(gr1$VAS3)))*100)[1,2],2),"%) оценок ВАШ «3», ",data.frame(table(gr0$VAS3))[2,2]," оценок (",round((data.frame(prop.table(table(gr1$VAS3)))*100)[2,2],2),"%) – «4», ",data.frame(table(gr0$VAS3))[3,2]," оценок (",round((data.frame(prop.table(table(gr1$VAS3)))*100)[3,2],2),"%) – «5».
Средний лучевой наклон на 12й месяц ",b," составил ",round(mean(gr0$Ri_MesD12),2)," ± ",round(sd(gr0$Ri_MesD12),2)," градусов, локтевой наклон - ",round(mean(gr0$Vt_MesD12),2)," ± ",round(sd(gr0$Vt_MesD12),2)," градусов, лучелоктевой индекс ",round(mean(gr0$Rh_MesD12),2)," ± ",round(sd(gr0$Rh_MesD12),2)," мм.
Средний балл по анкетированию DASH на 12й месяц после операции ",b," составил ",round(mean(gr0$DASH12),2)," ± ",round(sd(gr0$DASH12),2)," баллов, балл анкетирования физического компонента здоровья SF-16 составил ",round(mean(gr0$SF_16_РН_12),2)," ± ",round(sd(gr0$SF_16_РН_12),2)," баллов, психологического компонента здоровья SF-16 - ",round(mean(gr0$SF_16_MН_12),2)," ± ",round(sd(gr0$SF_16_MН_12),2)," баллов.
Средний объем сгибания-разгибания на 12й месяц составил ",round(mean(gr0$Flex_Ext_12),2)," ± ",round(sd(gr0$Flex_Ext_12),2)," градусов, объем пронации-супинации - ",round(mean(gr0$pron_sup_12),2)," ± ",round(sd(gr0$pron_sup_12),2)," градусов, сила захвата - ",round(mean(gr0$Grip_strength_12),2)," ± ",round(sd(gr0$Grip_strength_12),2)," процентов (Таблица 5.х).
Таблица 5.х. Результаты",b,"по длительности операции оценки ВАШ на 3и стуки, рентгнологических показателей лучевого наклона, локтевого индекса на 12й месяц после опрерации, анкетирования DASH, SF-16 (физиологический и психологический компонента) на 12й месяц после опрерации, оценки объема сгибания-разгибания, пронации-супинации, захвата  на 12й месяц"))
  
  write.table(pr, FileName, sep="*", append = TRUE)
  
  Table_numeric("длительность операции", gr0$Minutes_1, gr0$Group)
  Table_numeric("лучевой наклон на 12й месяц", gr0$Ri_MesD12, gr0$Group)
  Table_numeric("локтевой наклон на 12й месяц", gr0$Vt_MesD12, gr0$Group)
  Table_numeric("лучелоктевой индекс на 12й месяц", gr0$Rh_MesD12, gr0$Group)
  Table_numeric("DASH на 12й месяц после операции", gr0$DASH12, gr0$Group)
  Table_numeric("SF-16 на 12й месяц, физический компонент", gr0$SF_16_РН_12, gr0$Group)
  Table_numeric("SF-16 на 12й месяц, психологический компонент", gr0$SF_16_MН_12, gr0$Group)
  Table_numeric("объем сгибания-разгибания на 12й месяц", gr0$Flex_Ext_12, gr0$Group)
  Table_numeric("объем пронации-супинации на 12й месяц", gr0$pron_sup_12, gr0$Group)
  Table_numeric("сила захвата на 12й месяц", gr0$Grip_strength_12, gr0$Group)
  Table_nonparametric_3("ВАШ",gr0$VAS3, gr0$Group)
  Table_nonparametric_3("Оценка лучевого наклона",all$Ri_GrD12, all$Group)
  Table_nonparametric_3("Оценка локтевого наклона",all$Vt_GrD12, all$Group)
  Table_nonparametric_3("Оценка лучелоктевого индекса",all$Rh_GrD12, all$Group)
}

#Res_groups(gr1,gr2,dfRad,"в подгруппе")
Res_groups<-function(group1,group2,sample1,subsample1){
  a <- print(paste("первой группы",subsample1))
  b <- print(paste("в первой группе",subsample1))
  c <- print(paste("второй группы",subsample1))
  d <- print(paste("во второй группе",subsample1))
  Res_group(group1,a,b)
  Res_group(group2,c,d)
  escrAlgo("Сравнение между группами")
  pRES_5ch(sample1)  
  
}



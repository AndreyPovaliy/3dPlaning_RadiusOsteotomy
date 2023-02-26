####Глава 2####


######3#####
escribir("Сравнение на основе изображений компьютерной томографии двусторонней симметрии дистального метаэпифиза лучевой кости")

 
Describe_numericText (dfRadBillat1$Age, "возраст ","пациентов, вошедших в исследование, составил "," лет")
Describe_numericText (dfRadBillat1$BMI, "ИМТ ","пациентов, вошедших в исследование, составил "," кг/м2")
Quantity_discr("Распределение по полу ",dfRadBillat1$Gender)	
Quantity_discr("Распределение по типу активности  ",dfRadBillat1$Type_action)
escribir("Основные показатели указаны в таблице 2.1.")

escribir("Таблица 2.1. Описание показателей возраста, ИМТ, пола, типа активности во всей выборке. Пример записи: процент от выборки % ( количество случаев / общее количество  случаев)* [95% доверительный интервал]")
Table_numeric2("возраст",dfRadBillat1$Age, dfRadBillat1$Side)
Table_numeric2("ИМТ",dfRadBillat1$BMI, dfRadBillat1$Side)
Quantity_table("Пол",dfRadBillat1$Gender,dfRadBillat1$Side) 
Quantity_table("Тип активности",dfRadBillat1$Type_action,dfRadBillat1$Side)





######4#####
escribir("Определение точности переноса данных с помощью индивидуального напечатанного шаблона направителя")

Describe_numericText (dfRadProt1$Age, "возраст ","пациентов, вошедших в исследование, составил "," лет")
Describe_numericText (dfRadProt1$Month, "Период после травмы ","пациентов, вошедших в исследование, составил "," месяцев")
Quantity_discr("Распределение по полу ",dfRadProt1$Gender)
Quantity_discr("Распределение по стороне поражения ",dfRadProt1$Side)
Quantity_discr("Распределение по доминирующей руке ",dfRadProt1$Dominant_hand)
Quantity_discr("Распределение по повреждению доминирующей руки ",dfRadProt1$Damage_dominant_hand)
Quantity_discr("Распределение по типу деформации ",dfRadProt1$Type_deformation)
escribir("Основные показатели указаны в таблице 2.2.")

escribir("Таблица 2.2. Описание показателей возраста, пола, стороны поражения, поражения доминирующей руки, тип деформации. Пример записи: процент от выборки % ( количество случаев / общее количество  случаев)* [95% доверительный интервал]")
Table_numeric2("возраст",dfRadProt1$Age, dfRadProt1$Stage)
Quantity_table("Пол",dfRadProt1$Gender,dfRadProt1$Stage) 
Quantity_table("Сторона поражения",dfRadProt1$Side,dfRadProt1$Stage) 
Quantity_table("Доминирующая рука",dfRadProt1$Dominant_hand,dfRadProt1$Stage) 
Quantity_table("Повреждение доминирующей руки",dfRadProt1$Damage_dominant_hand,dfRadProt1$Stage) 		
Quantity_table("Тип деформации",dfRadProt1$Type_deformation,dfRadProt1$Stage) 		







######5#####
#######dfRad#######
escribir("2.5 Описание всей выборки")


Quantity_discr("В группе ",dfRad$Group)
Quantity_discr("Было ",dfRad$Gender)
Quantity_discr("Повреждение ",dfRad$Side)
Quantity_discr("Доминирующая рука ",dfRad$Dominant_hand)
Quantity_discr("Повреждение доминирующая рука ",dfRad$Damage_dominant_hand)	
Quantity_discr("Тип деформации ",dfRad$Type_deformation)	
Quantity_discr("Тип активности ",dfRad$Type_action)
	

TextPvalue(pvalueQualitative(dfRad$Gender,dfRad$Group),"По полу" )
TextPvalue(pvalueQualitative(dfRad$Side,dfRad$Group),"По стороне повреждения" )
TextPvalue(pvalueQualitative(dfRad$Dominant_hand,dfRad$Group),"По доминирующей руке" )
TextPvalue(pvalueQualitative(dfRad$Damage_dominant_hand,dfRad$Group),"По повреждению доминирующей руки" )
TextPvalue(pvalueQualitative(dfRad$Type_deformation,dfRad$Group),"По типу деформации" )
TextPvalue(pvalueQualitative(dfRad$Type_action,dfRad$Group),"По типу активности" )
escribir("Качественные показатели всей выборки указаны в таблице 2.3.")

escribir("Таблица 2.3. Описание показателей пола, стороны поражения, доминирующей руки, повреждения доминирующей руки, типа деформации, типа активности во всей выборке. Пример записи: процент от выборки % ( количество случаев / общее количество  случаев)* [95% доверительный интервал]")
Quantity_tableP("Пол",dfRad$Gender,dfRad$Group) 
Quantity_tableP("Сторона поражения",dfRad$Side,dfRad$Group) 
Quantity_tableP("Доминирующая рука",dfRad$Gender,dfRad$Group) 
Quantity_tableP("Повреждение доминирующей руки",dfRad$Damage_dominant_hand,dfRad$Group) 
Quantity_tableP("Тип деформации",dfRad$Type_deformation,dfRad$Group) 
Quantity_tableP("Тип активности",dfRad$Type_action,dfRad$Group) 


Describe_numericText (dfRad$Age, "возраст"," пациентов по всей выборке составил "," лет")
Describe_numericText (dfRad$BMI, "ИМТ"," пациентов по всей выборке составил "," кг/м2")	
Describe_numericText (dfRad$Ri_MesD0, "лучевой наклон пораженной руки"," пациентов по всей выборке составил "," градусов")
Describe_numericText (dfRad$Vt_MesD0, "ладонный наклон пораженной руки"," пациентов по всей выборке составил "," градусов")
Describe_numericText (dfRad$Rh_MesD0, "лучелоктевой индекс пораженной руки"," пациентов по всей выборке составил "," мм")
Describe_numericText (dfRad$Ri_MesN, "лучевой наклон здоровой руки"," пациентов по всей выборке составил "," градусов")
Describe_numericText (dfRad$Vt_MesN, "ладонный наклон здоровой руки"," пациентов по всей выборке составил "," градусов")
Describe_numericText (dfRad$Rh_MesN, "лучелоктевой индекс здоровой руки"," пациентов по всей выборке составил "," мм")
Describe_numericText (dfRad$DASH0, "оценка анкетирования DASH до операции"," пациентов по всей выборке составил "," ,баллов")
Describe_numericText (dfRad$SF_16_РН0, "оценка анкетирования SF-16 (физический компанент) до операции"," пациентов по всей выборке составил "," ,баллов")
Describe_numericText (dfRad$SF_16_MН0, "оценка анкетирования SF-16 (ментальный компанент) до операции"," пациентов по всей выборке составил "," ,баллов")

TextPvalue(Pvalue_numeric(dfRad$Age,dfRad$Group),"По возрасту" )
TextPvalue(Pvalue_numeric(dfRad$BMI,dfRad$Group),"По ИМТ" )
TextPvalue(Pvalue_numeric(dfRad$Ri_MesD0,dfRad$Group),"По лучевому наклону пораженной руки" )
TextPvalue(Pvalue_numeric(dfRad$Vt_MesD0,dfRad$Group),"По локтевому наклону пораженной руки" )
TextPvalue(Pvalue_numeric(dfRad$Rh_MesD0,dfRad$Group),"По лучелоктевому индексу пораженной руки" )
TextPvalue(Pvalue_numeric(dfRad$Ri_MesN,dfRad$Group),"По лучевому наклону здоровой руки" )
TextPvalue(Pvalue_numeric(dfRad$Vt_MesN,dfRad$Group),"По локтевому наклону здоровой руки" )
TextPvalue(Pvalue_numeric(dfRad$Rh_MesN,dfRad$Group),"По лучелоктевому индексу здоровой руки" )
TextPvalue(Pvalue_numeric(dfRad$DASH0,dfRad$Group),"По оценке анкетирования DASH до операции" )
TextPvalue(Pvalue_numeric(dfRad$SF_16_РН0,dfRad$Group),"По оценке анкетирования SF-16 (физический компанент) до операции" )
TextPvalue(Pvalue_numeric(dfRad$SF_16_MН0,dfRad$Group),"По оценке анкетирования SF-16 (ментальный компанент) до операции" )
escribir("Количественные показатели всей выборки указаны в таблице 2.4.")

escribir("Таблица 2.4. Описание количественных показателей возраста, ИМТ, 
         лучевой наклон, локтевой наклон, лучелоктевой индекс пораженной руки,
         лучевой наклон, локтевой наклон, лучелоктевой индекс здоровой руки,
         оценке анкетирования DASH, SF-16 (физический компанент), SF-16 (ментальный компанент)")
         
Table_numericP2("возраст",dfRad$Age, dfRad$Group)
Table_numericP2("ИМТ",dfRad$BMI, dfRad$Group)
Table_numericP2("лучевой наклон пораженной руки",dfRad$Ri_MesD0, dfRad$Group)
Table_numericP2("локтевой наклон пораженной руки",dfRad$Vt_MesD0, dfRad$Group)
Table_numericP2("лучелоктевой индекс пораженной руки",dfRad$Rh_MesD0, dfRad$Group)
Table_numericP2("лучевой наклон здоровой руки",dfRad$Ri_MesN, dfRad$Group)
Table_numericP2("локтевой наклон здоровой руки",dfRad$Vt_MesN, dfRad$Group)
Table_numericP2("лучелоктевой индекс здоровой руки",dfRad$Rh_MesN, dfRad$Group)
Table_numericP2("анкетирование DASH",dfRad$DASH0, dfRad$Group)
Table_numericP2("анкетирование SF-16 (физический компанент)",dfRad$SF_16_РН0, dfRad$Group)
Table_numericP2("анкетирование SF-16 (ментальный компанент)",dfRad$SF_16_MН0, dfRad$Group)


#######gr1#######
escribir("2.6 Описание первой группы")
#Quantity_discr("В группе ",gr1$Group)
Quantity_discr("Было в первой группе ",gr1$Gender)
Quantity_discr("Повреждение в первой группе ",gr1$Side)
Quantity_discr("Доминирующая рука в первой группе ",gr1$Dominant_hand)
Quantity_discr("Повреждение доминирующая рука в первой группе ",gr1$Damage_dominant_hand)	
Quantity_discr("Тип деформации в первой группе ",gr1$Type_deformation)	
Quantity_discr("Тип активности в первой группе ",gr1$Type_action)


#TextPvalue(pvalueQualitative(gr1$Gender,gr1$Group),"По полу в первой группе " )
#TextPvalue(pvalueQualitative(gr1$Side,gr1$Group),"По стороне повреждения в первой группе " )
#TextPvalue(pvalueQualitative(gr1$Dominant_hand,gr1$Group),"По доминирующей руке в первой группе " )
#TextPvalue(pvalueQualitative(gr1$Damage_dominant_hand,gr1$Group),"По повреждению доминирующей руки в первой группе " )
#TextPvalue(pvalueQualitative(gr1$Type_deformation,gr1$Group),"По типу деформации в первой группе " )
#TextPvalue(pvalueQualitative(gr1$Type_action,gr1$Group),"По типу активности в первой группе " )
escribir("Качественные показатели в первой группе указаны в таблице 2.5.")

escribir("Таблица 2.5. Описание показателей пола, стороны поражения, доминирующей руки, повреждения доминирующей руки, типа деформации, типа активности в первой группе. Пример записи: процент от выборки % ( количество случаев / общее количество  случаев)* [95% доверительный интервал]")
Quantity_table("Пол",gr1$Gender,gr1$Group) 
Quantity_table("Сторона поражения",gr1$Side,gr1$Group) 
Quantity_table("Доминирующая рука",gr1$Gender,gr1$Group) 
Quantity_table("Повреждение доминирующей руки",gr1$Damage_dominant_hand,gr1$Group) 
Quantity_table("Тип деформации",gr1$Type_deformation,gr1$Group) 
Quantity_table("Тип активности",gr1$Type_action,gr1$Group) 


Describe_numericText (gr1$Age, "возраст"," пациентов в первой группе составил "," лет")
Describe_numericText (gr1$BMI, "ИМТ"," пациентов в первой группе составил "," кг/м2")	
Describe_numericText (gr1$Ri_MesD0, "лучевой наклон пораженной руки"," пациентов в первой группе составил "," градусов")
Describe_numericText (gr1$Vt_MesD0, "ладонный наклон пораженной руки"," пациентов в первой группе составил "," градусов")
Describe_numericText (gr1$Rh_MesD0, "лучелоктевой индекс пораженной руки"," пациентов в первой группе составил "," мм")
Describe_numericText (gr1$Ri_MesN, "лучевой наклон здоровой руки"," пациентов в первой группе составил "," градусов")
Describe_numericText (gr1$Vt_MesN, "ладонный наклон здоровой руки"," пациентов в первой группе составил "," градусов")
Describe_numericText (gr1$Rh_MesN, "лучелоктевой индекс здоровой руки"," пациентов в первой группе составил "," мм")
Describe_numericText (gr1$DASH0, "оценка анкетирования DASH до операции"," пациентов в первой группе составил "," ,баллов")
Describe_numericText (gr1$SF_16_РН0, "оценка анкетирования SF-16 (физический компанент) до операции"," пациентов в первой группе составил "," ,баллов")
Describe_numericText (gr1$SF_16_MН0, "оценка анкетирования SF-16 (ментальный компанент) до операции"," пациентов в первой группе составил "," ,баллов")

#TextPvalue(Pvalue_numeric(gr1$Age,gr1$Group),"По возрасту в первой группе " )
#TextPvalue(Pvalue_numeric(gr1$BMI,gr1$Group),"По ИМТ в первой группе " )
#TextPvalue(Pvalue_numeric(gr1$Ri_MesD0,gr1$Group),"По лучевому наклону пораженной руки" )
#TextPvalue(Pvalue_numeric(gr1$Vt_MesD0,gr1$Group),"По локтевому наклону пораженной руки" )
#TextPvalue(Pvalue_numeric(gr1$Rh_MesD0,gr1$Group),"По лучелоктевому индексу пораженной руки" )
#TextPvalue(Pvalue_numeric(gr1$Ri_MesN,gr1$Group),"По лучевому наклону здоровой руки" )
#TextPvalue(Pvalue_numeric(gr1$Vt_MesN,gr1$Group),"По локтевому наклону здоровой руки" )
#TextPvalue(Pvalue_numeric(gr1$Rh_MesN,gr1$Group),"По лучелоктевому индексу здоровой руки" )
#TextPvalue(Pvalue_numeric(gr1$DASH0,gr1$Group),"По оценке анкетирования DASH до операции" )
#TextPvalue(Pvalue_numeric(gr1$SF_16_РН0,gr1$Group),"По оценке анкетирования SF-16 (физический компанент) до операции" )
#TextPvalue(Pvalue_numeric(gr1$SF_16_MН0,gr1$Group),"По оценке анкетирования SF-16 (ментальный компанент) до операции" )
escribir("Количественные показатели всей выборки указаны в таблице 2.6.")

escribir("Таблица 2.6. Описание количественных показателей в первой группе возраста, ИМТ, 
         лучевой наклон, локтевой наклон, лучелоктевой индекс пораженной руки,
         лучевой наклон, локтевой наклон, лучелоктевой индекс здоровой руки,
         оценке анкетирования DASH, SF-16 (физический компанент), SF-16 (ментальный компанент)")

Table_numeric2("возраст",gr1$Age, gr1$Group)
Table_numeric2("ИМТ",gr1$BMI, gr1$Group)
Table_numeric2("лучевой наклон пораженной руки",gr1$Ri_MesD0, gr1$Group)
Table_numeric2("локтевой наклон пораженной руки",gr1$Vt_MesD0, gr1$Group)
Table_numeric2("лучелоктевой индекс пораженной руки",gr1$Rh_MesD0, gr1$Group)
Table_numeric2("лучевой наклон здоровой руки",gr1$Ri_MesN, gr1$Group)
Table_numeric2("локтевой наклон здоровой руки",gr1$Vt_MesN, gr1$Group)
Table_numeric2("лучелоктевой индекс здоровой руки",gr1$Rh_MesN, gr1$Group)
Table_numeric2("анкетирование DASH",gr1$DASH0, gr1$Group)
Table_numeric2("анкетирование SF-16 (физический компанент)",gr1$SF_16_РН0, gr1$Group)
Table_numeric2("анкетирование SF-16 (ментальный компанент)",gr1$SF_16_MН0, gr1$Group)

#######gr2#######
escribir("2.7 Описание второй группы")
#Quantity_discr("В группе ",gr2$Group)
Quantity_discr("Было во второй группе ",gr2$Gender)
Quantity_discr("Повреждение во второй группе ",gr2$Side)
Quantity_discr("Доминирующая рука во второй группе ",gr2$Dominant_hand)
Quantity_discr("Повреждение доминирующая рука во второй группе ",gr2$Damage_dominant_hand)	
Quantity_discr("Тип деформации во второй группе ",gr2$Type_deformation)	
Quantity_discr("Тип активности во второй группе ",gr2$Type_action)


#TextPvalue(pvalueQualitative(gr2$Gender,gr2$Group),"По полу во второй группе " )
#TextPvalue(pvalueQualitative(gr2$Side,gr2$Group),"По стороне повреждения во второй группе " )
#TextPvalue(pvalueQualitative(gr2$Dominant_hand,gr2$Group),"По доминирующей руке во второй группе " )
#TextPvalue(pvalueQualitative(gr2$Damage_dominant_hand,gr2$Group),"По повреждению доминирующей руки во второй группе " )
#TextPvalue(pvalueQualitative(gr2$Type_deformation,gr2$Group),"По типу деформации во второй группе " )
#TextPvalue(pvalueQualitative(gr2$Type_action,gr2$Group),"По типу активности во второй группе " )
escribir("Качественные показатели во второй группе указаны в таблице 2.7.")

escribir("Таблица 2.7. Описание показателей пола, стороны поражения, доминирующей руки, повреждения доминирующей руки, типа деформации, типа активности во второй группе. Пример записи: процент от выборки % ( количество случаев / общее количество  случаев)* [95% доверительный интервал]")
Quantity_table("Пол",gr2$Gender,gr2$Group) 
Quantity_table("Сторона поражения",gr2$Side,gr2$Group) 
Quantity_table("Доминирующая рука",gr2$Gender,gr2$Group) 
Quantity_table("Повреждение доминирующей руки",gr2$Damage_dominant_hand,gr2$Group) 
Quantity_table("Тип деформации",gr2$Type_deformation,gr2$Group) 
Quantity_table("Тип активности",gr2$Type_action,gr2$Group) 


Describe_numericText (gr2$Age, "возраст"," пациентов во второй группе составил "," лет")
Describe_numericText (gr2$BMI, "ИМТ"," пациентов во второй группе составил "," кг/м2")	
Describe_numericText (gr2$Ri_MesD0, "лучевой наклон пораженной руки"," пациентов во второй группе составил "," градусов")
Describe_numericText (gr2$Vt_MesD0, "ладонный наклон пораженной руки"," пациентов во второй группе составил "," градусов")
Describe_numericText (gr2$Rh_MesD0, "лучелоктевой индекс пораженной руки"," пациентов во второй группе составил "," мм")
Describe_numericText (gr2$Ri_MesN, "лучевой наклон здоровой руки"," пациентов во второй группе составил "," градусов")
Describe_numericText (gr2$Vt_MesN, "ладонный наклон здоровой руки"," пациентов во второй группе составил "," градусов")
Describe_numericText (gr2$Rh_MesN, "лучелоктевой индекс здоровой руки"," пациентов во второй группе составил "," мм")
Describe_numericText (gr2$DASH0, "оценка анкетирования DASH до операции"," пациентов во второй группе составил "," ,баллов")
Describe_numericText (gr2$SF_16_РН0, "оценка анкетирования SF-16 (физический компанент) до операции"," пациентов во второй группе составил "," ,баллов")
Describe_numericText (gr2$SF_16_MН0, "оценка анкетирования SF-16 (ментальный компанент) до операции"," пациентов во второй группе составил "," ,баллов")

#TextPvalue(Pvalue_numeric(gr2$Age,gr2$Group),"По возрасту во второй группе " )
#TextPvalue(Pvalue_numeric(gr2$BMI,gr2$Group),"По ИМТ во второй группе " )
#TextPvalue(Pvalue_numeric(gr2$Ri_MesD0,gr2$Group),"По лучевому наклону пораженной руки" )
#TextPvalue(Pvalue_numeric(gr2$Vt_MesD0,gr2$Group),"По локтевому наклону пораженной руки" )
#TextPvalue(Pvalue_numeric(gr2$Rh_MesD0,gr2$Group),"По лучелоктевому индексу пораженной руки" )
#TextPvalue(Pvalue_numeric(gr2$Ri_MesN,gr2$Group),"По лучевому наклону здоровой руки" )
#TextPvalue(Pvalue_numeric(gr2$Vt_MesN,gr2$Group),"По локтевому наклону здоровой руки" )
#TextPvalue(Pvalue_numeric(gr2$Rh_MesN,gr2$Group),"По лучелоктевому индексу здоровой руки" )
#TextPvalue(Pvalue_numeric(gr2$DASH0,gr2$Group),"По оценке анкетирования DASH до операции" )
#TextPvalue(Pvalue_numeric(gr2$SF_16_РН0,gr2$Group),"По оценке анкетирования SF-16 (физический компанент) до операции" )
#TextPvalue(Pvalue_numeric(gr2$SF_16_MН0,gr2$Group),"По оценке анкетирования SF-16 (ментальный компанент) до операции" )
escribir("Количественные показатели всей выборки указаны в таблице 2.8.")

escribir("Таблица 2.8. Описание количественных показателей во второй группе возраста, ИМТ, 
         лучевой наклон, локтевой наклон, лучелоктевой индекс пораженной руки,
         лучевой наклон, локтевой наклон, лучелоктевой индекс здоровой руки,
         оценке анкетирования DASH, SF-16 (физический компанент), SF-16 (ментальный компанент)")

Table_numeric2("возраст",gr2$Age, gr2$Group)
Table_numeric2("ИМТ",gr2$BMI, gr2$Group)
Table_numeric2("лучевой наклон пораженной руки",gr2$Ri_MesD0, gr2$Group)
Table_numeric2("локтевой наклон пораженной руки",gr2$Vt_MesD0, gr2$Group)
Table_numeric2("лучелоктевой индекс пораженной руки",gr2$Rh_MesD0, gr2$Group)
Table_numeric2("лучевой наклон здоровой руки",gr2$Ri_MesN, gr2$Group)
Table_numeric2("локтевой наклон здоровой руки",gr2$Vt_MesN, gr2$Group)
Table_numeric2("лучелоктевой индекс здоровой руки",gr2$Rh_MesN, gr2$Group)
Table_numeric2("анкетирование DASH",gr2$DASH0, gr2$Group)
Table_numeric2("анкетирование SF-16 (физический компанент)",gr2$SF_16_РН0, gr2$Group)
Table_numeric2("анкетирование SF-16 (ментальный компанент)",gr2$SF_16_MН0, gr2$Group)



#######domYes#######
escribir("Описание подгруппы повреждения доминирующей руки")
Quantity_discr("В группе ",domYes$Group)
Quantity_discr("Было ",domYes$Gender)
Quantity_discr("Повреждение ",domYes$Side)
Quantity_discr("Доминирующая рука ",domYes$Dominant_hand)
Quantity_discr("Повреждение доминирующая рука ",domYes$Damage_dominant_hand)	
Quantity_discr("Тип деформации ",domYes$Type_deformation)	
Quantity_discr("Тип активности ",domYes$Type_action)


TextPvalue(pvalueQualitative(domYes$Gender,domYes$Group),"По полу" )
TextPvalue(pvalueQualitative(domYes$Side,domYes$Group),"По стороне повреждения" )
TextPvalue(pvalueQualitative(domYes$Dominant_hand,domYes$Group),"По доминирующей руке" )
TextPvalue(pvalueQualitative(domYes$Damage_dominant_hand,domYes$Group),"По повреждению доминирующей руки" )
TextPvalue(pvalueQualitative(domYes$Type_deformation,domYes$Group),"По типу деформации" )
TextPvalue(pvalueQualitative(domYes$Type_action,domYes$Group),"По типу активности" )
escribir("Качественные показатели всей выборки указаны в таблице 2.3.")

escribir("Таблица 2.3. Описание показателей пола, стороны поражения, доминирующей руки, повреждения доминирующей руки, типа деформации, типа активности во выборке доминирующей руки. Пример записи: процент от выборки % ( количество случаев / общее количество  случаев)* [95% доверительный интервал]")
Quantity_tableP("Пол",domYes$Gender,domYes$Group) 
Quantity_tableP("Сторона поражения",domYes$Side,domYes$Group) 
Quantity_tableP("Доминирующая рука",domYes$Gender,domYes$Group) 
Quantity_tableP("Повреждение доминирующей руки",domYes$Damage_dominant_hand,domYes$Group) 
Quantity_tableP("Тип деформации",domYes$Type_deformation,domYes$Group) 
Quantity_tableP("Тип активности",domYes$Type_action,domYes$Group) 


Describe_numericText (domYes$Age, "возраст"," пациентов по выборке доминирующей руки составил "," лет")
Describe_numericText (domYes$BMI, "ИМТ"," пациентов по выборке доминирующей руки составил "," кг/м2")	
Describe_numericText (domYes$Ri_MesD0, "лучевой наклон пораженной руки"," пациентов по выборке доминирующей руки составил "," градусов")
Describe_numericText (domYes$Vt_MesD0, "ладонный наклон пораженной руки"," пациентов по выборке доминирующей руки составил "," градусов")
Describe_numericText (domYes$Rh_MesD0, "лучелоктевой индекс пораженной руки"," пациентов по выборке доминирующей руки составил "," мм")
Describe_numericText (domYes$Ri_MesN, "лучевой наклон здоровой руки"," пациентов по выборке доминирующей руки составил "," градусов")
Describe_numericText (domYes$Vt_MesN, "ладонный наклон здоровой руки"," пациентов по выборке доминирующей руки составил "," градусов")
Describe_numericText (domYes$Rh_MesN, "лучелоктевой индекс здоровой руки"," пациентов по выборке доминирующей руки составил "," мм")
Describe_numericText (domYes$DASH0, "оценка анкетирования DASH до операции"," пациентов по выборке доминирующей руки составил "," ,баллов")
Describe_numericText (domYes$SF_16_РН0, "оценка анкетирования SF-16 (физический компанент) до операции"," пациентов по выборке доминирующей руки составил "," ,баллов")
Describe_numericText (domYes$SF_16_MН0, "оценка анкетирования SF-16 (ментальный компанент) до операции"," пациентов по выборке доминирующей руки составил "," ,баллов")

TextPvalue(Pvalue_numeric(domYes$Age,domYes$Group),"По возрасту" )
TextPvalue(Pvalue_numeric(domYes$BMI,domYes$Group),"По ИМТ" )
TextPvalue(Pvalue_numeric(domYes$Ri_MesD0,domYes$Group),"По лучевому наклону пораженной руки" )
TextPvalue(Pvalue_numeric(domYes$Vt_MesD0,domYes$Group),"По локтевому наклону пораженной руки" )
TextPvalue(Pvalue_numeric(domYes$Rh_MesD0,domYes$Group),"По лучелоктевому индексу пораженной руки" )
TextPvalue(Pvalue_numeric(domYes$Ri_MesN,domYes$Group),"По лучевому наклону здоровой руки" )
TextPvalue(Pvalue_numeric(domYes$Vt_MesN,domYes$Group),"По локтевому наклону здоровой руки" )
TextPvalue(Pvalue_numeric(domYes$Rh_MesN,domYes$Group),"По лучелоктевому индексу здоровой руки" )
TextPvalue(Pvalue_numeric(domYes$DASH0,domYes$Group),"По оценке анкетирования DASH до операции" )
TextPvalue(Pvalue_numeric(domYes$SF_16_РН0,domYes$Group),"По оценке анкетирования SF-16 (физический компанент) до операции" )
TextPvalue(Pvalue_numeric(domYes$SF_16_MН0,domYes$Group),"По оценке анкетирования SF-16 (ментальный компанент) до операции" )
escribir("Количественные показатели выборке доминирующей руки указаны в таблице 2.4.")

escribir("Таблица 2.4. Описание количественных показателей возраста, ИМТ, 
         лучевой наклон, локтевой наклон, лучелоктевой индекс пораженной руки,
         лучевой наклон, локтевой наклон, лучелоктевой индекс здоровой руки,
         оценке анкетирования DASH, SF-16 (физический компанент), SF-16 (ментальный компанент)")

Table_numericP2("возраст",domYes$Age, domYes$Group)
Table_numericP2("ИМТ",domYes$BMI, domYes$Group)
Table_numericP2("лучевой наклон пораженной руки",domYes$Ri_MesD0, domYes$Group)
Table_numericP2("локтевой наклон пораженной руки",domYes$Vt_MesD0, domYes$Group)
Table_numericP2("лучелоктевой индекс пораженной руки",domYes$Rh_MesD0, domYes$Group)
Table_numericP2("лучевой наклон здоровой руки",domYes$Ri_MesN, domYes$Group)
Table_numericP2("локтевой наклон здоровой руки",domYes$Vt_MesN, domYes$Group)
Table_numericP2("лучелоктевой индекс здоровой руки",domYes$Rh_MesN, domYes$Group)
Table_numericP2("анкетирование DASH",domYes$DASH0, domYes$Group)
Table_numericP2("анкетирование SF-16 (физический компанент)",domYes$SF_16_РН0, domYes$Group)
Table_numericP2("анкетирование SF-16 (ментальный компанент)",domYes$SF_16_MН0, domYes$Group)

#######gr1_domYes#######
escribir("Описание первой группы из подгруппы повреждения доминирующей руки")
#Quantity_discr("В группе ",gr1_domYes$Group)
Quantity_discr("Было в первой группе  из подгруппы повреждения доминирующей руки ",gr1_domYes$Gender)
Quantity_discr("Повреждение в первой группе  из подгруппы повреждения доминирующей руки ",gr1_domYes$Side)
Quantity_discr("Доминирующая рука в первой группе  из подгруппы повреждения доминирующей руки ",gr1_domYes$Dominant_hand)
Quantity_discr("Повреждение доминирующая рука в первой группе  из подгруппы повреждения доминирующей руки ",gr1_domYes$Damage_dominant_hand)	
Quantity_discr("Тип деформации в первой группе  из подгруппы повреждения доминирующей руки ",gr1_domYes$Type_deformation)	
Quantity_discr("Тип активности в первой группе  из подгруппы повреждения доминирующей руки ",gr1_domYes$Type_action)


#TextPvalue(pvalueQualitative(gr1_domYes$Gender,gr1_domYes$Group),"По полу в первой группе  из подгруппы повреждения доминирующей руки " )
#TextPvalue(pvalueQualitative(gr1_domYes$Side,gr1_domYes$Group),"По стороне повреждения в первой группе  из подгруппы повреждения доминирующей руки " )
#TextPvalue(pvalueQualitative(gr1_domYes$Dominant_hand,gr1_domYes$Group),"По доминирующей руке в первой группе  из подгруппы повреждения доминирующей руки " )
#TextPvalue(pvalueQualitative(gr1_domYes$Damage_dominant_hand,gr1_domYes$Group),"По повреждению доминирующей руки в первой группе  из подгруппы повреждения доминирующей руки " )
#TextPvalue(pvalueQualitative(gr1_domYes$Type_deformation,gr1_domYes$Group),"По типу деформации в первой группе  из подгруппы повреждения доминирующей руки " )
#TextPvalue(pvalueQualitative(gr1_domYes$Type_action,gr1_domYes$Group),"По типу активности в первой группе  из подгруппы повреждения доминирующей руки " )
escribir("Качественные показатели в первой группе  из подгруппы повреждения доминирующей руки указаны в таблице 2.5.")

escribir("Таблица 2.5. Описание показателей пола, стороны поражения, доминирующей руки, повреждения доминирующей руки, типа деформации, типа активности в первой группе  из подгруппы повреждения доминирующей руки. Пример записи: процент от выборки % ( количество случаев / общее количество  случаев)* [95% доверительный интервал]")
Quantity_table("Пол",gr1_domYes$Gender,gr1_domYes$Group) 
Quantity_table("Сторона поражения",gr1_domYes$Side,gr1_domYes$Group) 
Quantity_table("Доминирующая рука",gr1_domYes$Gender,gr1_domYes$Group) 
Quantity_table("Повреждение доминирующей руки",gr1_domYes$Damage_dominant_hand,gr1_domYes$Group) 
Quantity_table("Тип деформации",gr1_domYes$Type_deformation,gr1_domYes$Group) 
Quantity_table("Тип активности",gr1_domYes$Type_action,gr1_domYes$Group) 


Describe_numericText (gr1_domYes$Age, "возраст"," пациентов в первой группе  из подгруппы повреждения доминирующей руки составил "," лет")
Describe_numericText (gr1_domYes$BMI, "ИМТ"," пациентов в первой группе  из подгруппы повреждения доминирующей руки составил "," кг/м2")	
Describe_numericText (gr1_domYes$Ri_MesD0, "лучевой наклон пораженной руки"," пациентов в первой группе  из подгруппы повреждения доминирующей руки составил "," градусов")
Describe_numericText (gr1_domYes$Vt_MesD0, "ладонный наклон пораженной руки"," пациентов в первой группе  из подгруппы повреждения доминирующей руки составил "," градусов")
Describe_numericText (gr1_domYes$Rh_MesD0, "лучелоктевой индекс пораженной руки"," пациентов в первой группе  из подгруппы повреждения доминирующей руки составил "," мм")
Describe_numericText (gr1_domYes$Ri_MesN, "лучевой наклон здоровой руки"," пациентов в первой группе  из подгруппы повреждения доминирующей руки составил "," градусов")
Describe_numericText (gr1_domYes$Vt_MesN, "ладонный наклон здоровой руки"," пациентов в первой группе  из подгруппы повреждения доминирующей руки составил "," градусов")
Describe_numericText (gr1_domYes$Rh_MesN, "лучелоктевой индекс здоровой руки"," пациентов в первой группе  из подгруппы повреждения доминирующей руки составил "," мм")
Describe_numericText (gr1_domYes$DASH0, "оценка анкетирования DASH до операции"," пациентов в первой группе  из подгруппы повреждения доминирующей руки составил "," ,баллов")
Describe_numericText (gr1_domYes$SF_16_РН0, "оценка анкетирования SF-16 (физический компанент) до операции"," пациентов в первой группе  из подгруппы повреждения доминирующей руки составил "," ,баллов")
Describe_numericText (gr1_domYes$SF_16_MН0, "оценка анкетирования SF-16 (ментальный компанент) до операции"," пациентов в первой группе  из подгруппы повреждения доминирующей руки составил "," ,баллов")

#TextPvalue(Pvalue_numeric(gr1_domYes$Age,gr1_domYes$Group),"По возрасту в первой группе  из подгруппы повреждения доминирующей руки " )
#TextPvalue(Pvalue_numeric(gr1_domYes$BMI,gr1_domYes$Group),"По ИМТ в первой группе  из подгруппы повреждения доминирующей руки " )
#TextPvalue(Pvalue_numeric(gr1_domYes$Ri_MesD0,gr1_domYes$Group),"По лучевому наклону пораженной руки" )
#TextPvalue(Pvalue_numeric(gr1_domYes$Vt_MesD0,gr1_domYes$Group),"По локтевому наклону пораженной руки" )
#TextPvalue(Pvalue_numeric(gr1_domYes$Rh_MesD0,gr1_domYes$Group),"По лучелоктевому индексу пораженной руки" )
#TextPvalue(Pvalue_numeric(gr1_domYes$Ri_MesN,gr1_domYes$Group),"По лучевому наклону здоровой руки" )
#TextPvalue(Pvalue_numeric(gr1_domYes$Vt_MesN,gr1_domYes$Group),"По локтевому наклону здоровой руки" )
#TextPvalue(Pvalue_numeric(gr1_domYes$Rh_MesN,gr1_domYes$Group),"По лучелоктевому индексу здоровой руки" )
#TextPvalue(Pvalue_numeric(gr1_domYes$DASH0,gr1_domYes$Group),"По оценке анкетирования DASH до операции" )
#TextPvalue(Pvalue_numeric(gr1_domYes$SF_16_РН0,gr1_domYes$Group),"По оценке анкетирования SF-16 (физический компанент) до операции" )
#TextPvalue(Pvalue_numeric(gr1_domYes$SF_16_MН0,gr1_domYes$Group),"По оценке анкетирования SF-16 (ментальный компанент) до операции" )
escribir("Количественные показатели первой группе  из подгруппы повреждения доминирующей руки указаны в таблице 2.6.")

escribir("Таблица 2.6. Описание количественных показателей в первой группе  из подгруппы повреждения доминирующей руки возраста, ИМТ, 
         лучевой наклон, локтевой наклон, лучелоктевой индекс пораженной руки,
         лучевой наклон, локтевой наклон, лучелоктевой индекс здоровой руки,
         оценке анкетирования DASH, SF-16 (физический компанент), SF-16 (ментальный компанент)")

Table_numeric2("возраст",gr1_domYes$Age, gr1_domYes$Group)
Table_numeric2("ИМТ",gr1_domYes$BMI, gr1_domYes$Group)
Table_numeric2("лучевой наклон пораженной руки",gr1_domYes$Ri_MesD0, gr1_domYes$Group)
Table_numeric2("локтевой наклон пораженной руки",gr1_domYes$Vt_MesD0, gr1_domYes$Group)
Table_numeric2("лучелоктевой индекс пораженной руки",gr1_domYes$Rh_MesD0, gr1_domYes$Group)
Table_numeric2("лучевой наклон здоровой руки",gr1_domYes$Ri_MesN, gr1_domYes$Group)
Table_numeric2("локтевой наклон здоровой руки",gr1_domYes$Vt_MesN, gr1_domYes$Group)
Table_numeric2("лучелоктевой индекс здоровой руки",gr1_domYes$Rh_MesN, gr1_domYes$Group)
Table_numeric2("анкетирование DASH",gr1_domYes$DASH0, gr1_domYes$Group)
Table_numeric2("анкетирование SF-16 (физический компанент)",gr1_domYes$SF_16_РН0, gr1_domYes$Group)
Table_numeric2("анкетирование SF-16 (ментальный компанент)",gr1_domYes$SF_16_MН0, gr1_domYes$Group)


#######gr2_domYes#######
escribir("Описание второй группе из подгруппы повреждения доминирующей руки")
escribir("2.6 Описание второй группе  из подгруппы повреждения доминирующей руки")
#Quantity_discr("В группе ",gr2_domYes$Group)
Quantity_discr("Было в второй группе  из подгруппы повреждения доминирующей руки ",gr2_domYes$Gender)
Quantity_discr("Повреждение в второй группе  из подгруппы повреждения доминирующей руки ",gr2_domYes$Side)
Quantity_discr("Доминирующая рука в второй группе  из подгруппы повреждения доминирующей руки ",gr2_domYes$Dominant_hand)
Quantity_discr("Повреждение доминирующая рука в второй группе  из подгруппы повреждения доминирующей руки ",gr2_domYes$Damage_dominant_hand)	
Quantity_discr("Тип деформации в второй группе  из подгруппы повреждения доминирующей руки ",gr2_domYes$Type_deformation)	
Quantity_discr("Тип активности в второй группе  из подгруппы повреждения доминирующей руки ",gr2_domYes$Type_action)


#TextPvalue(pvalueQualitative(gr2_domYes$Gender,gr2_domYes$Group),"По полу в второй группе  из подгруппы повреждения доминирующей руки " )
#TextPvalue(pvalueQualitative(gr2_domYes$Side,gr2_domYes$Group),"По стороне повреждения в второй группе  из подгруппы повреждения доминирующей руки " )
#TextPvalue(pvalueQualitative(gr2_domYes$Dominant_hand,gr2_domYes$Group),"По доминирующей руке в второй группе  из подгруппы повреждения доминирующей руки " )
#TextPvalue(pvalueQualitative(gr2_domYes$Damage_dominant_hand,gr2_domYes$Group),"По повреждению доминирующей руки в второй группе  из подгруппы повреждения доминирующей руки " )
#TextPvalue(pvalueQualitative(gr2_domYes$Type_deformation,gr2_domYes$Group),"По типу деформации в второй группе  из подгруппы повреждения доминирующей руки " )
#TextPvalue(pvalueQualitative(gr2_domYes$Type_action,gr2_domYes$Group),"По типу активности в второй группе  из подгруппы повреждения доминирующей руки " )
escribir("Качественные показатели в второй группе  из подгруппы повреждения доминирующей руки указаны в таблице 2.5.")

escribir("Таблица 2.5. Описание показателей пола, стороны поражения, доминирующей руки, повреждения доминирующей руки, типа деформации, типа активности в второй группе  из подгруппы повреждения доминирующей руки. Пример записи: процент от выборки % ( количество случаев / общее количество  случаев)* [95% доверительный интервал]")
Quantity_table("Пол",gr2_domYes$Gender,gr2_domYes$Group) 
Quantity_table("Сторона поражения",gr2_domYes$Side,gr2_domYes$Group) 
Quantity_table("Доминирующая рука",gr2_domYes$Gender,gr2_domYes$Group) 
Quantity_table("Повреждение доминирующей руки",gr2_domYes$Damage_dominant_hand,gr2_domYes$Group) 
Quantity_table("Тип деформации",gr2_domYes$Type_deformation,gr2_domYes$Group) 
Quantity_table("Тип активности",gr2_domYes$Type_action,gr2_domYes$Group) 


Describe_numericText (gr2_domYes$Age, "возраст"," пациентов в второй группе  из подгруппы повреждения доминирующей руки составил "," лет")
Describe_numericText (gr2_domYes$BMI, "ИМТ"," пациентов в второй группе  из подгруппы повреждения доминирующей руки составил "," кг/м2")	
Describe_numericText (gr2_domYes$Ri_MesD0, "лучевой наклон пораженной руки"," пациентов в второй группе  из подгруппы повреждения доминирующей руки составил "," градусов")
Describe_numericText (gr2_domYes$Vt_MesD0, "ладонный наклон пораженной руки"," пациентов в второй группе  из подгруппы повреждения доминирующей руки составил "," градусов")
Describe_numericText (gr2_domYes$Rh_MesD0, "лучелоктевой индекс пораженной руки"," пациентов в второй группе  из подгруппы повреждения доминирующей руки составил "," мм")
Describe_numericText (gr2_domYes$Ri_MesN, "лучевой наклон здоровой руки"," пациентов в второй группе  из подгруппы повреждения доминирующей руки составил "," градусов")
Describe_numericText (gr2_domYes$Vt_MesN, "ладонный наклон здоровой руки"," пациентов в второй группе  из подгруппы повреждения доминирующей руки составил "," градусов")
Describe_numericText (gr2_domYes$Rh_MesN, "лучелоктевой индекс здоровой руки"," пациентов в второй группе  из подгруппы повреждения доминирующей руки составил "," мм")
Describe_numericText (gr2_domYes$DASH0, "оценка анкетирования DASH до операции"," пациентов в второй группе  из подгруппы повреждения доминирующей руки составил "," ,баллов")
Describe_numericText (gr2_domYes$SF_16_РН0, "оценка анкетирования SF-16 (физический компанент) до операции"," пациентов в второй группе  из подгруппы повреждения доминирующей руки составил "," ,баллов")
Describe_numericText (gr2_domYes$SF_16_MН0, "оценка анкетирования SF-16 (ментальный компанент) до операции"," пациентов в второй группе  из подгруппы повреждения доминирующей руки составил "," ,баллов")

#TextPvalue(Pvalue_numeric(gr2_domYes$Age,gr2_domYes$Group),"По возрасту в второй группе  из подгруппы повреждения доминирующей руки " )
#TextPvalue(Pvalue_numeric(gr2_domYes$BMI,gr2_domYes$Group),"По ИМТ в второй группе  из подгруппы повреждения доминирующей руки " )
#TextPvalue(Pvalue_numeric(gr2_domYes$Ri_MesD0,gr2_domYes$Group),"По лучевому наклону пораженной руки" )
#TextPvalue(Pvalue_numeric(gr2_domYes$Vt_MesD0,gr2_domYes$Group),"По локтевому наклону пораженной руки" )
#TextPvalue(Pvalue_numeric(gr2_domYes$Rh_MesD0,gr2_domYes$Group),"По лучелоктевому индексу пораженной руки" )
#TextPvalue(Pvalue_numeric(gr2_domYes$Ri_MesN,gr2_domYes$Group),"По лучевому наклону здоровой руки" )
#TextPvalue(Pvalue_numeric(gr2_domYes$Vt_MesN,gr2_domYes$Group),"По локтевому наклону здоровой руки" )
#TextPvalue(Pvalue_numeric(gr2_domYes$Rh_MesN,gr2_domYes$Group),"По лучелоктевому индексу здоровой руки" )
#TextPvalue(Pvalue_numeric(gr2_domYes$DASH0,gr2_domYes$Group),"По оценке анкетирования DASH до операции" )
#TextPvalue(Pvalue_numeric(gr2_domYes$SF_16_РН0,gr2_domYes$Group),"По оценке анкетирования SF-16 (физический компанент) до операции" )
#TextPvalue(Pvalue_numeric(gr2_domYes$SF_16_MН0,gr2_domYes$Group),"По оценке анкетирования SF-16 (ментальный компанент) до операции" )
escribir("Количественные показатели второй группе  из подгруппы повреждения доминирующей руки указаны в таблице 2.6.")

escribir("Таблица 2.6. Описание количественных показателей в второй группе  из подгруппы повреждения доминирующей руки возраста, ИМТ, 
         лучевой наклон, локтевой наклон, лучелоктевой индекс пораженной руки,
         лучевой наклон, локтевой наклон, лучелоктевой индекс здоровой руки,
         оценке анкетирования DASH, SF-16 (физический компанент), SF-16 (ментальный компанент)")

Table_numeric2("возраст",gr2_domYes$Age, gr2_domYes$Group)
Table_numeric2("ИМТ",gr2_domYes$BMI, gr2_domYes$Group)
Table_numeric2("лучевой наклон пораженной руки",gr2_domYes$Ri_MesD0, gr2_domYes$Group)
Table_numeric2("локтевой наклон пораженной руки",gr2_domYes$Vt_MesD0, gr2_domYes$Group)
Table_numeric2("лучелоктевой индекс пораженной руки",gr2_domYes$Rh_MesD0, gr2_domYes$Group)
Table_numeric2("лучевой наклон здоровой руки",gr2_domYes$Ri_MesN, gr2_domYes$Group)
Table_numeric2("локтевой наклон здоровой руки",gr2_domYes$Vt_MesN, gr2_domYes$Group)
Table_numeric2("лучелоктевой индекс здоровой руки",gr2_domYes$Rh_MesN, gr2_domYes$Group)
Table_numeric2("анкетирование DASH",gr2_domYes$DASH0, gr2_domYes$Group)
Table_numeric2("анкетирование SF-16 (физический компанент)",gr2_domYes$SF_16_РН0, gr2_domYes$Group)
Table_numeric2("анкетирование SF-16 (ментальный компанент)",gr2_domYes$SF_16_MН0, gr2_domYes$Group)


#######domNo#######
escrAlgo("Описание подгруппы повреждения недоминирующей руки")
Quantity_discr("В группе ",domNo$Group)
Quantity_discr("Было ",domNo$Gender)
Quantity_discr("Повреждение ",domNo$Side)
Quantity_discr("Доминирующая рука ",domNo$Dominant_hand)
Quantity_discr("Повреждение доминирующая рука ",domNo$Damage_dominant_hand)	
Quantity_discr("Тип деформации ",domNo$Type_deformation)	
Quantity_discr("Тип активности ",domNo$Type_action)


TextPvalue(pvalueQualitative(domNo$Gender,domNo$Group),"По полу" )
TextPvalue(pvalueQualitative(domNo$Side,domNo$Group),"По стороне повреждения" )
TextPvalue(pvalueQualitative(domNo$Dominant_hand,domNo$Group),"По доминирующей руке" )
TextPvalue(pvalueQualitative(domNo$Damage_dominant_hand,domNo$Group),"По повреждению доминирующей руки" )
TextPvalue(pvalueQualitative(domNo$Type_deformation,domNo$Group),"По типу деформации" )
TextPvalue(pvalueQualitative(domNo$Type_action,domNo$Group),"По типу активности" )
escribir("Качественные показатели всей выборки указаны в таблице 2.3.")

escribir("Таблица 2.3. Описание показателей пола, стороны поражения, доминирующей руки, повреждения доминирующей руки, типа деформации, типа активности во выборке недоминирующей руки. Пример записи: процент от выборки % ( количество случаев / общее количество  случаев)* [95% доверительный интервал]")
Quantity_tableP("Пол",domNo$Gender,domNo$Group) 
Quantity_tableP("Сторона поражения",domNo$Side,domNo$Group) 
Quantity_tableP("Доминирующая рука",domNo$Gender,domNo$Group) 
Quantity_tableP("Повреждение доминирующей руки",domNo$Damage_dominant_hand,domNo$Group) 
Quantity_tableP("Тип деформации",domNo$Type_deformation,domNo$Group) 
Quantity_tableP("Тип активности",domNo$Type_action,domNo$Group) 


Describe_numericText (domNo$Age, "возраст"," пациентов по выборке недоминирующей руки составил "," лет")
Describe_numericText (domNo$BMI, "ИМТ"," пациентов по выборке недоминирующей руки составил "," кг/м2")	
Describe_numericText (domNo$Ri_MesD0, "лучевой наклон пораженной руки"," пациентов по выборке недоминирующей руки составил "," градусов")
Describe_numericText (domNo$Vt_MesD0, "ладонный наклон пораженной руки"," пациентов по выборке недоминирующей руки составил "," градусов")
Describe_numericText (domNo$Rh_MesD0, "лучелоктевой индекс пораженной руки"," пациентов по выборке недоминирующей руки составил "," мм")
Describe_numericText (domNo$Ri_MesN, "лучевой наклон здоровой руки"," пациентов по выборке недоминирующей руки составил "," градусов")
Describe_numericText (domNo$Vt_MesN, "ладонный наклон здоровой руки"," пациентов по выборке недоминирующей руки составил "," градусов")
Describe_numericText (domNo$Rh_MesN, "лучелоктевой индекс здоровой руки"," пациентов по выборке недоминирующей руки составил "," мм")
Describe_numericText (domNo$DASH0, "оценка анкетирования DASH до операции"," пациентов по выборке недоминирующей руки составил "," ,баллов")
Describe_numericText (domNo$SF_16_РН0, "оценка анкетирования SF-16 (физический компанент) до операции"," пациентов по выборке недоминирующей руки составил "," ,баллов")
Describe_numericText (domNo$SF_16_MН0, "оценка анкетирования SF-16 (ментальный компанент) до операции"," пациентов по выборке недоминирующей руки составил "," ,баллов")

TextPvalue(Pvalue_numeric(domNo$Age,domNo$Group),"По возрасту" )
TextPvalue(Pvalue_numeric(domNo$BMI,domNo$Group),"По ИМТ" )
TextPvalue(Pvalue_numeric(domNo$Ri_MesD0,domNo$Group),"По лучевому наклону пораженной руки" )
TextPvalue(Pvalue_numeric(domNo$Vt_MesD0,domNo$Group),"По локтевому наклону пораженной руки" )
TextPvalue(Pvalue_numeric(domNo$Rh_MesD0,domNo$Group),"По лучелоктевому индексу пораженной руки" )
TextPvalue(Pvalue_numeric(domNo$Ri_MesN,domNo$Group),"По лучевому наклону здоровой руки" )
TextPvalue(Pvalue_numeric(domNo$Vt_MesN,domNo$Group),"По локтевому наклону здоровой руки" )
TextPvalue(Pvalue_numeric(domNo$Rh_MesN,domNo$Group),"По лучелоктевому индексу здоровой руки" )
TextPvalue(Pvalue_numeric(domNo$DASH0,domNo$Group),"По оценке анкетирования DASH до операции" )
TextPvalue(Pvalue_numeric(domNo$SF_16_РН0,domNo$Group),"По оценке анкетирования SF-16 (физический компанент) до операции" )
TextPvalue(Pvalue_numeric(domNo$SF_16_MН0,domNo$Group),"По оценке анкетирования SF-16 (ментальный компанент) до операции" )
escribir("Количественные показатели выборке недоминирующей руки указаны в таблице 2.4.")

escribir("Таблица 2.4. Описание количественных показателей возраста, ИМТ, 
         лучевой наклон, локтевой наклон, лучелоктевой индекс пораженной руки,
         лучевой наклон, локтевой наклон, лучелоктевой индекс здоровой руки,
         оценке анкетирования DASH, SF-16 (физический компанент), SF-16 (ментальный компанент)")

Table_numericP2("возраст",domNo$Age, domNo$Group)
Table_numericP2("ИМТ",domNo$BMI, domNo$Group)
Table_numericP2("лучевой наклон пораженной руки",domNo$Ri_MesD0, domNo$Group)
Table_numericP2("локтевой наклон пораженной руки",domNo$Vt_MesD0, domNo$Group)
Table_numericP2("лучелоктевой индекс пораженной руки",domNo$Rh_MesD0, domNo$Group)
Table_numericP2("лучевой наклон здоровой руки",domNo$Ri_MesN, domNo$Group)
Table_numericP2("локтевой наклон здоровой руки",domNo$Vt_MesN, domNo$Group)
Table_numericP2("лучелоктевой индекс здоровой руки",domNo$Rh_MesN, domNo$Group)
Table_numericP2("анкетирование DASH",domNo$DASH0, domNo$Group)
Table_numericP2("анкетирование SF-16 (физический компанент)",domNo$SF_16_РН0, domNo$Group)
Table_numericP2("анкетирование SF-16 (ментальный компанент)",domNo$SF_16_MН0, domNo$Group)

#######gr1_domNo#######
escrAlgo("Описание первой группы из подгруппы повреждения недоминирующей руки")
#Quantity_discr("В группе ",gr1_domNo$Group)
Quantity_discr("Было в первой группе  из подгруппы повреждения недоминирующей руки ",gr1_domNo$Gender)
Quantity_discr("Повреждение в первой группе  из подгруппы повреждения недоминирующей руки ",gr1_domNo$Side)
Quantity_discr("Доминирующая рука в первой группе  из подгруппы повреждения недоминирующей руки ",gr1_domNo$Dominant_hand)
Quantity_discr("Повреждение доминирующая рука в первой группе  из подгруппы повреждения недоминирующей руки ",gr1_domNo$Damage_dominant_hand)	
Quantity_discr("Тип деформации в первой группе  из подгруппы повреждения недоминирующей руки ",gr1_domNo$Type_deformation)	
Quantity_discr("Тип активности в первой группе  из подгруппы повреждения недоминирующей руки ",gr1_domNo$Type_action)


#TextPvalue(pvalueQualitative(gr1_domNo$Gender,gr1_domNo$Group),"По полу в первой группе  из подгруппы повреждения недоминирующей руки " )
#TextPvalue(pvalueQualitative(gr1_domNo$Side,gr1_domNo$Group),"По стороне повреждения в первой группе  из подгруппы повреждения недоминирующей руки " )
#TextPvalue(pvalueQualitative(gr1_domNo$Dominant_hand,gr1_domNo$Group),"По недоминирующей руке в первой группе  из подгруппы повреждения недоминирующей руки " )
#TextPvalue(pvalueQualitative(gr1_domNo$Damage_dominant_hand,gr1_domNo$Group),"По повреждению недоминирующей руки в первой группе  из подгруппы повреждения недоминирующей руки " )
#TextPvalue(pvalueQualitative(gr1_domNo$Type_deformation,gr1_domNo$Group),"По типу деформации в первой группе  из подгруппы повреждения недоминирующей руки " )
#TextPvalue(pvalueQualitative(gr1_domNo$Type_action,gr1_domNo$Group),"По типу активности в первой группе  из подгруппы повреждения недоминирующей руки " )
escribir("Качественные показатели в первой группе  из подгруппы повреждения недоминирующей руки указаны в таблице 2.5.")

escribir("Таблица 2.5. Описание показателей пола, стороны поражения, недоминирующей руки, повреждения недоминирующей руки, типа деформации, типа активности в первой группе  из подгруппы повреждения недоминирующей руки. Пример записи: процент от выборки % ( количество случаев / общее количество  случаев)* [95% доверительный интервал]")
Quantity_table("Пол",gr1_domNo$Gender,gr1_domNo$Group) 
Quantity_table("Сторона поражения",gr1_domNo$Side,gr1_domNo$Group) 
Quantity_table("Доминирующая рука",gr1_domNo$Gender,gr1_domNo$Group) 
Quantity_table("Повреждение недоминирующей руки",gr1_domNo$Damage_dominant_hand,gr1_domNo$Group) 
Quantity_table("Тип деформации",gr1_domNo$Type_deformation,gr1_domNo$Group) 
Quantity_table("Тип активности",gr1_domNo$Type_action,gr1_domNo$Group) 


Describe_numericText (gr1_domNo$Age, "возраст"," пациентов в первой группе  из подгруппы повреждения недоминирующей руки составил "," лет")
Describe_numericText (gr1_domNo$BMI, "ИМТ"," пациентов в первой группе  из подгруппы повреждения недоминирующей руки составил "," кг/м2")	
Describe_numericText (gr1_domNo$Ri_MesD0, "лучевой наклон пораженной руки"," пациентов в первой группе  из подгруппы повреждения недоминирующей руки составил "," градусов")
Describe_numericText (gr1_domNo$Vt_MesD0, "ладонный наклон пораженной руки"," пациентов в первой группе  из подгруппы повреждения недоминирующей руки составил "," градусов")
Describe_numericText (gr1_domNo$Rh_MesD0, "лучелоктевой индекс пораженной руки"," пациентов в первой группе  из подгруппы повреждения недоминирующей руки составил "," мм")
Describe_numericText (gr1_domNo$Ri_MesN, "лучевой наклон здоровой руки"," пациентов в первой группе  из подгруппы повреждения недоминирующей руки составил "," градусов")
Describe_numericText (gr1_domNo$Vt_MesN, "ладонный наклон здоровой руки"," пациентов в первой группе  из подгруппы повреждения недоминирующей руки составил "," градусов")
Describe_numericText (gr1_domNo$Rh_MesN, "лучелоктевой индекс здоровой руки"," пациентов в первой группе  из подгруппы повреждения недоминирующей руки составил "," мм")
Describe_numericText (gr1_domNo$DASH0, "оценка анкетирования DASH до операции"," пациентов в первой группе  из подгруппы повреждения недоминирующей руки составил "," ,баллов")
Describe_numericText (gr1_domNo$SF_16_РН0, "оценка анкетирования SF-16 (физический компанент) до операции"," пациентов в первой группе  из подгруппы повреждения недоминирующей руки составил "," ,баллов")
Describe_numericText (gr1_domNo$SF_16_MН0, "оценка анкетирования SF-16 (ментальный компанент) до операции"," пациентов в первой группе  из подгруппы повреждения недоминирующей руки составил "," ,баллов")

#TextPvalue(Pvalue_numeric(gr1_domNo$Age,gr1_domNo$Group),"По возрасту в первой группе  из подгруппы повреждения недоминирующей руки " )
#TextPvalue(Pvalue_numeric(gr1_domNo$BMI,gr1_domNo$Group),"По ИМТ в первой группе  из подгруппы повреждения недоминирующей руки " )
#TextPvalue(Pvalue_numeric(gr1_domNo$Ri_MesD0,gr1_domNo$Group),"По лучевому наклону пораженной руки" )
#TextPvalue(Pvalue_numeric(gr1_domNo$Vt_MesD0,gr1_domNo$Group),"По локтевому наклону пораженной руки" )
#TextPvalue(Pvalue_numeric(gr1_domNo$Rh_MesD0,gr1_domNo$Group),"По лучелоктевому индексу пораженной руки" )
#TextPvalue(Pvalue_numeric(gr1_domNo$Ri_MesN,gr1_domNo$Group),"По лучевому наклону здоровой руки" )
#TextPvalue(Pvalue_numeric(gr1_domNo$Vt_MesN,gr1_domNo$Group),"По локтевому наклону здоровой руки" )
#TextPvalue(Pvalue_numeric(gr1_domNo$Rh_MesN,gr1_domNo$Group),"По лучелоктевому индексу здоровой руки" )
#TextPvalue(Pvalue_numeric(gr1_domNo$DASH0,gr1_domNo$Group),"По оценке анкетирования DASH до операции" )
#TextPvalue(Pvalue_numeric(gr1_domNo$SF_16_РН0,gr1_domNo$Group),"По оценке анкетирования SF-16 (физический компанент) до операции" )
#TextPvalue(Pvalue_numeric(gr1_domNo$SF_16_MН0,gr1_domNo$Group),"По оценке анкетирования SF-16 (ментальный компанент) до операции" )
escribir("Количественные показатели первой группе  из подгруппы повреждения недоминирующей руки указаны в таблице 2.6.")

escribir("Таблица 2.6. Описание количественных показателей в первой группе  из подгруппы повреждения недоминирующей руки возраста, ИМТ, 
         лучевой наклон, локтевой наклон, лучелоктевой индекс пораженной руки,
         лучевой наклон, локтевой наклон, лучелоктевой индекс здоровой руки,
         оценке анкетирования DASH, SF-16 (физический компанент), SF-16 (ментальный компанент)")

Table_numeric2("возраст",gr1_domNo$Age, gr1_domNo$Group)
Table_numeric2("ИМТ",gr1_domNo$BMI, gr1_domNo$Group)
Table_numeric2("лучевой наклон пораженной руки",gr1_domNo$Ri_MesD0, gr1_domNo$Group)
Table_numeric2("локтевой наклон пораженной руки",gr1_domNo$Vt_MesD0, gr1_domNo$Group)
Table_numeric2("лучелоктевой индекс пораженной руки",gr1_domNo$Rh_MesD0, gr1_domNo$Group)
Table_numeric2("лучевой наклон здоровой руки",gr1_domNo$Ri_MesN, gr1_domNo$Group)
Table_numeric2("локтевой наклон здоровой руки",gr1_domNo$Vt_MesN, gr1_domNo$Group)
Table_numeric2("лучелоктевой индекс здоровой руки",gr1_domNo$Rh_MesN, gr1_domNo$Group)
Table_numeric2("анкетирование DASH",gr1_domNo$DASH0, gr1_domNo$Group)
Table_numeric2("анкетирование SF-16 (физический компанент)",gr1_domNo$SF_16_РН0, gr1_domNo$Group)
Table_numeric2("анкетирование SF-16 (ментальный компанент)",gr1_domNo$SF_16_MН0, gr1_domNo$Group)



#######gr2_domNo#######
escribir("Описание второй группе из подгруппы повреждения недоминирующей руки")
#Quantity_discr("В группе ",gr2_domNo$Group)
Quantity_discr("Было в второй группе  из подгруппы повреждения недоминирующей руки ",gr2_domNo$Gender)
Quantity_discr("Повреждение в второй группе  из подгруппы повреждения недоминирующей руки ",gr2_domNo$Side)
Quantity_discr("Доминирующая рука в второй группе  из подгруппы повреждения недоминирующей руки ",gr2_domNo$Dominant_hand)
Quantity_discr("Повреждение доминирующая рука в второй группе  из подгруппы повреждения недоминирующей руки ",gr2_domNo$Damage_dominant_hand)	
Quantity_discr("Тип деформации в второй группе  из подгруппы повреждения недоминирующей руки ",gr2_domNo$Type_deformation)	
Quantity_discr("Тип активности в второй группе  из подгруппы повреждения недоминирующей руки ",gr2_domNo$Type_action)


#TextPvalue(pvalueQualitative(gr2_domNo$Gender,gr2_domNo$Group),"По полу в второй группе  из подгруппы повреждения недоминирующей руки " )
#TextPvalue(pvalueQualitative(gr2_domNo$Side,gr2_domNo$Group),"По стороне повреждения в второй группе  из подгруппы повреждения недоминирующей руки " )
#TextPvalue(pvalueQualitative(gr2_domNo$Dominant_hand,gr2_domNo$Group),"По недоминирующей руке в второй группе  из подгруппы повреждения недоминирующей руки " )
#TextPvalue(pvalueQualitative(gr2_domNo$Damage_dominant_hand,gr2_domNo$Group),"По повреждению недоминирующей руки в второй группе  из подгруппы повреждения недоминирующей руки " )
#TextPvalue(pvalueQualitative(gr2_domNo$Type_deformation,gr2_domNo$Group),"По типу деформации в второй группе  из подгруппы повреждения недоминирующей руки " )
#TextPvalue(pvalueQualitative(gr2_domNo$Type_action,gr2_domNo$Group),"По типу активности в второй группе  из подгруппы повреждения недоминирующей руки " )
escribir("Качественные показатели в второй группе  из подгруппы повреждения недоминирующей руки указаны в таблице 2.5.")

escribir("Таблица 2.5. Описание показателей пола, стороны поражения, недоминирующей руки, повреждения недоминирующей руки, типа деформации, типа активности в второй группе  из подгруппы повреждения недоминирующей руки. Пример записи: процент от выборки % ( количество случаев / общее количество  случаев)* [95% доверительный интервал]")
Quantity_table("Пол",gr2_domNo$Gender,gr2_domNo$Group) 
Quantity_table("Сторона поражения",gr2_domNo$Side,gr2_domNo$Group) 
Quantity_table("Доминирующая рука",gr2_domNo$Gender,gr2_domNo$Group) 
Quantity_table("Повреждение недоминирующей руки",gr2_domNo$Damage_dominant_hand,gr2_domNo$Group) 
Quantity_table("Тип деформации",gr2_domNo$Type_deformation,gr2_domNo$Group) 
Quantity_table("Тип активности",gr2_domNo$Type_action,gr2_domNo$Group) 


Describe_numericText (gr2_domNo$Age, "возраст"," пациентов в второй группе  из подгруппы повреждения недоминирующей руки составил "," лет")
Describe_numericText (gr2_domNo$BMI, "ИМТ"," пациентов в второй группе  из подгруппы повреждения недоминирующей руки составил "," кг/м2")	
Describe_numericText (gr2_domNo$Ri_MesD0, "лучевой наклон пораженной руки"," пациентов в второй группе  из подгруппы повреждения недоминирующей руки составил "," градусов")
Describe_numericText (gr2_domNo$Vt_MesD0, "ладонный наклон пораженной руки"," пациентов в второй группе  из подгруппы повреждения недоминирующей руки составил "," градусов")
Describe_numericText (gr2_domNo$Rh_MesD0, "лучелоктевой индекс пораженной руки"," пациентов в второй группе  из подгруппы повреждения недоминирующей руки составил "," мм")
Describe_numericText (gr2_domNo$Ri_MesN, "лучевой наклон здоровой руки"," пациентов в второй группе  из подгруппы повреждения недоминирующей руки составил "," градусов")
Describe_numericText (gr2_domNo$Vt_MesN, "ладонный наклон здоровой руки"," пациентов в второй группе  из подгруппы повреждения недоминирующей руки составил "," градусов")
Describe_numericText (gr2_domNo$Rh_MesN, "лучелоктевой индекс здоровой руки"," пациентов в второй группе  из подгруппы повреждения недоминирующей руки составил "," мм")
Describe_numericText (gr2_domNo$DASH0, "оценка анкетирования DASH до операции"," пациентов в второй группе  из подгруппы повреждения недоминирующей руки составил "," ,баллов")
Describe_numericText (gr2_domNo$SF_16_РН0, "оценка анкетирования SF-16 (физический компанент) до операции"," пациентов в второй группе  из подгруппы повреждения недоминирующей руки составил "," ,баллов")
Describe_numericText (gr2_domNo$SF_16_MН0, "оценка анкетирования SF-16 (ментальный компанент) до операции"," пациентов в второй группе  из подгруппы повреждения недоминирующей руки составил "," ,баллов")

#TextPvalue(Pvalue_numeric(gr2_domNo$Age,gr2_domNo$Group),"По возрасту в второй группе  из подгруппы повреждения недоминирующей руки " )
#TextPvalue(Pvalue_numeric(gr2_domNo$BMI,gr2_domNo$Group),"По ИМТ в второй группе  из подгруппы повреждения недоминирующей руки " )
#TextPvalue(Pvalue_numeric(gr2_domNo$Ri_MesD0,gr2_domNo$Group),"По лучевому наклону пораженной руки" )
#TextPvalue(Pvalue_numeric(gr2_domNo$Vt_MesD0,gr2_domNo$Group),"По локтевому наклону пораженной руки" )
#TextPvalue(Pvalue_numeric(gr2_domNo$Rh_MesD0,gr2_domNo$Group),"По лучелоктевому индексу пораженной руки" )
#TextPvalue(Pvalue_numeric(gr2_domNo$Ri_MesN,gr2_domNo$Group),"По лучевому наклону здоровой руки" )
#TextPvalue(Pvalue_numeric(gr2_domNo$Vt_MesN,gr2_domNo$Group),"По локтевому наклону здоровой руки" )
#TextPvalue(Pvalue_numeric(gr2_domNo$Rh_MesN,gr2_domNo$Group),"По лучелоктевому индексу здоровой руки" )
#TextPvalue(Pvalue_numeric(gr2_domNo$DASH0,gr2_domNo$Group),"По оценке анкетирования DASH до операции" )
#TextPvalue(Pvalue_numeric(gr2_domNo$SF_16_РН0,gr2_domNo$Group),"По оценке анкетирования SF-16 (физический компанент) до операции" )
#TextPvalue(Pvalue_numeric(gr2_domNo$SF_16_MН0,gr2_domNo$Group),"По оценке анкетирования SF-16 (ментальный компанент) до операции" )
escribir("Количественные показатели второй группе  из подгруппы повреждения недоминирующей руки указаны в таблице 2.6.")

escribir("Таблица 2.6. Описание количественных показателей в второй группе  из подгруппы повреждения недоминирующей руки возраста, ИМТ, 
         лучевой наклон, локтевой наклон, лучелоктевой индекс пораженной руки,
         лучевой наклон, локтевой наклон, лучелоктевой индекс здоровой руки,
         оценке анкетирования DASH, SF-16 (физический компанент), SF-16 (ментальный компанент)")

Table_numeric2("возраст",gr2_domNo$Age, gr2_domNo$Group)
Table_numeric2("ИМТ",gr2_domNo$BMI, gr2_domNo$Group)
Table_numeric2("лучевой наклон пораженной руки",gr2_domNo$Ri_MesD0, gr2_domNo$Group)
Table_numeric2("локтевой наклон пораженной руки",gr2_domNo$Vt_MesD0, gr2_domNo$Group)
Table_numeric2("лучелоктевой индекс пораженной руки",gr2_domNo$Rh_MesD0, gr2_domNo$Group)
Table_numeric2("лучевой наклон здоровой руки",gr2_domNo$Ri_MesN, gr2_domNo$Group)
Table_numeric2("локтевой наклон здоровой руки",gr2_domNo$Vt_MesN, gr2_domNo$Group)
Table_numeric2("лучелоктевой индекс здоровой руки",gr2_domNo$Rh_MesN, gr2_domNo$Group)
Table_numeric2("анкетирование DASH",gr2_domNo$DASH0, gr2_domNo$Group)
Table_numeric2("анкетирование SF-16 (физический компанент)",gr2_domNo$SF_16_РН0, gr2_domNo$Group)
Table_numeric2("анкетирование SF-16 (ментальный компанент)",gr2_domNo$SF_16_MН0, gr2_domNo$Group)


#######defDors#######
escribir("Описание м дорсальной деформации руки")
Quantity_discr("В группе ",defDors$Group)
Quantity_discr("Было ",defDors$Gender)
Quantity_discr("Повреждение ",defDors$Side)
Quantity_discr("Доминирующая рука ",defDors$Dominant_hand)
Quantity_discr("Повреждение доминирующая рука ",defDors$Damage_dominant_hand)	
Quantity_discr("Тип деформации ",defDors$Type_deformation)	
Quantity_discr("Тип активности ",defDors$Type_action)


TextPvalue(pvalueQualitative(defDors$Gender,defDors$Group),"По полу" )
TextPvalue(pvalueQualitative(defDors$Side,defDors$Group),"По стороне повреждения" )
TextPvalue(pvalueQualitative(defDors$Dominant_hand,defDors$Group),"По доминирующей руке" )
TextPvalue(pvalueQualitative(defDors$Damage_dominant_hand,defDors$Group),"По повреждению доминирующей руки" )
TextPvalue(pvalueQualitative(defDors$Type_deformation,defDors$Group),"По типу деформации" )
TextPvalue(pvalueQualitative(defDors$Type_action,defDors$Group),"По типу активности" )
escribir("Качественные показатели всей выборки указаны в таблице 2.3.")

escribir("Таблица 2.3. Описание показателей пола, стороны поражения, доминирующей руки, повреждения доминирующей руки, типа деформации, типа активности во выборке дорсальной деформации. Пример записи: процент от выборки % ( количество случаев / общее количество  случаев)* [95% доверительный интервал]")
Quantity_tableP("Пол",defDors$Gender,defDors$Group) 
Quantity_tableP("Сторона поражения",defDors$Side,defDors$Group) 
Quantity_tableP("Доминирующая рука",defDors$Gender,defDors$Group) 
Quantity_tableP("Повреждение доминирующей руки",defDors$Damage_dominant_hand,defDors$Group) 
Quantity_tableP("Тип деформации",defDors$Type_deformation,defDors$Group) 
Quantity_tableP("Тип активности",defDors$Type_action,defDors$Group) 


Describe_numericText (defDors$Age, "возраст"," пациентов по выборке дорсальной деформации составил "," лет")
Describe_numericText (defDors$BMI, "ИМТ"," пациентов по выборке дорсальной деформации составил "," кг/м2")	
Describe_numericText (defDors$Ri_MesD0, "лучевой наклон пораженной руки"," пациентов по выборке дорсальной деформации составил "," градусов")
Describe_numericText (defDors$Vt_MesD0, "ладонный наклон пораженной руки"," пациентов по выборке дорсальной деформации составил "," градусов")
Describe_numericText (defDors$Rh_MesD0, "лучелоктевой индекс пораженной руки"," пациентов по выборке дорсальной деформации составил "," мм")
Describe_numericText (defDors$Ri_MesN, "лучевой наклон здоровой руки"," пациентов по выборке дорсальной деформации составил "," градусов")
Describe_numericText (defDors$Vt_MesN, "ладонный наклон здоровой руки"," пациентов по выборке дорсальной деформации составил "," градусов")
Describe_numericText (defDors$Rh_MesN, "лучелоктевой индекс здоровой руки"," пациентов по выборке дорсальной деформации составил "," мм")
Describe_numericText (defDors$DASH0, "оценка анкетирования DASH до операции"," пациентов по выборке дорсальной деформации составил "," ,баллов")
Describe_numericText (defDors$SF_16_РН0, "оценка анкетирования SF-16 (физический компанент) до операции"," пациентов по выборке дорсальной деформации составил "," ,баллов")
Describe_numericText (defDors$SF_16_MН0, "оценка анкетирования SF-16 (ментальный компанент) до операции"," пациентов по выборке дорсальной деформации составил "," ,баллов")

TextPvalue(Pvalue_numeric(defDors$Age,defDors$Group),"По возрасту" )
TextPvalue(Pvalue_numeric(defDors$BMI,defDors$Group),"По ИМТ" )
TextPvalue(Pvalue_numeric(defDors$Ri_MesD0,defDors$Group),"По лучевому наклону пораженной руки" )
TextPvalue(Pvalue_numeric(defDors$Vt_MesD0,defDors$Group),"По локтевому наклону пораженной руки" )
TextPvalue(Pvalue_numeric(defDors$Rh_MesD0,defDors$Group),"По лучелоктевому индексу пораженной руки" )
TextPvalue(Pvalue_numeric(defDors$Ri_MesN,defDors$Group),"По лучевому наклону здоровой руки" )
TextPvalue(Pvalue_numeric(defDors$Vt_MesN,defDors$Group),"По локтевому наклону здоровой руки" )
TextPvalue(Pvalue_numeric(defDors$Rh_MesN,defDors$Group),"По лучелоктевому индексу здоровой руки" )
TextPvalue(Pvalue_numeric(defDors$DASH0,defDors$Group),"По оценке анкетирования DASH до операции" )
TextPvalue(Pvalue_numeric(defDors$SF_16_РН0,defDors$Group),"По оценке анкетирования SF-16 (физический компанент) до операции" )
TextPvalue(Pvalue_numeric(defDors$SF_16_MН0,defDors$Group),"По оценке анкетирования SF-16 (ментальный компанент) до операции" )
escribir("Количественные показатели выборке дорсальной деформации указаны в таблице 2.4.")

escribir("Таблица 2.4. Описание количественных показателей возраста, ИМТ, 
         лучевой наклон, локтевой наклон, лучелоктевой индекс пораженной руки,
         лучевой наклон, локтевой наклон, лучелоктевой индекс здоровой руки,
         оценке анкетирования DASH, SF-16 (физический компанент), SF-16 (ментальный компанент)")

Table_numericP2("возраст",defDors$Age, defDors$Group)
Table_numericP2("ИМТ",defDors$BMI, defDors$Group)
Table_numericP2("лучевой наклон пораженной руки",defDors$Ri_MesD0, defDors$Group)
Table_numericP2("локтевой наклон пораженной руки",defDors$Vt_MesD0, defDors$Group)
Table_numericP2("лучелоктевой индекс пораженной руки",defDors$Rh_MesD0, defDors$Group)
Table_numericP2("лучевой наклон здоровой руки",defDors$Ri_MesN, defDors$Group)
Table_numericP2("локтевой наклон здоровой руки",defDors$Vt_MesN, defDors$Group)
Table_numericP2("лучелоктевой индекс здоровой руки",defDors$Rh_MesN, defDors$Group)
Table_numericP2("анкетирование DASH",defDors$DASH0, defDors$Group)
Table_numericP2("анкетирование SF-16 (физический компанент)",defDors$SF_16_РН0, defDors$Group)
Table_numericP2("анкетирование SF-16 (ментальный компанент)",defDors$SF_16_MН0, defDors$Group)



#######gr1_defDors#######
escribir("Описание первой группы из подгруппы дорсальной деформации руки")
#Quantity_discr("В группе ",gr1_defDors$Group)
Quantity_discr("Было в первой группе из подгруппы дорсальной деформации ",gr1_defDors$Gender)
Quantity_discr("Повреждение в первой группе из подгруппы дорсальной деформации ",gr1_defDors$Side)
Quantity_discr("Доминирующая рука в первой группе из подгруппы дорсальной деформации ",gr1_defDors$Dominant_hand)
Quantity_discr("Повреждение доминирующая рука в первой группе из подгруппы дорсальной деформации ",gr1_defDors$Damage_dominant_hand)	
Quantity_discr("Тип деформации в первой группе из подгруппы дорсальной деформации ",gr1_defDors$Type_deformation)	
Quantity_discr("Тип активности в первой группе из подгруппы дорсальной деформации ",gr1_defDors$Type_action)


#TextPvalue(pvalueQualitative(gr1_defDors$Gender,gr1_defDors$Group),"По полу в первой группе из подгруппы дорсальной деформации " )
#TextPvalue(pvalueQualitative(gr1_defDors$Side,gr1_defDors$Group),"По стороне повреждения в первой группе из подгруппы дорсальной деформации " )
#TextPvalue(pvalueQualitative(gr1_defDors$Dominant_hand,gr1_defDors$Group),"По недоминирующей руке в первой группе из подгруппы дорсальной деформации " )
#TextPvalue(pvalueQualitative(gr1_defDors$Damage_dominant_hand,gr1_defDors$Group),"По повреждению недоминирующей руки в первой группе из подгруппы дорсальной деформации " )
#TextPvalue(pvalueQualitative(gr1_defDors$Type_deformation,gr1_defDors$Group),"По типу деформации в первой группе из подгруппы дорсальной деформации " )
#TextPvalue(pvalueQualitative(gr1_defDors$Type_action,gr1_defDors$Group),"По типу активности в первой группе из подгруппы дорсальной деформации " )
escribir("Качественные показатели в первой группе из подгруппы дорсальной деформации указаны в таблице 2.5.")

escribir("Таблица 2.5. Описание показателей пола, стороны поражения, недоминирующей руки, повреждения недоминирующей руки, типа деформации, типа активности в первой группе из подгруппы дорсальной деформации. Пример записи: процент от выборки % ( количество случаев / общее количество  случаев)* [95% доверительный интервал]")
Quantity_table("Пол",gr1_defDors$Gender,gr1_defDors$Group) 
Quantity_table("Сторона поражения",gr1_defDors$Side,gr1_defDors$Group) 
Quantity_table("Доминирующая рука",gr1_defDors$Gender,gr1_defDors$Group) 
Quantity_table("Повреждение недоминирующей руки",gr1_defDors$Damage_dominant_hand,gr1_defDors$Group) 
Quantity_table("Тип деформации",gr1_defDors$Type_deformation,gr1_defDors$Group) 
Quantity_table("Тип активности",gr1_defDors$Type_action,gr1_defDors$Group) 


Describe_numericText (gr1_defDors$Age, "возраст"," пациентов в первой группе из подгруппы дорсальной деформации составил "," лет")
Describe_numericText (gr1_defDors$BMI, "ИМТ"," пациентов в первой группе из подгруппы дорсальной деформации составил "," кг/м2")	
Describe_numericText (gr1_defDors$Ri_MesD0, "лучевой наклон пораженной руки"," пациентов в первой группе из подгруппы дорсальной деформации составил "," градусов")
Describe_numericText (gr1_defDors$Vt_MesD0, "ладонный наклон пораженной руки"," пациентов в первой группе из подгруппы дорсальной деформации составил "," градусов")
Describe_numericText (gr1_defDors$Rh_MesD0, "лучелоктевой индекс пораженной руки"," пациентов в первой группе из подгруппы дорсальной деформации составил "," мм")
Describe_numericText (gr1_defDors$Ri_MesN, "лучевой наклон здоровой руки"," пациентов в первой группе из подгруппы дорсальной деформации составил "," градусов")
Describe_numericText (gr1_defDors$Vt_MesN, "ладонный наклон здоровой руки"," пациентов в первой группе из подгруппы дорсальной деформации составил "," градусов")
Describe_numericText (gr1_defDors$Rh_MesN, "лучелоктевой индекс здоровой руки"," пациентов в первой группе из подгруппы дорсальной деформации составил "," мм")
Describe_numericText (gr1_defDors$DASH0, "оценка анкетирования DASH до операции"," пациентов в первой группе из подгруппы дорсальной деформации составил "," ,баллов")
Describe_numericText (gr1_defDors$SF_16_РН0, "оценка анкетирования SF-16 (физический компанент) до операции"," пациентов в первой группе из подгруппы дорсальной деформации составил "," ,баллов")
Describe_numericText (gr1_defDors$SF_16_MН0, "оценка анкетирования SF-16 (ментальный компанент) до операции"," пациентов в первой группе из подгруппы дорсальной деформации составил "," ,баллов")

#TextPvalue(Pvalue_numeric(gr1_defDors$Age,gr1_defDors$Group),"По возрасту в первой группе из подгруппы дорсальной деформации " )
#TextPvalue(Pvalue_numeric(gr1_defDors$BMI,gr1_defDors$Group),"По ИМТ в первой группе из подгруппы дорсальной деформации " )
#TextPvalue(Pvalue_numeric(gr1_defDors$Ri_MesD0,gr1_defDors$Group),"По лучевому наклону пораженной руки" )
#TextPvalue(Pvalue_numeric(gr1_defDors$Vt_MesD0,gr1_defDors$Group),"По локтевому наклону пораженной руки" )
#TextPvalue(Pvalue_numeric(gr1_defDors$Rh_MesD0,gr1_defDors$Group),"По лучелоктевому индексу пораженной руки" )
#TextPvalue(Pvalue_numeric(gr1_defDors$Ri_MesN,gr1_defDors$Group),"По лучевому наклону здоровой руки" )
#TextPvalue(Pvalue_numeric(gr1_defDors$Vt_MesN,gr1_defDors$Group),"По локтевому наклону здоровой руки" )
#TextPvalue(Pvalue_numeric(gr1_defDors$Rh_MesN,gr1_defDors$Group),"По лучелоктевому индексу здоровой руки" )
#TextPvalue(Pvalue_numeric(gr1_defDors$DASH0,gr1_defDors$Group),"По оценке анкетирования DASH до операции" )
#TextPvalue(Pvalue_numeric(gr1_defDors$SF_16_РН0,gr1_defDors$Group),"По оценке анкетирования SF-16 (физический компанент) до операции" )
#TextPvalue(Pvalue_numeric(gr1_defDors$SF_16_MН0,gr1_defDors$Group),"По оценке анкетирования SF-16 (ментальный компанент) до операции" )
escribir("Количественные показатели первой группе из подгруппы дорсальной деформации указаны в таблице 2.6.")

escribir("Таблица 2.6. Описание количественных показателей в первой группе из подгруппы дорсальной деформации возраста, ИМТ, 
         лучевой наклон, локтевой наклон, лучелоктевой индекс пораженной руки,
         лучевой наклон, локтевой наклон, лучелоктевой индекс здоровой руки,
         оценке анкетирования DASH, SF-16 (физический компанент), SF-16 (ментальный компанент)")

Table_numeric2("возраст",gr1_defDors$Age, gr1_defDors$Group)
Table_numeric2("ИМТ",gr1_defDors$BMI, gr1_defDors$Group)
Table_numeric2("лучевой наклон пораженной руки",gr1_defDors$Ri_MesD0, gr1_defDors$Group)
Table_numeric2("локтевой наклон пораженной руки",gr1_defDors$Vt_MesD0, gr1_defDors$Group)
Table_numeric2("лучелоктевой индекс пораженной руки",gr1_defDors$Rh_MesD0, gr1_defDors$Group)
Table_numeric2("лучевой наклон здоровой руки",gr1_defDors$Ri_MesN, gr1_defDors$Group)
Table_numeric2("локтевой наклон здоровой руки",gr1_defDors$Vt_MesN, gr1_defDors$Group)
Table_numeric2("лучелоктевой индекс здоровой руки",gr1_defDors$Rh_MesN, gr1_defDors$Group)
Table_numeric2("анкетирование DASH",gr1_defDors$DASH0, gr1_defDors$Group)
Table_numeric2("анкетирование SF-16 (физический компанент)",gr1_defDors$SF_16_РН0, gr1_defDors$Group)
Table_numeric2("анкетирование SF-16 (ментальный компанент)",gr1_defDors$SF_16_MН0, gr1_defDors$Group)



#######gr2_defDors#######
escribir("Описание второй группе из подгруппы дорсальной деформации руки")
#Quantity_discr("В группе ",gr2_defDors$Group)
Quantity_discr("Было в второй группе из подгруппы дорсальной деформации ",gr2_defDors$Gender)
Quantity_discr("Повреждение в второй группе из подгруппы дорсальной деформации ",gr2_defDors$Side)
Quantity_discr("Доминирующая рука в второй группе из подгруппы дорсальной деформации ",gr2_defDors$Dominant_hand)
Quantity_discr("Повреждение доминирующая рука в второй группе из подгруппы дорсальной деформации ",gr2_defDors$Damage_dominant_hand)	
Quantity_discr("Тип деформации в второй группе из подгруппы дорсальной деформации ",gr2_defDors$Type_deformation)	
Quantity_discr("Тип активности в второй группе из подгруппы дорсальной деформации ",gr2_defDors$Type_action)


#TextPvalue(pvalueQualitative(gr2_defDors$Gender,gr2_defDors$Group),"По полу в второй группе из подгруппы дорсальной деформации " )
#TextPvalue(pvalueQualitative(gr2_defDors$Side,gr2_defDors$Group),"По стороне повреждения в второй группе из подгруппы дорсальной деформации " )
#TextPvalue(pvalueQualitative(gr2_defDors$Dominant_hand,gr2_defDors$Group),"По недоминирующей руке в второй группе из подгруппы дорсальной деформации " )
#TextPvalue(pvalueQualitative(gr2_defDors$Damage_dominant_hand,gr2_defDors$Group),"По повреждению недоминирующей руки в второй группе из подгруппы дорсальной деформации " )
#TextPvalue(pvalueQualitative(gr2_defDors$Type_deformation,gr2_defDors$Group),"По типу деформации в второй группе из подгруппы дорсальной деформации " )
#TextPvalue(pvalueQualitative(gr2_defDors$Type_action,gr2_defDors$Group),"По типу активности в второй группе из подгруппы дорсальной деформации " )
escribir("Качественные показатели в второй группе из подгруппы дорсальной деформации указаны в таблице 2.5.")

escribir("Таблица 2.5. Описание показателей пола, стороны поражения, недоминирующей руки, повреждения недоминирующей руки, типа деформации, типа активности в второй группе из подгруппы дорсальной деформации. Пример записи: процент от выборки % ( количество случаев / общее количество  случаев)* [95% доверительный интервал]")
Quantity_table("Пол",gr2_defDors$Gender,gr2_defDors$Group) 
Quantity_table("Сторона поражения",gr2_defDors$Side,gr2_defDors$Group) 
Quantity_table("Доминирующая рука",gr2_defDors$Gender,gr2_defDors$Group) 
Quantity_table("Повреждение недоминирующей руки",gr2_defDors$Damage_dominant_hand,gr2_defDors$Group) 
Quantity_table("Тип деформации",gr2_defDors$Type_deformation,gr2_defDors$Group) 
Quantity_table("Тип активности",gr2_defDors$Type_action,gr2_defDors$Group) 


Describe_numericText (gr2_defDors$Age, "возраст"," пациентов в второй группе из подгруппы дорсальной деформации составил "," лет")
Describe_numericText (gr2_defDors$BMI, "ИМТ"," пациентов в второй группе из подгруппы дорсальной деформации составил "," кг/м2")	
Describe_numericText (gr2_defDors$Ri_MesD0, "лучевой наклон пораженной руки"," пациентов в второй группе из подгруппы дорсальной деформации составил "," градусов")
Describe_numericText (gr2_defDors$Vt_MesD0, "ладонный наклон пораженной руки"," пациентов в второй группе из подгруппы дорсальной деформации составил "," градусов")
Describe_numericText (gr2_defDors$Rh_MesD0, "лучелоктевой индекс пораженной руки"," пациентов в второй группе из подгруппы дорсальной деформации составил "," мм")
Describe_numericText (gr2_defDors$Ri_MesN, "лучевой наклон здоровой руки"," пациентов в второй группе из подгруппы дорсальной деформации составил "," градусов")
Describe_numericText (gr2_defDors$Vt_MesN, "ладонный наклон здоровой руки"," пациентов в второй группе из подгруппы дорсальной деформации составил "," градусов")
Describe_numericText (gr2_defDors$Rh_MesN, "лучелоктевой индекс здоровой руки"," пациентов в второй группе из подгруппы дорсальной деформации составил "," мм")
Describe_numericText (gr2_defDors$DASH0, "оценка анкетирования DASH до операции"," пациентов в второй группе из подгруппы дорсальной деформации составил "," ,баллов")
Describe_numericText (gr2_defDors$SF_16_РН0, "оценка анкетирования SF-16 (физический компанент) до операции"," пациентов в второй группе из подгруппы дорсальной деформации составил "," ,баллов")
Describe_numericText (gr2_defDors$SF_16_MН0, "оценка анкетирования SF-16 (ментальный компанент) до операции"," пациентов в второй группе из подгруппы дорсальной деформации составил "," ,баллов")

#TextPvalue(Pvalue_numeric(gr2_defDors$Age,gr2_defDors$Group),"По возрасту в второй группе из подгруппы дорсальной деформации " )
#TextPvalue(Pvalue_numeric(gr2_defDors$BMI,gr2_defDors$Group),"По ИМТ в второй группе из подгруппы дорсальной деформации " )
#TextPvalue(Pvalue_numeric(gr2_defDors$Ri_MesD0,gr2_defDors$Group),"По лучевому наклону пораженной руки" )
#TextPvalue(Pvalue_numeric(gr2_defDors$Vt_MesD0,gr2_defDors$Group),"По локтевому наклону пораженной руки" )
#TextPvalue(Pvalue_numeric(gr2_defDors$Rh_MesD0,gr2_defDors$Group),"По лучелоктевому индексу пораженной руки" )
#TextPvalue(Pvalue_numeric(gr2_defDors$Ri_MesN,gr2_defDors$Group),"По лучевому наклону здоровой руки" )
#TextPvalue(Pvalue_numeric(gr2_defDors$Vt_MesN,gr2_defDors$Group),"По локтевому наклону здоровой руки" )
#TextPvalue(Pvalue_numeric(gr2_defDors$Rh_MesN,gr2_defDors$Group),"По лучелоктевому индексу здоровой руки" )
#TextPvalue(Pvalue_numeric(gr2_defDors$DASH0,gr2_defDors$Group),"По оценке анкетирования DASH до операции" )
#TextPvalue(Pvalue_numeric(gr2_defDors$SF_16_РН0,gr2_defDors$Group),"По оценке анкетирования SF-16 (физический компанент) до операции" )
#TextPvalue(Pvalue_numeric(gr2_defDors$SF_16_MН0,gr2_defDors$Group),"По оценке анкетирования SF-16 (ментальный компанент) до операции" )
escribir("Количественные показатели второй группе из подгруппы дорсальной деформации указаны в таблице 2.6.")

escribir("Таблица 2.6. Описание количественных показателей в второй группе из подгруппы дорсальной деформации возраста, ИМТ, 
         лучевой наклон, локтевой наклон, лучелоктевой индекс пораженной руки,
         лучевой наклон, локтевой наклон, лучелоктевой индекс здоровой руки,
         оценке анкетирования DASH, SF-16 (физический компанент), SF-16 (ментальный компанент)")

Table_numeric2("возраст",gr2_defDors$Age, gr2_defDors$Group)
Table_numeric2("ИМТ",gr2_defDors$BMI, gr2_defDors$Group)
Table_numeric2("лучевой наклон пораженной руки",gr2_defDors$Ri_MesD0, gr2_defDors$Group)
Table_numeric2("локтевой наклон пораженной руки",gr2_defDors$Vt_MesD0, gr2_defDors$Group)
Table_numeric2("лучелоктевой индекс пораженной руки",gr2_defDors$Rh_MesD0, gr2_defDors$Group)
Table_numeric2("лучевой наклон здоровой руки",gr2_defDors$Ri_MesN, gr2_defDors$Group)
Table_numeric2("локтевой наклон здоровой руки",gr2_defDors$Vt_MesN, gr2_defDors$Group)
Table_numeric2("лучелоктевой индекс здоровой руки",gr2_defDors$Rh_MesN, gr2_defDors$Group)
Table_numeric2("анкетирование DASH",gr2_defDors$DASH0, gr2_defDors$Group)
Table_numeric2("анкетирование SF-16 (физический компанент)",gr2_defDors$SF_16_РН0, gr2_defDors$Group)
Table_numeric2("анкетирование SF-16 (ментальный компанент)",gr2_defDors$SF_16_MН0, gr2_defDors$Group)



#######defPalm#######
escribir("Описание первой группы из подгруппы ладонной деформации руки")
Quantity_discr("В группе ",defPalm$Group)
Quantity_discr("Было ",defPalm$Gender)
Quantity_discr("Повреждение ",defPalm$Side)
Quantity_discr("Доминирующая рука ",defPalm$Dominant_hand)
Quantity_discr("Повреждение доминирующая рука ",defPalm$Damage_dominant_hand)	
Quantity_discr("Тип деформации ",defPalm$Type_deformation)	
Quantity_discr("Тип активности ",defPalm$Type_action)


TextPvalue(pvalueQualitative(defPalm$Gender,defPalm$Group),"По полу" )
TextPvalue(pvalueQualitative(defPalm$Side,defPalm$Group),"По стороне повреждения" )
TextPvalue(pvalueQualitative(defPalm$Dominant_hand,defPalm$Group),"По доминирующей руке" )
TextPvalue(pvalueQualitative(defPalm$Damage_dominant_hand,defPalm$Group),"По повреждению доминирующей руки" )
TextPvalue(pvalueQualitative(defPalm$Type_deformation,defPalm$Group),"По типу деформации" )
TextPvalue(pvalueQualitative(defPalm$Type_action,defPalm$Group),"По типу активности" )
escribir("Качественные показатели всей выборки указаны в таблице 2.3.")

escribir("Таблица 2.3. Описание показателей пола, стороны поражения, доминирующей руки, повреждения доминирующей руки, типа деформации, типа активности во выборке пальмарной деформации. Пример записи: процент от выборки % ( количество случаев / общее количество  случаев)* [95% доверительный интервал]")
Quantity_tableP("Пол",defPalm$Gender,defPalm$Group) 
Quantity_tableP("Сторона поражения",defPalm$Side,defPalm$Group) 
Quantity_tableP("Доминирующая рука",defPalm$Gender,defPalm$Group) 
Quantity_tableP("Повреждение доминирующей руки",defPalm$Damage_dominant_hand,defPalm$Group) 
Quantity_tableP("Тип деформации",defPalm$Type_deformation,defPalm$Group) 
Quantity_tableP("Тип активности",defPalm$Type_action,defPalm$Group) 


Describe_numericText (defPalm$Age, "возраст"," пациентов по выборке пальмарной деформации составил "," лет")
Describe_numericText (defPalm$BMI, "ИМТ"," пациентов по выборке пальмарной деформации составил "," кг/м2")	
Describe_numericText (defPalm$Ri_MesD0, "лучевой наклон пораженной руки"," пациентов по выборке пальмарной деформации составил "," градусов")
Describe_numericText (defPalm$Vt_MesD0, "ладонный наклон пораженной руки"," пациентов по выборке пальмарной деформации составил "," градусов")
Describe_numericText (defPalm$Rh_MesD0, "лучелоктевой индекс пораженной руки"," пациентов по выборке пальмарной деформации составил "," мм")
Describe_numericText (defPalm$Ri_MesN, "лучевой наклон здоровой руки"," пациентов по выборке пальмарной деформации составил "," градусов")
Describe_numericText (defPalm$Vt_MesN, "ладонный наклон здоровой руки"," пациентов по выборке пальмарной деформации составил "," градусов")
Describe_numericText (defPalm$Rh_MesN, "лучелоктевой индекс здоровой руки"," пациентов по выборке пальмарной деформации составил "," мм")
Describe_numericText (defPalm$DASH0, "оценка анкетирования DASH до операции"," пациентов по выборке пальмарной деформации составил "," ,баллов")
Describe_numericText (defPalm$SF_16_РН0, "оценка анкетирования SF-16 (физический компанент) до операции"," пациентов по выборке пальмарной деформации составил "," ,баллов")
Describe_numericText (defPalm$SF_16_MН0, "оценка анкетирования SF-16 (ментальный компанент) до операции"," пациентов по выборке пальмарной деформации составил "," ,баллов")

TextPvalue(Pvalue_numeric(defPalm$Age,defPalm$Group),"По возрасту" )
TextPvalue(Pvalue_numeric(defPalm$BMI,defPalm$Group),"По ИМТ" )
TextPvalue(Pvalue_numeric(defPalm$Ri_MesD0,defPalm$Group),"По лучевому наклону пораженной руки" )
TextPvalue(Pvalue_numeric(defPalm$Vt_MesD0,defPalm$Group),"По локтевому наклону пораженной руки" )
TextPvalue(Pvalue_numeric(defPalm$Rh_MesD0,defPalm$Group),"По лучелоктевому индексу пораженной руки" )
TextPvalue(Pvalue_numeric(defPalm$Ri_MesN,defPalm$Group),"По лучевому наклону здоровой руки" )
TextPvalue(Pvalue_numeric(defPalm$Vt_MesN,defPalm$Group),"По локтевому наклону здоровой руки" )
TextPvalue(Pvalue_numeric(defPalm$Rh_MesN,defPalm$Group),"По лучелоктевому индексу здоровой руки" )
TextPvalue(Pvalue_numeric(defPalm$DASH0,defPalm$Group),"По оценке анкетирования DASH до операции" )
TextPvalue(Pvalue_numeric(defPalm$SF_16_РН0,defPalm$Group),"По оценке анкетирования SF-16 (физический компанент) до операции" )
TextPvalue(Pvalue_numeric(defPalm$SF_16_MН0,defPalm$Group),"По оценке анкетирования SF-16 (ментальный компанент) до операции" )
escribir("Количественные показатели выборке пальмарной деформации указаны в таблице 2.4.")

escribir("Таблица 2.4. Описание количественных показателей возраста, ИМТ, 
         лучевой наклон, локтевой наклон, лучелоктевой индекс пораженной руки,
         лучевой наклон, локтевой наклон, лучелоктевой индекс здоровой руки,
         оценке анкетирования DASH, SF-16 (физический компанент), SF-16 (ментальный компанент)")

Table_numericP2("возраст",defPalm$Age, defPalm$Group)
Table_numericP2("ИМТ",defPalm$BMI, defPalm$Group)
Table_numericP2("лучевой наклон пораженной руки",defPalm$Ri_MesD0, defPalm$Group)
Table_numericP2("локтевой наклон пораженной руки",defPalm$Vt_MesD0, defPalm$Group)
Table_numericP2("лучелоктевой индекс пораженной руки",defPalm$Rh_MesD0, defPalm$Group)
Table_numericP2("лучевой наклон здоровой руки",defPalm$Ri_MesN, defPalm$Group)
Table_numericP2("локтевой наклон здоровой руки",defPalm$Vt_MesN, defPalm$Group)
Table_numericP2("лучелоктевой индекс здоровой руки",defPalm$Rh_MesN, defPalm$Group)
Table_numericP2("анкетирование DASH",defPalm$DASH0, defPalm$Group)
Table_numericP2("анкетирование SF-16 (физический компанент)",defPalm$SF_16_РН0, defPalm$Group)
Table_numericP2("анкетирование SF-16 (ментальный компанент)",defPalm$SF_16_MН0, defPalm$Group)




#######gr1_defPalm#######
escribir("Описание первой группы из подгруппы ладонной деформации руки")
#Quantity_discr("В группе ",gr1_defPalm$Group)
Quantity_discr("Было в первой группе из подгруппы пальмарной деформации ",gr1_defPalm$Gender)
Quantity_discr("Повреждение в первой группе из подгруппы пальмарной деформации ",gr1_defPalm$Side)
Quantity_discr("Доминирующая рука в первой группе из подгруппы пальмарной деформации ",gr1_defPalm$Dominant_hand)
Quantity_discr("Повреждение доминирующая рука в первой группе из подгруппы пальмарной деформации ",gr1_defPalm$Damage_dominant_hand)	
Quantity_discr("Тип деформации в первой группе из подгруппы пальмарной деформации ",gr1_defPalm$Type_deformation)	
Quantity_discr("Тип активности в первой группе из подгруппы пальмарной деформации ",gr1_defPalm$Type_action)


#TextPvalue(pvalueQualitative(gr1_defPalm$Gender,gr1_defPalm$Group),"По полу в первой группе из подгруппы пальмарной деформации " )
#TextPvalue(pvalueQualitative(gr1_defPalm$Side,gr1_defPalm$Group),"По стороне повреждения в первой группе из подгруппы пальмарной деформации " )
#TextPvalue(pvalueQualitative(gr1_defPalm$Dominant_hand,gr1_defPalm$Group),"По недоминирующей руке в первой группе из подгруппы пальмарной деформации " )
#TextPvalue(pvalueQualitative(gr1_defPalm$Damage_dominant_hand,gr1_defPalm$Group),"По повреждению недоминирующей руки в первой группе из подгруппы пальмарной деформации " )
#TextPvalue(pvalueQualitative(gr1_defPalm$Type_deformation,gr1_defPalm$Group),"По типу деформации в первой группе из подгруппы пальмарной деформации " )
#TextPvalue(pvalueQualitative(gr1_defPalm$Type_action,gr1_defPalm$Group),"По типу активности в первой группе из подгруппы пальмарной деформации " )
escribir("Качественные показатели в первой группе из подгруппы пальмарной деформации указаны в таблице 2.5.")

escribir("Таблица 2.5. Описание показателей пола, стороны поражения, недоминирующей руки, повреждения недоминирующей руки, типа деформации, типа активности в первой группе из подгруппы пальмарной деформации. Пример записи: процент от выборки % ( количество случаев / общее количество  случаев)* [95% доверительный интервал]")
Quantity_table("Пол",gr1_defPalm$Gender,gr1_defPalm$Group) 
Quantity_table("Сторона поражения",gr1_defPalm$Side,gr1_defPalm$Group) 
Quantity_table("Доминирующая рука",gr1_defPalm$Gender,gr1_defPalm$Group) 
Quantity_table("Повреждение недоминирующей руки",gr1_defPalm$Damage_dominant_hand,gr1_defPalm$Group) 
Quantity_table("Тип деформации",gr1_defPalm$Type_deformation,gr1_defPalm$Group) 
Quantity_table("Тип активности",gr1_defPalm$Type_action,gr1_defPalm$Group) 


Describe_numericText (gr1_defPalm$Age, "возраст"," пациентов в первой группе из подгруппы пальмарной деформации составил "," лет")
Describe_numericText (gr1_defPalm$BMI, "ИМТ"," пациентов в первой группе из подгруппы пальмарной деформации составил "," кг/м2")	
Describe_numericText (gr1_defPalm$Ri_MesD0, "лучевой наклон пораженной руки"," пациентов в первой группе из подгруппы пальмарной деформации составил "," градусов")
Describe_numericText (gr1_defPalm$Vt_MesD0, "ладонный наклон пораженной руки"," пациентов в первой группе из подгруппы пальмарной деформации составил "," градусов")
Describe_numericText (gr1_defPalm$Rh_MesD0, "лучелоктевой индекс пораженной руки"," пациентов в первой группе из подгруппы пальмарной деформации составил "," мм")
Describe_numericText (gr1_defPalm$Ri_MesN, "лучевой наклон здоровой руки"," пациентов в первой группе из подгруппы пальмарной деформации составил "," градусов")
Describe_numericText (gr1_defPalm$Vt_MesN, "ладонный наклон здоровой руки"," пациентов в первой группе из подгруппы пальмарной деформации составил "," градусов")
Describe_numericText (gr1_defPalm$Rh_MesN, "лучелоктевой индекс здоровой руки"," пациентов в первой группе из подгруппы пальмарной деформации составил "," мм")
Describe_numericText (gr1_defPalm$DASH0, "оценка анкетирования DASH до операции"," пациентов в первой группе из подгруппы пальмарной деформации составил "," ,баллов")
Describe_numericText (gr1_defPalm$SF_16_РН0, "оценка анкетирования SF-16 (физический компанент) до операции"," пациентов в первой группе из подгруппы пальмарной деформации составил "," ,баллов")
Describe_numericText (gr1_defPalm$SF_16_MН0, "оценка анкетирования SF-16 (ментальный компанент) до операции"," пациентов в первой группе из подгруппы пальмарной деформации составил "," ,баллов")

#TextPvalue(Pvalue_numeric(gr1_defPalm$Age,gr1_defPalm$Group),"По возрасту в первой группе из подгруппы пальмарной деформации " )
#TextPvalue(Pvalue_numeric(gr1_defPalm$BMI,gr1_defPalm$Group),"По ИМТ в первой группе из подгруппы пальмарной деформации " )
#TextPvalue(Pvalue_numeric(gr1_defPalm$Ri_MesD0,gr1_defPalm$Group),"По лучевому наклону пораженной руки" )
#TextPvalue(Pvalue_numeric(gr1_defPalm$Vt_MesD0,gr1_defPalm$Group),"По локтевому наклону пораженной руки" )
#TextPvalue(Pvalue_numeric(gr1_defPalm$Rh_MesD0,gr1_defPalm$Group),"По лучелоктевому индексу пораженной руки" )
#TextPvalue(Pvalue_numeric(gr1_defPalm$Ri_MesN,gr1_defPalm$Group),"По лучевому наклону здоровой руки" )
#TextPvalue(Pvalue_numeric(gr1_defPalm$Vt_MesN,gr1_defPalm$Group),"По локтевому наклону здоровой руки" )
#TextPvalue(Pvalue_numeric(gr1_defPalm$Rh_MesN,gr1_defPalm$Group),"По лучелоктевому индексу здоровой руки" )
#TextPvalue(Pvalue_numeric(gr1_defPalm$DASH0,gr1_defPalm$Group),"По оценке анкетирования DASH до операции" )
#TextPvalue(Pvalue_numeric(gr1_defPalm$SF_16_РН0,gr1_defPalm$Group),"По оценке анкетирования SF-16 (физический компанент) до операции" )
#TextPvalue(Pvalue_numeric(gr1_defPalm$SF_16_MН0,gr1_defPalm$Group),"По оценке анкетирования SF-16 (ментальный компанент) до операции" )
escribir("Количественные показатели первой группе из подгруппы пальмарной деформации указаны в таблице 2.6.")

escribir("Таблица 2.6. Описание количественных показателей в первой группе из подгруппы пальмарной деформации возраста, ИМТ, 
         лучевой наклон, локтевой наклон, лучелоктевой индекс пораженной руки,
         лучевой наклон, локтевой наклон, лучелоктевой индекс здоровой руки,
         оценке анкетирования DASH, SF-16 (физический компанент), SF-16 (ментальный компанент)")

Table_numeric2("возраст",gr1_defPalm$Age, gr1_defPalm$Group)
Table_numeric2("ИМТ",gr1_defPalm$BMI, gr1_defPalm$Group)
Table_numeric2("лучевой наклон пораженной руки",gr1_defPalm$Ri_MesD0, gr1_defPalm$Group)
Table_numeric2("локтевой наклон пораженной руки",gr1_defPalm$Vt_MesD0, gr1_defPalm$Group)
Table_numeric2("лучелоктевой индекс пораженной руки",gr1_defPalm$Rh_MesD0, gr1_defPalm$Group)
Table_numeric2("лучевой наклон здоровой руки",gr1_defPalm$Ri_MesN, gr1_defPalm$Group)
Table_numeric2("локтевой наклон здоровой руки",gr1_defPalm$Vt_MesN, gr1_defPalm$Group)
Table_numeric2("лучелоктевой индекс здоровой руки",gr1_defPalm$Rh_MesN, gr1_defPalm$Group)
Table_numeric2("анкетирование DASH",gr1_defPalm$DASH0, gr1_defPalm$Group)
Table_numeric2("анкетирование SF-16 (физический компанент)",gr1_defPalm$SF_16_РН0, gr1_defPalm$Group)
Table_numeric2("анкетирование SF-16 (ментальный компанент)",gr1_defPalm$SF_16_MН0, gr1_defPalm$Group)



#######gr2_defPalm#######
escribir("Описание второй группе из подгруппы ладонной деформации руки")
#Quantity_discr("В группе ",gr2_defPalm$Group)
Quantity_discr("Было в второй группе из подгруппы пальмарной деформации ",gr2_defPalm$Gender)
Quantity_discr("Повреждение в второй группе из подгруппы пальмарной деформации ",gr2_defPalm$Side)
Quantity_discr("Доминирующая рука в второй группе из подгруппы пальмарной деформации ",gr2_defPalm$Dominant_hand)
Quantity_discr("Повреждение доминирующая рука в второй группе из подгруппы пальмарной деформации ",gr2_defPalm$Damage_dominant_hand)	
Quantity_discr("Тип деформации в второй группе из подгруппы пальмарной деформации ",gr2_defPalm$Type_deformation)	
Quantity_discr("Тип активности в второй группе из подгруппы пальмарной деформации ",gr2_defPalm$Type_action)


#TextPvalue(pvalueQualitative(gr2_defPalm$Gender,gr2_defPalm$Group),"По полу в второй группе из подгруппы пальмарной деформации " )
#TextPvalue(pvalueQualitative(gr2_defPalm$Side,gr2_defPalm$Group),"По стороне повреждения в второй группе из подгруппы пальмарной деформации " )
#TextPvalue(pvalueQualitative(gr2_defPalm$Dominant_hand,gr2_defPalm$Group),"По недоминирующей руке в второй группе из подгруппы пальмарной деформации " )
#TextPvalue(pvalueQualitative(gr2_defPalm$Damage_dominant_hand,gr2_defPalm$Group),"По повреждению недоминирующей руки в второй группе из подгруппы пальмарной деформации " )
#TextPvalue(pvalueQualitative(gr2_defPalm$Type_deformation,gr2_defPalm$Group),"По типу деформации в второй группе из подгруппы пальмарной деформации " )
#TextPvalue(pvalueQualitative(gr2_defPalm$Type_action,gr2_defPalm$Group),"По типу активности в второй группе из подгруппы пальмарной деформации " )
escribir("Качественные показатели в второй группе из подгруппы пальмарной деформации указаны в таблице 2.5.")

escribir("Таблица 2.5. Описание показателей пола, стороны поражения, недоминирующей руки, повреждения недоминирующей руки, типа деформации, типа активности в второй группе из подгруппы пальмарной деформации. Пример записи: процент от выборки % ( количество случаев / общее количество  случаев)* [95% доверительный интервал]")
Quantity_table("Пол",gr2_defPalm$Gender,gr2_defPalm$Group) 
Quantity_table("Сторона поражения",gr2_defPalm$Side,gr2_defPalm$Group) 
Quantity_table("Доминирующая рука",gr2_defPalm$Gender,gr2_defPalm$Group) 
Quantity_table("Повреждение недоминирующей руки",gr2_defPalm$Damage_dominant_hand,gr2_defPalm$Group) 
Quantity_table("Тип деформации",gr2_defPalm$Type_deformation,gr2_defPalm$Group) 
Quantity_table("Тип активности",gr2_defPalm$Type_action,gr2_defPalm$Group) 


Describe_numericText (gr2_defPalm$Age, "возраст"," пациентов в второй группе из подгруппы пальмарной деформации составил "," лет")
Describe_numericText (gr2_defPalm$BMI, "ИМТ"," пациентов в второй группе из подгруппы пальмарной деформации составил "," кг/м2")	
Describe_numericText (gr2_defPalm$Ri_MesD0, "лучевой наклон пораженной руки"," пациентов в второй группе из подгруппы пальмарной деформации составил "," градусов")
Describe_numericText (gr2_defPalm$Vt_MesD0, "ладонный наклон пораженной руки"," пациентов в второй группе из подгруппы пальмарной деформации составил "," градусов")
Describe_numericText (gr2_defPalm$Rh_MesD0, "лучелоктевой индекс пораженной руки"," пациентов в второй группе из подгруппы пальмарной деформации составил "," мм")
Describe_numericText (gr2_defPalm$Ri_MesN, "лучевой наклон здоровой руки"," пациентов в второй группе из подгруппы пальмарной деформации составил "," градусов")
Describe_numericText (gr2_defPalm$Vt_MesN, "ладонный наклон здоровой руки"," пациентов в второй группе из подгруппы пальмарной деформации составил "," градусов")
Describe_numericText (gr2_defPalm$Rh_MesN, "лучелоктевой индекс здоровой руки"," пациентов в второй группе из подгруппы пальмарной деформации составил "," мм")
Describe_numericText (gr2_defPalm$DASH0, "оценка анкетирования DASH до операции"," пациентов в второй группе из подгруппы пальмарной деформации составил "," ,баллов")
Describe_numericText (gr2_defPalm$SF_16_РН0, "оценка анкетирования SF-16 (физический компанент) до операции"," пациентов в второй группе из подгруппы пальмарной деформации составил "," ,баллов")
Describe_numericText (gr2_defPalm$SF_16_MН0, "оценка анкетирования SF-16 (ментальный компанент) до операции"," пациентов в второй группе из подгруппы пальмарной деформации составил "," ,баллов")

#TextPvalue(Pvalue_numeric(gr2_defPalm$Age,gr2_defPalm$Group),"По возрасту в второй группе из подгруппы пальмарной деформации " )
#TextPvalue(Pvalue_numeric(gr2_defPalm$BMI,gr2_defPalm$Group),"По ИМТ в второй группе из подгруппы пальмарной деформации " )
#TextPvalue(Pvalue_numeric(gr2_defPalm$Ri_MesD0,gr2_defPalm$Group),"По лучевому наклону пораженной руки" )
#TextPvalue(Pvalue_numeric(gr2_defPalm$Vt_MesD0,gr2_defPalm$Group),"По локтевому наклону пораженной руки" )
#TextPvalue(Pvalue_numeric(gr2_defPalm$Rh_MesD0,gr2_defPalm$Group),"По лучелоктевому индексу пораженной руки" )
#TextPvalue(Pvalue_numeric(gr2_defPalm$Ri_MesN,gr2_defPalm$Group),"По лучевому наклону здоровой руки" )
#TextPvalue(Pvalue_numeric(gr2_defPalm$Vt_MesN,gr2_defPalm$Group),"По локтевому наклону здоровой руки" )
#TextPvalue(Pvalue_numeric(gr2_defPalm$Rh_MesN,gr2_defPalm$Group),"По лучелоктевому индексу здоровой руки" )
#TextPvalue(Pvalue_numeric(gr2_defPalm$DASH0,gr2_defPalm$Group),"По оценке анкетирования DASH до операции" )
#TextPvalue(Pvalue_numeric(gr2_defPalm$SF_16_РН0,gr2_defPalm$Group),"По оценке анкетирования SF-16 (физический компанент) до операции" )
#TextPvalue(Pvalue_numeric(gr2_defPalm$SF_16_MН0,gr2_defPalm$Group),"По оценке анкетирования SF-16 (ментальный компанент) до операции" )
escribir("Количественные показатели второй группе из подгруппы пальмарной деформации указаны в таблице 2.6.")

escribir("Таблица 2.6. Описание количественных показателей в второй группе из подгруппы пальмарной деформации возраста, ИМТ, 
         лучевой наклон, локтевой наклон, лучелоктевой индекс пораженной руки,
         лучевой наклон, локтевой наклон, лучелоктевой индекс здоровой руки,
         оценке анкетирования DASH, SF-16 (физический компанент), SF-16 (ментальный компанент)")

Table_numeric2("возраст",gr2_defPalm$Age, gr2_defPalm$Group)
Table_numeric2("ИМТ",gr2_defPalm$BMI, gr2_defPalm$Group)
Table_numeric2("лучевой наклон пораженной руки",gr2_defPalm$Ri_MesD0, gr2_defPalm$Group)
Table_numeric2("локтевой наклон пораженной руки",gr2_defPalm$Vt_MesD0, gr2_defPalm$Group)
Table_numeric2("лучелоктевой индекс пораженной руки",gr2_defPalm$Rh_MesD0, gr2_defPalm$Group)
Table_numeric2("лучевой наклон здоровой руки",gr2_defPalm$Ri_MesN, gr2_defPalm$Group)
Table_numeric2("локтевой наклон здоровой руки",gr2_defPalm$Vt_MesN, gr2_defPalm$Group)
Table_numeric2("лучелоктевой индекс здоровой руки",gr2_defPalm$Rh_MesN, gr2_defPalm$Group)
Table_numeric2("анкетирование DASH",gr2_defPalm$DASH0, gr2_defPalm$Group)
Table_numeric2("анкетирование SF-16 (физический компанент)",gr2_defPalm$SF_16_РН0, gr2_defPalm$Group)
Table_numeric2("анкетирование SF-16 (ментальный компанент)",gr2_defPalm$SF_16_MН0, gr2_defPalm$Group)




####Глава 2####


######3#####
escribir("Сравнение на основе изображений компьютерной томографии двусторонней симметрии дистального метаэпифиза лучевой кости")

######4#####
escribir("Определение точности переноса данных с помощью индивидуального напечатанного шаблона направителя")

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
escribir("Качественные показатели всей выборки указаны в таблице 2.1.")

escribir("Таблица 2.1. Описание показателей пола, стороны поражения, доминирующей руки, повреждения доминирующей руки, типа деформации, типа активности во всей выборке. Пример записи: процент от выборки % ( количество случаев / общее количество  случаев)* [95% доверительный интервал]")
Quantity_table("Пол",dfRad$Gender,dfRad$Group) 
Quantity_table("Сторона поражения",dfRad$Side,dfRad$Group) 
Quantity_table("Доминирующая рука",dfRad$Gender,dfRad$Group) 
Quantity_table("Повреждение доминирующей руки",dfRad$Damage_dominant_hand,dfRad$Group) 
Quantity_table("Тип деформации",dfRad$Type_deformation,dfRad$Group) 
Quantity_table("Тип активности",dfRad$Type_action,dfRad$Group) 


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
escribir("Количественные показатели всей выборки указаны в таблице 2.2.")

escribir("Таблица 2.2. Описание количественных показателей возраста, ИМТ, 
         лучевой наклон, локтевой наклон, лучелоктевой индекс пораженной руки,
         лучевой наклон, локтевой наклон, лучелоктевой индекс здоровой руки,
         оценке анкетирования DASH, SF-16 (физический компанент), SF-16 (ментальный компанент)")
         
Table_numeric2("возраст",dfRad$Age, dfRad$Group)
Table_numeric2("ИМТ",dfRad$BMI, dfRad$Group)
Table_numeric2("лучевой наклон пораженной руки",dfRad$Ri_MesD0, dfRad$Group)
Table_numeric2("локтевой наклон пораженной руки",dfRad$Vt_MesD0, dfRad$Group)
Table_numeric2("лучелоктевой индекс пораженной руки",dfRad$Rh_MesD0, dfRad$Group)
Table_numeric2("лучевой наклон здоровой руки",dfRad$Ri_MesN, dfRad$Group)
Table_numeric2("локтевой наклон здоровой руки",dfRad$Vt_MesN, dfRad$Group)
Table_numeric2("лучелоктевой индекс здоровой руки",dfRad$Rh_MesN, dfRad$Group)
Table_numeric2("анкетирование DASH",dfRad$DASH0, dfRad$Group)
Table_numeric2("анкетирование SF-16 (физический компанент)",dfRad$SF_16_РН0, dfRad$Group)
Table_numeric2("анкетирование SF-16 (ментальный компанент)",dfRad$SF_16_MН0, dfRad$Group)


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
escribir("Качественные показатели в первой группе указаны в таблице 2.1.")

escribir("Таблица 2.3. Описание показателей пола, стороны поражения, доминирующей руки, повреждения доминирующей руки, типа деформации, типа активности в первой группе. Пример записи: процент от выборки % ( количество случаев / общее количество  случаев)* [95% доверительный интервал]")
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
escribir("Количественные показатели всей выборки указаны в таблице 2.2.")

escribir("Таблица 2.4. Описание количественных показателей в первой группе возраста, ИМТ, 
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
escribir("Описание втрой группы")



#######gr1_domYes#######
escribir("Описание первой группы из выборки повреждения доминирующей руки")



#######gr2_domYes#######
escribir("Описание второй группе из выборки повреждения доминирующей руки")


#######gr1_domNo#######
escrAlgo("Описание первой группы из выборки повреждения недоминирующей руки")



#######gr2_domNo#######
escribir("Описание второй группе из выборки повреждения недоминирующей руки")


#######gr1_defDors#######
escribir("Описание первой группы из выборки дорсальной деформации руки")



#######gr2_defDors#######
escribir("Описание второй группе из выборки дорсальной деформации руки")


#######gr1_defPalm#######
escribir("Описание первой группы из выборки ладонной деформации руки")



#######gr2_defPalm#######
escribir("Описание второй группе из выборки ладонной деформации руки")




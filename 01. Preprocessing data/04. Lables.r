####3ch######

dfRadBillat$Gender	<- factor(dfRadBillat$Gender, 
                             levels=c(1, 2),
                             labels = c(
                               "1"="Женский",
                               "2"="Мужской"
                             ))	

dfRadBillat1$Gender	<- factor(dfRadBillat1$Gender, 
                             levels=c(1, 2),
                             labels = c(
                               "1"="Женский",
                               "2"="Мужской"
                             ))	

dfRadBillat$Type_action 	<- factor(dfRadBillat$Type_action, 
                                   levels=c(1, 2),
                                   labels = c(
                                     "1"="Смешанный",
                                     "2"="Ручной"
                                   ))
dfRadBillat1$Type_action 	<- factor(dfRadBillat1$Type_action, 
                                   levels=c(1, 2),
                                   labels = c(
                                     "1"="Смешанный",
                                     "2"="Ручной"
                                   ))

dfRadBillat$Side<- factor(dfRadBillat$Side, 
                          levels=c(1, 2),
                          labels = c(
                            "1"="Левая",
                            "2"="Правая"
                          ))

dfRadBillat1$Side<- factor(dfRadBillat1$Side, 
                          levels=c(1, 2),
                          labels = c(
                            "1"="Левая",
                            "2"="Правая"
                          ))


####4ch######
dfRadProt$Gender <- factor(dfRadProt$Gender, 
                       levels=c(1, 2),
                       labels = c(
                         "1"="Женский",
                         "2"="Мужской"
                       ))

dfRadProt$Stage<- factor(dfRadProt$Stage, 
                         levels=c(1, 2),
                         labels = c(
                           "1"="Виртуальное моделирование",
                           "2"="После операции"
                         ))





dfRadProt$Riint	<- factor(dfRadProt$Riint, 
                          levels=c(1, 2, 3),
                          labels = c(
                            "1"="Меньше",
                            "2"="Норма",
                            "3"="Больше"
                          ))	

dfRadProt$Vtint	<- factor(dfRadProt$Vtint, 
                          levels=c(1, 2, 3),
                          labels = c(
                            "1"="Меньше",
                            "2"="Норма",
                            "3"="Больше"
                          ))


dfRadProt$Rhint<- factor(dfRadProt$Rhint, 
                         levels=c(1, 2, 3),
                         labels = c(
                           "1"="Меньше",
                           "2"="Норма",
                           "3"="Больше"
                         ))

dfRadProt$Side <- factor(dfRadProt$Side, 
                     levels=c(1, 2),
                     labels = c(
                       "1"="Левая",
                       "2"="Правая"
                     ))

dfRadProt$Dominant_hand<- factor(dfRadProt$Dominant_hand, 
                             levels=c(1, 2),
                             labels = c(
                               "1"="Левая",
                               "2"="Правая"
                             ))

dfRadProt$Damage_dominant_hand<- factor(dfRadProt$Damage_dominant_hand, 
                                    levels=c(1, 2),
                                    labels = c(
                                      "1"="Да",
                                      "2"="Нет"
                                    ))

dfRadProt$Type_deformation<- factor(dfRadProt$Type_deformation, 
                                levels=c(1, 2),
                                labels = c(
                                  "1"="Дорсальная",
                                  "2"="Ладонная"
                                ))




####5ch######
dfRad$Group <- factor(dfRad$Group, 
                      levels=c(1, 2),
                      labels = c(
                        "1"="Контрольная группа",
                        "2"="Протокол 3d"
                        ))


dfRad$Gender <- factor(dfRad$Gender, 
                      levels=c(1, 2),
                      labels = c(
                        "1"="Женский",
                        "2"="Мужской"
                      ))

dfRad$Side <- factor(dfRad$Side, 
                       levels=c(1, 2),
                       labels = c(
                         "1"="Левая",
                         "2"="Правая"
                       ))

dfRad$Dominant_hand<- factor(dfRad$Dominant_hand, 
                     levels=c(1, 2),
                     labels = c(
                       "1"="Левая",
                       "2"="Правая"
                     ))

dfRad$Damage_dominant_hand<- factor(dfRad$Damage_dominant_hand, 
                             levels=c(1, 2),
                             labels = c(
                               "1"="Да",
                               "2"="Нет"
                             ))

dfRad$Type_deformation<- factor(dfRad$Type_deformation, 
                                    levels=c(1, 2),
                                    labels = c(
                                      "1"="Дорсальная",
                                      "2"="Ладонная"
                                    ))

dfRad$Type_action<- factor(dfRad$Type_action, 
                                levels=c(1, 2),
                                labels = c(
                                  "1"="Смешанный",
                                  "2"="Ручной"
                                ))



dfRad$RI_GrD0		<- factor(dfRad$RI_GrD0, 
                         levels=c(1, 2, 3),
                         labels = c(
                           "1"="Меньше",
                           "2"="Норма",
                           "3"="Больше"
                         ))

dfRad$Vt_GrD0		<- factor(dfRad$Vt_GrD0, 
                         levels=c(1, 2, 3),
                         labels = c(
                           "1"="Меньше",
                           "2"="Норма",
                           "3"="Больше"
                         ))

dfRad$Rh_GrD0<- factor(dfRad$Rh_GrD0, 
                       levels=c(1, 2,3 ),
                       labels = c(
                         "1"="Меньше",
                         "2"="Норма",
                         "3"="Больше"
                         ))


RI_GrN<- factor(dfRad$RI_GrN, 
                levels=c(1, 2, 3),
                labels = c(
                  "1"="Меньше",
                  "2"="Норма",
                  "3"="Больше"
                ))


Vt_GrN<- factor(dfRad$Vt_GrN, 
                levels=c(1, 2, 3),
                labels = c(
                  "1"="Меньше",
                  "2"="Норма",
                  "3"="Больше"
                ))


Rh_GrN<- factor(dfRad$Rh_GrN, 
                levels=c(1, 2, 3),
                labels = c(
                  "1"="Меньше",
                  "2"="Норма",
                  "3"="Больше"
                ))


VAS3<- factor(dfRad$VAS3, 
              levels=c(1, 2, 3, 4,5),
              labels = c(
                "1"="1 балл",
                "2"="2 балла",
                "3"="3 балла",
                "4"="4 балла",
                "5"="5 баллов"
              ))


Ri_GrD12<- factor(dfRad$Ri_GrD12, 
                  levels=c(1, 2, 3),
                  labels = c(
                    "1"="Меньше",
                    "2"="Норма",
                    "3"="Больше"
                  ))


Vt_GrD12<- factor(dfRad$Vt_GrD12, 
                  levels=c(1, 2, 3),
                  labels = c(
                    "1"="Меньше",
                    "2"="Норма",
                    "3"="Больше"
                  ))


Rh_GrD12<- factor(dfRad$Rh_GrD12, 
                  levels=c(1, 2, 3),
                  labels = c(
                    "1"="Меньше",
                    "2"="Норма",
                    "3"="Больше"
                  ))

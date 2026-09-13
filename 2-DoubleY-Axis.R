# ============================================================================
# Double-Y-axis correlation plots of Mariana Trench factors (R, latticeExtra).
# This produced Figure 13 in the peer-reviewed article:
#   Lemenkova, P. (2019). Statistical Analysis of the Mariana Trench
#   Geomorphology Using R Programming Language.
#   Geodesy and Cartography, 45(2), 57-84.
#   DOI: https://doi.org/10.3846/gac.2019.3785
# Author: Polina Lemenkova | ORCID: 0000-0002-5759-1089
# ============================================================================

# ЧАСТЬ-1. готовим датафрейм. 
	# шаг-1. вчитываем таблицу с данными по геоморфологии. делаем из нее исходный датафрейм
MDepths <- read.csv("Morphology.csv", header=TRUE, sep = ",")
	# шаг-2. чистим датафрейм от NA значений
MDF <- na.omit(MDepths) 
row.has.na <- apply(MDF, 1, function(x){any(is.na(x))}) # проверяем, удалил ли все NA
sum(row.has.na) # суммируем все NA, должно получиться: [1] 0
head(MDF) 


# ЧАСТЬ-2. рисуем 2 графика Y на одной оси X "Slope angle", "Sedimental thickness"
library(latticeExtra)
 
	# шаг-3. создаем выборку для нового дата-фрейма (только нужные 3 значения)
set.seed(1)
profiles = MDF$profile
Slope_angle = MDF$slope_angle
Sedimental_thickness =  MDF$sedim_thick
data=data.frame(x, var1,var2)
	# шаг-4 графика в одном :
p<- xyplot(Slope_angle + Sedimental_thickness ~ profiles, data, type = "l")
		
 	# шаг-4. присваиваем объектам 1 и 2 графики
obj1 <- xyplot(Slope_angle ~ profiles, data, type = "l" , lwd=1)
obj2 <- xyplot(Sedimental_thickness ~ profiles, data, type = "l", lwd=1)
	# шаг-5. подрисовываем 2-ю ось Y:
doubleYScale(obj1, obj2, add.ylab2 = TRUE)
 	# шаг-6. подрисовываем легенду:
p<- doubleYScale(obj1, obj2, text = c("Slope angle", "Sedimental thickness") , add.ylab2 = TRUE) 

# ЧАСТЬ-3. рисуем 2 графика Y на одной оси X "Slope angle", "Aspect degree"
library(latticeExtra)


 
	# шаг-3. создаем выборку для нового дата-фрейма (только нужные 3 значения)
set.seed(1)
profiles = MDF$profile
Slope_angle = MDF$slope_angle
Aspect_degree =  MDF$aspect_degree
data=data.frame(x, var1,var2)
	# шаг-4 графика в одном :
p<- xyplot(Slope_angle + Aspect_degree ~ profiles, data, type = "l")
		
 	# шаг-4. присваиваем объектам 1 и 2 графики
obj1 <- xyplot(Slope_angle ~ profiles, data, type = "l" , lwd=1)
obj2 <- xyplot(Aspect_degree ~ profiles, data, type = "l", lwd=1)
	# шаг-5. подрисовываем 2-ю ось Y:
doubleYScale(obj1, obj2, add.ylab2 = TRUE)
 	# шаг-6. подрисовываем легенду:
SA <- doubleYScale(obj1, obj2, text = c("Slope angle", "Aspect degree") , add.ylab2 = TRUE)
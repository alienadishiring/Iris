******************************************
*0.Get the data 
******************************************
use http://www.stata-press.com/data/r18/iris, clear


******************************************
*1.Print the data
******************************************


list


******************************************
*2.Save the data
******************************************

save "C:\Users\rmjdszh\OneDrive - University College London\Iris_repo_stata\Iris.dta"


******************************************
*3.Filter the Setosa data
******************************************
tab iris
tab iris, nolabel

*Setosa == 1 

keep if iris == 1 


save "C:\Users\rmjdszh\OneDrive - University College London\Iris_repo_stata\Setosa.dta"

******************************************
*4.Spilt the Iris data
******************************************

use http://www.stata-press.com/data/r18/iris, clear

splitsample, generate(svar, replace) split(0.7 0.3) show rseed(16)

frame put iris seplen sepwid petlen petwid if svar==1, into(training)
frame put iris seplen sepwid petlen petwid if svar==2, into(test)
frames dir


cd "C:\Users\rmjdshc\OneDrive - University College London\Iris_repo_stata\"

summarize seplen sepwid petlen
summarize seplen sepwid petlen

******************************************
*5. Frequency
******************************************
table iris
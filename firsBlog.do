*first blog page


***Data for real gdp all countries 
wbopendata, indicator(NY.GDP.MKTP.KD; SP.POP.TOTL) long clear

keep if year == 2023
ren ny_gdp_mktp_kd gdpr
ren sp_pop_totl pop
gen gdprCap = gdpr/ pop
label var gdprCap "GDP per capita"
drop if incomelevelname == "Aggregates"
sort gdprCap
keep if gdprCap <= 700



gen Malawi = gdprCap if countryname == "Malawi"
gen Burundi = gdprCap if countryname == "Burundi"
gen CAR = gdprCap if countryname == "Central African Republic"
gen Chad = gdprCap if countryname == "Chad"
gen DRC = gdprCap if countryname == "Congo, Dem Rep"
gen Liberia = gdprCap if countryname == "Liberia"
gen Madagascar = gdprCap if countryname == "Madagascar"
gen Mozambique = gdprCap if countryname == "Mozambique"
gen Niger = gdprCap if countryname == "Niger"
gen Somalia = gdprCap if countryname == "Somalia"
gen Afghan = gdprCap if countryname == "Afghanistan"



graph hbar (mean) gdprCap, over(countryname) bgcolor(rgb(0.7,0.3,0.6)) plotregion(rgb(0.7,0.3,0.6)) graphregion(rgb(0.7,0.3,0.6)) title("Itty Bitty GDP Committee")



graph hbar (mean) gdprCap, over(countryname) bgcolor("244 233 247") ///
plotregion(color("244 233 247")) graphregion(color("244 233 247")) ///
title("Itty Bitty GDP Committee") bar(1, color("161 47 17")) ///
bar(1,fcolor("161 47 17")) ///
bar(2,fcolor("105 200 128"))
bar(3,fcolor("161 47 17")))





graph hbar (mean) gdprCap if countryname == "Malawi", over(countryname)  bar(1,fcolor("105 200 128"))

graph hbar (mean) gdprCap, over(countryname) bgcolor(none) ///
graphregion(color(none)) title("Itty Bitty GDP Committee") bar(1,fcolor(yellow)) bar(2,fcolor(red))




graph hbar (mean) Afghan Malawi Burundi CAR Chad DRC Liberia ///
Madagascar Mozambique, ///
bgcolor("244 233 247") plotregion(color("244 233 247")) ///
graphregion(color("244 233 247")) ///
title("Itty Bitty GDP Committee") ///
bar(1,fcolor("231 47 17")) ///
bar(2,fcolor("105 200 128")) ///
bar(3,fcolor("211 47 17")) ///
bar(4,fcolor("191 47 17")) ///
bar(5,fcolor("171 47 17")) ///
bar(6,fcolor("151 47 17")) ///
bar(7,fcolor("131 47 17")) ///
bar(8,fcolor("111 47 17")) ///
bar(9,fcolor("91 47 17")) ///
blabel(bar, format(%0.0g)) ///
legend(on order(1 "Afghanistan" 2 "Malawi" 3 "Burundi" 4 "CAR" 5 "Chad" 6 "DRC" 7 "LIberia" 8 "Madagascar" 9 "Mozambique"))

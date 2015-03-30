# sinodate

S4 class to represent date in Chinese calendar. (Often incorrectly refers to as Lunar calendar. Mandarin: Nongli, Cantonese: Nung Lik 農曆/舊曆/陰曆)

# Package Installation

```r
if(!require("devtools")){
    install.packages("devtools")
    library("devtools")
}
install_github("chainsawriot/sinodate")
```

## Features

### Representation and conversion

```R
sinodate(year = 1981, month = 6, day = 20)
as.sinodate("1981-06-20")
as.sinodate(as.Date("1981-07-21")) # conversion from Gregorian Date to sinodate
as.sinodate("1981-07-21", gregorian = TRUE) # equivalent to the above, easier to use
as.character(as.sinodate(as.Date("1981-07-21")))
as.character(as.sinodate(as.Date("1981-07-21")), TRUE)

## check for validity of sinodate
as.sinodate("2014-09-50") # Invalid
as.sinodate("2014-01L-10") # January of 2014 is not a leap month in Nung Lik
as.sinodate("2014-09L-10") # Valid, 9 is a leap month in 2014
as.sinodate("2014-09L-30") # Invalid
as.sinodate("2014-02-30") # Valid
```

### conversion of sinodate to Gregorian date

```r
as.Date(as.sinodate("2015-01-01")) # Lunar new year of 2015
as.Date(as.sinodate("2014-09-10")) # two dates will be returned because 9 is a leap month
as.Date(as.sinodate("2014-09-10"), TRUE)
```

## References
[Gregorian-Lunar Calendar Conversion Table](http://www.hko.gov.hk/gts/time/conversionc.htm)

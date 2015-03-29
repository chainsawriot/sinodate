# sinodate

S4 class to represent date in Chinese calendar. (Mandarin: Nongli, Cantonese: Nung Lik 農曆)

## Features

# Representation and conversion

```R
as.sinodate("1981-06-20")
as.sinodate(as.Date("1981-07-21")) # conversion from Gregorian Date to sinodate
as.character(as.sinodate(as.Date("1981-07-21")))
as.character(as.sinodate(as.Date("1981-07-21")), TRUE)

## check for validity of sinodate
as.sinodate("2014-09-50") # Invalid
as.sinodate("2014-01L-10") # January of 2014 is not a leap month in Nung Lik
as.sinodate("2014-09L-10") # Valid, 9 is a leap month in 2014
as.sinodate("2014-09L-30") # Invalid
as.sinodate("2014-02-30") # Valid
```

# TODO

conversion of sinodate to gregorian date

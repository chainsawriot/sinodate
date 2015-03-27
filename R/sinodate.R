
validity.sinodate <- function(object) {
    if (length(object@year) != 1 | length(object@year) != 1 | length(object@day) != 1) {
        return("Year, month and day must be singular")
    } else {
        return(TRUE)
    }
}

# TODO: Need to check whether the provided leap is correct
# TODO: tell the users sinodate will be accurate only from 1901 and 2099

# constructor function
sinodate <- setClass("sinodate", representation(year = 'numeric', month = 'numeric', day = 'numeric', leap = 'logical'), prototype = list(leap = FALSE), validity = validity.sinodate) 

setMethod('show', signature = 'sinodate', definition = 
          function(object){
              cat(paste0(object@year, "-", object@month, ifelse(object@leap, "(Leap)", ""), "-", object@day,"\n"))
          })

#x <- sinodate(year = 2014, month = 12, day = 1, leap = TRUE) # non-leap by default
#x@year


#isGeneric('show') # show whether is a generic func
#hasMethod('show')
#args(show) # setMethod need to have the same arg below

setMethod("show", signature = "sinodates4", definition = function(object) {
    cat(paste0(object@year, "-", object@month, "-", object@day, "\n"))
})


utils::str(sinodate)

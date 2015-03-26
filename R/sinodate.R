sinodate <- setRefClass(
            Class = "sinodate",
            fields = list(year = "numeric", month = "numeric", day = "numeric",leap = "logical"),
            methods = list(
            show = function() {
                cat(paste0(year, "-", month, "-", day,"\n"))
            }
            ))
sinodates4 <- setClass("sinodates4", representation(year = 'numeric', month = 'numeric', day = 'numeric', leap = 'logical'))
validity.sinodates4 <- function(object) {
    
}

x <- sinodates4(year = 2014, month = 12, day = 1, leap = FALSE)
x@year

isGeneric('show') # show whether is a generic func
hasMethod('show')
args(show) # setMethod need to have the same arg below

setMethod("show", signature = "sinodates4", definition = function(object) {
    cat(paste0(object@year, "-", object@month, "-", object@day, "\n"))
})


utils::str(sinodate)


validity.infant <- function(object) {
    if(!all(sapply(object@data, is.numeric))) {
        return("data not numeric")
    } else return(TRUE)
}
setClass("infant",
         representation(ID = "numeric",
                        sex = "character",
                        data = "data.frame"),
         validity=validity.infant)
x <- new("infant", data=data.frame(age, male.wt, male.ht), sex="male", ID=1)

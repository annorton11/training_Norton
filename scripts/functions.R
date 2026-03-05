x <- c(1, 2, 3)
dat <- data.frame(a=1, b="x")

say_hi <- function(){
  message("Hi!")
}

greet_someone <-function(name) {
  message("Hi ", name, ", how are you")
}

exterior_f <- c(77, 78, 77)
exterior_c <- (exterior_f -32) *5 / 9

# fine but what if you need to keep repeating this calculation? ugh annoying? and what
## if you do one wrong?? now you need to proof multiple lines....

# MAKE A FUNCTION!!!!

convert_f2c <- function(tempf) {
  tempc <- (tempf -32) *5 / 9
  return(tempc)
}
convert_f2c(exterior_f)

convert_temps <- function(tempf) {
  celsius <- (tempf -32) *5 / 9
  kelvin <- celsius + 273.15
  return(list(
    tempf = tempf,
    celsius = celsius,
    kelvin = kelvin
  ))
}

convert_temps(exterior_f)
tempfile()
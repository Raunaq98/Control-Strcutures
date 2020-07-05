#################################### Control Structures

############# if-else
x <- 5
if( x > 3) {
    y<- 10
} else{
    y<-0
}
print(y)

## this is the same as :

z <- if( x < 4) {
    7
} else {
    0
}
print(z)

# the second one is better because it tells you that the entire loop is foor value assignment

########### for loop

for(i in 1:10){
      print(i)
}
#[1] 1
#[1] 2
#[1] 3
#[1] 4
#[1] 5
#[1] 6
#[1] 7
#[1] 8
#[1] 9
#[1] 10

temp <- c("a","b","c","d")
for(i in 1:4){
      print(temp[i])
}
#[1] "a"
#[1] "b"
#[1] "c"
#[1] "d"

#OR

for( i in seq_along(temp)){       # seq_along() creates an integer sequence equal to the length tof the vector put in
    print(temp[i])
}
#[1] "a"
#[1] "b"
#[1] "c"
#[1] "d"

#OR

for(letter in temp){
    print(letter)
}
#[1] "a"
#[1] "b"
#[1] "c"
#[1] "d"

### nested for loop

matrix1 <- matrix(1:6,nrow=2,ncol=3)

for(i in seq_len(nrow(matrix1))) {     #seq_len takes the length of input ie, row in this case
    for(j in seq_len(ncol(matrix1))) {     ##seq_len takes the length of input ie, column in this case
        print(matrix1[i,j])
    }
}
#[1] 1
#[1] 3
#[1] 5
#[1] 2
#[1] 4
#[1] 6

################# while loop

count <- 0
while( count < 10){
      print(count)
      count<- count +1
}
#[1] 0
#[1] 1
#[1] 2
#[1] 3
#[1] 4
#[1] 5
#[1] 6
#[1] 7
#[1] 8
#[1] 9

################ repeat, next, break

for(i in 1:10){
    if(i < 5){
        next    #skips first 4 iterations
    }
  else{
    print(i)
  }
}
#[1] 5
#[1] 6
#[1] 7
#[1] 8
#[1] 9
#[1] 10
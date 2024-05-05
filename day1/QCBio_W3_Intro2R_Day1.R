# Opening remarks ====================================================
# Creator: Wenbin Guo
# Date: 2024-04-23
#
# Welcome to the UCLA Collaboratory Workshop W3: 
# - `Introduction to R and Data Visualization`
#
# This is the tutorial practice for Day1: R basics
# 
# For today's workshop practice, we will cover the following topics:
# - Basic operations of RStudio and getting help in R
# - Variable definition and value assignment
# - Data types and data structures in R
# - Basic arithmetic and logical operations in R




# 1. create/delete R script ==========================================
### this is a comment line
### create a hello.R script
### run a Rscript from terminal
#~$ Rscript hello.R
### delete a hello.R script




# 2. get help ========================================================
?mean
??"plotting"




# 3. test make.names =================================================
dup_names = c("a", "a", "b", "c")
make.names(dup_names, unique = TRUE)




# 4. assignment operators ============================================
x = 3
y <- 3
y< - 3

assign("x", 6)




# 5. check class of variables ========================================
my_bool= TRUE
my_var = 1L
my_str = "apple"
my_vec = seq(10)

class(my_str)
is.numeric(my_str)
is.logical(my_str)
is.character(my_str)




# 6. check the limits of numbers in R ================================
.Machine




# 7. test special numbers ============================================
1/0




# 8. inspect variables ===============================================
print(my_vec)
str(my_vec)
head(my_vec)
object.size(my_vec)




# 9. inspect environment =============================================
my_dir = getwd()
print(my_dir)


setwd("~/code")
setwd(my_dir)

ls()

rm(my_str)




# 10. arithmetic operators ===========================================
a = 1
b = 2
c = 3
d = 4


a + b
a - b
a*b
a/b

a**2
a^2
a %% b
a %/% b




# 11. relational operators ===========================================
a > b
a >= b 

a %in% my_vec




# 12. logical operators ==============================================
!(a>b)
a | b

any(a!=b, a==b)
all(a!=b, a==b)




# 13. operator's precedence ==========================================
1 + 2 * 3
(1 + 2) * 3

1==2 & 3
(1==2) & 3




# 14. vector =========================================================
my_vec = vector("numeric", length = 5)

my_vec = 1:5
my_vec = seq(1, 5, by = 1)
my_vec = seq(1, 5, length.out = 5)
my_vec = c(1, 2, 3, 4, 5)
my_vec = rep(1, 5)

names(my_vec) = c("a", "b", "c", "d", "e")

length(my_vec)

my_vec[1]
my_vec[-1]
my_vec[c(1, 3, 5)]
my_vec[c("a", "c", "e")]


which(my_vec == 3)
which.max(my_vec)

my_vec[my_vec == 3]


1:5 + 1
1:5 + 5:1
1:5 + 1:2




# 15. string and factors =============================================
my_fruit = c("apple", "banana", "cherry")
paste0(my_fruit, "is a fruit")
paste(my_fruit, "is a fruit", sep = " ")
paste(my_fruit, "is a fruit", sep = " ", collapse = ", ")

my_fruit = factor(my_fruit)
levels(my_fruit)
my_fruit = factor(my_fruit, levels = c("apple", "cherry","banana"))
levels(my_fruit)




# 16. matrix =========================================================
my_matrix = matrix(1:6, nrow = 2, ncol = 3)
my_matrix = matrix(1:6, nrow = 2, ncol = 3, byrow = TRUE)

rownames(my_matrix) = c("row1", "row2")
colnames(my_matrix) = c("col1", "col2", "col3")


dim(my_matrix)


my_matrix[1, 2]
my_matrix[1, ]

cbind(my_matrix, my_matrix)
rbind(my_matrix, my_matrix)




# 17. list ===========================================================
my_list = list(1, "apple", c(1, 2, 3))


my_named_list = list(a = 1, b = "apple", c = c(1, 2, 3))


length(my_list)

my_list[[1]]
my_named_list[["a"]]
my_named_list$a


c(my_list, my_named_list)

my_list[1] = NULL




# 18. data frame =====================================================
my_df = data.frame(a = 1:3, b = c("apple", "banana", "cherry"))
dimnames(my_df) = list(c("row1", "row2", "row3"), c("a", "b"))

nrow(my_df)
dim(my_df)

my_df[1, ]
my_df[1, 2]
my_df$a

my_df$a = c(4, 5, 6)
my_df$c = c(7, 8, 9)

subset(my_df, a > 4)

rowSums(my_df[, c("a", "c")])
colMeans(my_df[, c("a", "c")])




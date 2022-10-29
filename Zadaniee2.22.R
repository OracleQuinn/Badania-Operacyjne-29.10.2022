##Zadanie 1
cx <- c(23, 17) ##Funkcja celu
mat <- matrix(c(4, 1, 3, 1), ncol = 2, byrow=FALSE) ##Lewa strona warunków ograniczających
dir <- c("<=", "<=") ##Typ ograniczeń
rhs <- c(190, 55) ##Prawa strona ograniczeń
max <- TRUE ##Do czego dąży funkcja celu

wynik <- Rglpk_solve_LP(cx, mat, dir, rhs, max=max)

##Zadanie 2
cx2 <- cx
mat2 <- rbind(mat, c(1,0))
dir2 <- c(dir, "<=")
rhs2 <- c(rhs, 47)

wynik2 <- Rglpk_solve_LP(cx2, mat2, dir2, rhs2, max=max)

##Zadanie 3
cx3 <- cx
mat3 <- rbind(mat, c(1,0))
dir3 <- c(dir, ">=")
rhs3 <- c(rhs, 48)

wynik3 <- Rglpk_solve_LP(cx3, mat3, dir3, rhs3, max=max)

##Zadanie 4
cx4 <- cx2
mat4 <- rbind(mat2, c(0,1))
dir4 <- c(dir2, "<=")
rhs4 <- c(rhs2, 0)

wynik4 <- Rglpk_solve_LP(cx4, mat4, dir4, rhs4, max=max)

##Zadanie 5
cx5 <- cx2
mat5 <- rbind(mat2, c(0,1))
dir5 <- c(dir2, ">=")
rhs5 <- c(rhs2, 1)

wynik5 <- Rglpk_solve_LP(cx5, mat5, dir5, rhs5, max=max)

##Zadanie 6
cx6 <- cx5
mat6 <- rbind(mat5, c(1,0))
dir6 <- c(dir5, "<=")
rhs6 <- c(rhs5, 46)

wynik6 <- Rglpk_solve_LP(cx6, mat6, dir6, rhs6, max=max)

##Zadanie 7
cx7 <- cx5
mat7 <- rbind(mat5, c(1,0))
dir7 <- c(dir5, ">=")
rhs7 <- c(rhs5, 47)

wynik7 <- Rglpk_solve_LP(cx7, mat7, dir7, rhs7, max=max)

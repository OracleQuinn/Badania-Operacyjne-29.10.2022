cx <- rep(1, 14)
mat <- matrix(c(
  1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0,
  1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0,
  0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1,
  0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1
), byrow = TRUE, nrow = 9)
dir <- rep(">=", 9)
rhs <- rep(1, 9)
max <- FALSE

wynik = Rglpk_solve_LP(cx, mat, dir, rhs, max = max, sensitivity_report = TRUE)

mat2 <- rbind(mat, rep(1, 14))
dir2 <-c(dir, "==")
rhs2 <- c(rhs, 5)
cx2 <- c(rep(0, 11), 1, rep(0, 2))

wynik2 = Rglpk_solve_LP(cx2, mat2, dir2, rhs2, max = max)

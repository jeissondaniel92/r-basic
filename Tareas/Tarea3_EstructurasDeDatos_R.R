seq(1, 85, by = 2)
seq(1, 85, length.out = 15)
seq(1, by = 2, length.out = 43)
1:85


# Tarea 3: Estructuras de datos en R

# Primer Punto

  harry <- -10:27
  harry[7]

# Segundo Punto
  
  serie = function(n){
    100 * 2 ^ n - 7 * 3 ^ n
  }
  
  x = 0:200
  max(serie(x))

# Tercer Punto

  n = 0:40
  x = 3*5^n-1
  x[x>3.5]

# Cuarto Punto

  eval_comp <- function(x){
    print(c(round(Re(x), 2), round(Im(x), 2), round(Mod(x), 2), round(Arg(x), 2), round(Conj(x), 2)))
  }
  
  num = 8 + 4i
  eval_comp(num)

# Quinto Punto

  cuadratica = function(a, b, c){
    s1 = (-b + sqrt(b^2 - 4*a*c))/(2*a)
    s2 = (-b - sqrt(b^2 - 4*a*c))/(2*a)
    print(c(s1, s2), 2)
  }
  
  
  cuadratica(2, 4, -6)

# Sexto Punto
  vec = c(0,9,98,2,6,7,5,19,88,20,16,0)
  
  c(vec[2], vec[8], vec[10], vec[11])
  c(vec[which(vec == 9)], vec[which(vec == 19)], vec[which(vec == 20)], vec[which(vec == 16)])
  c(vec[vec == 9], vec[vec == 19], vec[vec == 20], vec[vec == 16])
  
  # Que entradas son pares?
  which(vec%%2 == 0)
  #Que entradas no son pares y mayores que 20
  vec[which(vec%%2 != 0 & vec>20)]
  #Donde toma vec su valor máximo?
  which.max(vec)
  #dónde toma vec sus valores mínimos
  which(vec == min(vec))

# Septimo punto

  A = matrix(c(1, 3, 2, 4), byrow = TRUE, nrow = 2)
  A = A %*% (A + A) %*% A
  A[2, 2]
  
# octavo Punto
  
  B = rbind(c(2, 4, -6), c(0, 0, 3), c(0, -2, 5))
  eigen(B)$values
  
# Noveno Punto
  
  C = rbind(c(-48, 35, -12), c(-134, 95, -32), c(-194, 133, -44))
  round(eigen(C)$vectors, 3)

# Decimo Punto
  
  # Da el rango de la matriz D =[[-2 -8 -2 3] [-3 -6 -1 2] [-9 -22 -3 7] [-18 -44 -8  15]]
  D = rbind(c(2, -8, -2, 3), c(-3, -6, -1, 2), c(-9, -22, -3, 7), c(-18, -44, -8, 15))
  qr(D)$rank  
  
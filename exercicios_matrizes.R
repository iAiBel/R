# Lista de Exercícios - Matemática Computacional (Matrizes)
 
#PÓS-GRADUAÇÃO EM DATA SCIENCE E IA  
#Matemática Computacional  
#ATIVIDADES APLICADAS  – 07/08/202 5 
 
#PROFESSOR : Luiz Oliveira  
 
 
#ALUNO 1 : Isabel Azar de Holanda  
 
 
 
#ALUNO 2 : _______________________________________________________  
 
 
#1) Represente explicitamente cada uma das matrizes:  
 
#a) A = (a ij)3 x 2 tal que a ij = i + 2j  
# Criando a matriz com 3 linhas e 2 colunas
Q1A <- matrix(0,nrow = 3, ncol = 2)
# Preenchendo a matriz conforme a regra ij= i + 2j
for (i in 1:3){
  for (j in 1:2){
    Q1A[i, j] <- i + 2*j
  }
}
# Exibindo a matriz
Q1A

#b) B = (b ij)2 x 3 tal que b ij = i2 + 3j 
# Criando a matriz com 2 linhas e 3 colunas
Q1B <- matrix(0,nrow = 2, ncol = 3)
# Preenchendo a matriz conforme a regra ij = i2 + 3j
for (i in 1:2){
  for (j in 1:3){
    Q1B[i, j] <- i^2 + 3*j
  }
}
#Exibindo a matriz
Q1B

#c) C = (c ij)2 x 2 tal que c ij = 2i
# Criando a matriz com 2 linhas e 2 colunas
Q1C <- matrix(0, nrow = 2, ncol = 2)
# Preenchendo a matriz conforme a regra ij=2i
for (i in 1:2){
  for (j in 1:2){
    Q1C[i, j] <- i*2
  }
}
#Exibindo a matriz
Q1C

#2) Dada a matriz A = |  5   4  -2 | determine as matrizes:  
#                     | -6   0   3 |

#a) At 
#Criando a matriz A= 2 linhas, 3 colunas
Q2A <- matrix(c(5, -6, 4, 0, -2, 3), nrow = 2, ncol = 3)
# Transposta de A
Q2At <- t(Q2A)
#Exibindo a matriz
Q2A

#b) (At)t 
# Transposta da transposta
Q2ATT<- t(Q2At)
#Exibindo a matriz
Q2ATT

#3) Dadas as matrizes: A = |  2   3   8 | B = |  4   5  -9 |  C= |  2   0  |
#                          |  1  -4   0 |     |  6   2   7 |     |  8   6  |
#                                                                | -4  -10 |                  
#                         



#determine:  
# Criando a matriz A = 2 linhas, 3 colunas
Q3a<- matrix(c(2, 1, 3, -4, 8, 0 ), nrow = 2, byrow = )

#Criando a matriz B = 2 linhas, 3 colunas
Q3b<- matrix(c(4, 6, 5, 2, -9, 7), nrow= 2, byrow = FALSE)

#Criando a matriz C = 3 linhas, 2 colunas
Q3c<- matrix(c(2, 8 , -4, 0, 6, -10), nrow = 3, byrow = FALSE )

#a) A + B 
soma<- Q3a + Q3b

#b) 2A – B 
subtração<- 2*Q3a -Q3b

#c) 3A – (1/2) x Ct 
subtração_c<- 3*Q3a - (1/2)*t(Q3c)
 
 
#4) Determine a matriz X tal que: | 2   3 |* x = |  4 |
#                                 | 1  -4 |      | -9 |
#Criando as matrizes
Q4A<- matrix(c(2, 1, 3, -4), nrow = 2)
Q4B<- matrix(c(4, -9), nrow = 2)
 
X<- solve(Q4A)%*%Q4B

 
#5) Determinar, se existir, a inversa de cada uma das matrizes:  
#a) A| 1 3 |
#    | 0 2 |   

#Criando a matrix A
Q5A<- matrix(c(1,0,3,2), nrow = 2)

#Calculando a inversa da matriz A
inv_Q5A<- tryCatch(solve(Q5A), error = function (e) "Matriz Q5A não tem inversa")

#Exibindo os resultados
inv_Q5A

#b) B| 1 2 |
#    | 2 4 |  
#Criando a matrix B
Q5B<- matrix(c(1, 2, 2, 4), nrow = 2)

#Calculando a inversa da matriz B
inv_Q5B<- tryCatch (solve(Q5B), error = function (e) "Matriz Q5B não tem inversa")

#Exibindo os resultados
inv_Q5B

#6) Considere as matrizes A, B e C abaixo e determine, se possível:
#A = | 2  6|  B=| 4 | C= (1 -2)
#    |-1  0|    | 3 |
# Criando a matriz A
Q6A<- matrix(c(2, -1, 6, 0), nrow = 2)
Q6B<- matrix(c(4, 3), nrow = 2)
Q6C<- matrix (c(1, -2), ncol = 2)

seguro<- function(expr) {
  tryCatch({
    resultado<- eval(expr)
    print(resultado)
  }, error = function(e){
    cat("Multiplicação não é prossível\n")
  })
}

#a) A x B 
seguro(quote(Q6A %*% Q6B))

#b) A x C 
seguro(quote(Q6A %*% Q6C))
#Multiplicação não possível

#c) B x C  
seguro(quote(Q6B %*% Q6C))

#d) A2 
seguro(quote(Q6A %*% Q6A))

#e) B2
seguro(quote(Q6B %*% Q6B))
#Multiplicação não possível

#Obs.: A2 = A x A  B2 = B x B  
 
    
 
#7)Determine a matriz y tal que:  
# y*|1  2| = |2  14| 
#   |0  3|   |3   9|
#Criando a matriz Q7A(a da direita)
Q7A<- matrix(c(1, 0, 2, 3), nrow = 2)
#Criando a matriz Q7B(do resultado)
Q7B<- matrix(c(2, 3, 14, 9), nrow= 2)
#Calculando inverso de Q7A
Q7A_inv<- solve(Q7A)
#Calculando y
y<- Q7B %*% Q7A_inv

round(y, 2)


 
 

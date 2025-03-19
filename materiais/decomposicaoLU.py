import numpy as np

def decomposicaoLU(A):
    n = len(A)
    L = np.zeros((3,3))
    U = np.zeros((3,3))
    for q in range(n):
        L[q][q] = 1

    for p in range(n):

        #computing U
        if p == 0:
            for j in range(n):
                U[p][j] = A[p][j]
        else:
            for j in range(p, n):
                soma = 0

                for k in range(p):#range de 0 até p-1
                    soma = soma + L[p][k]*U[k][j]

                U[p][j] = A[p][j] - soma

        #computing L
        if p==0:
            for i in range(p+1, n):
                L[i][p] = A[i][p]/U[p][p]
        else:
            for i in range(p+1, n):
                soma=0
                for k in range(p):#range de zero até p-1
                    soma = soma + L[i][k]*U[k][p]
                L[i][p] = (A[i][p] - soma)/U[p][p]

    return L, U

def SistemaTriangularInferior(A, b, x):
    n=len(A)
    for i in range(n):
        if i==0:
            x[i] = b[i]/A[i][i];
        else:
            soma=0
            for k in range(i):
                soma = soma + A[i][k]*x[k]
            x[i] = (b[i] - soma)/A[i][i]
    
    return x

def SistemaTriangularSuperior(A, b, x):
    n=len(A)
    for p in range(n):
        i = (n-1) - p
        if i==(n-1):
            x[i] = b[i]/A[i][i]
        else:
            soma=0
            for k in range(i+1,n):
                soma = soma + A[i][k]*x[k]
            x[i] = (b[i] - soma)/A[i][i]
    return x

#definir a matriz A:
A = np.array([[5, 2, 1], [-1,4,2], [2,-3,10]], dtype=float)
b = np.array([[-12], [20], [3]], dtype=float)
L, U = decomposicaoLU(A)
n=len(A)
x = np.zeros(n)
y = np.zeros(n)
y = SistemaTriangularInferior(L, b, y)
x = SistemaTriangularSuperior(U, y, x)
print("Matriz L\n", L)
print("Matriz U\n", U)
print("Matriz A\n", L@U)
print("vetor y:\n", y)
print("vetor x:\n", x)
print("Ax=\n", A@x)

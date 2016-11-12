# 	Erzeuge eine nxm Matrix A über F2, berechne den Kern von A, 
#	d.h. alle x mit A*x=0.

F=GF(2)
n=4
m=6
A=random_matrix(F,n,m)
kern=kernel(A)

if n==m:
	if det(A)==0:
		print "Quadratische Matrix A:\n",A
		print kern
	else:
		print "Det(A):", det(A)
		print "Determinante ungleich 0, Kern der Matrix existiert nicht!"
else:
	print "Matrix A:\n",A
	print kern
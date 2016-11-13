# g^x=h mod op

def my_sph(h, g, op):		

	m=factor(op-1)		
	
	M=list(m)	
	
	col=[]
	for i in xrange(0,len(M)):
		col.append(mod(g**((op-1)//(M[i][0]**M[i][1]),op))) #Problem

	col2=[]
	for i in xrange(0,len(M)):
		col2.append(mod(h**((op-1)/(M[i][0]**M[i][1]),op))) #Problem


	col3=[]
	for i in xrange(0,len(M)):
		col3.append(solve(col[i]**x==col2[i],x))	


	#CRT gleichungen lösen
	
	G=[]					
	for i in xrange(0,len(M)):
		G.append((op-1)//(M[i][0]**M[i][1]))	

	y=[]

	for i in xrange(0,len(M)):
		y.append(mod(G[0]^(-1),(M[i][0]**M[i][1])))		#Inverse benötigt! Problem

	
	#x=col3[0]*G[0]*y[0]+col3[1]*G[1]*y[1]+col3[2]*G[2]*y[2]
	
	#return x



#Test Werte: g=23, op=11251, h=9689
#Später: Alle Schleifen in eine schreiben, da gleiche durchlaufwerte

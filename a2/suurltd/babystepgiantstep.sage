#Baby-Step/Giant-Step Algorithmus
#Eingabe: beliebiges Element a aus zyklischen Gruppe, Basis g 
#Gruppenoperation op 
#Rechnung a=g^b
#Ausgabe: b

#Definition der Gruppenoperation
#op = lambda x,y: x * y






def my_bsgs(a, g, op):

	m=ceil(sqrt(op-1))
	
	baby=[1]					
	for i in xrange(1,m):
		baby.append(mod(baby[i-1]*g,op))
	#print baby

	h=mod(g^-m,op) 			#EEA Inverse (multiplikativ/Additiv)

	giant =[a]
	for j in xrange(1,m):
		giant.append(mod(a*h^j,op))
	#print giant

	gleich=list(set(baby).intersection(set(giant)))

	istelle=baby.index(gleich[0])
	jstelle=giant.index(gleich[0])
	#print istelle
	#print jstelle

	b=istelle+m*jstelle
	return b
pass

#def my_sph(a, g, op):
	
	#fac=factor(11250) #=2 * 3^2 * 5^4


	#Tabelle mit pi= Basis-Werten (2,3,5)
	#	 mit ai= Exponenten   (1,2,4)
	#	 mit 
	
	



#log g (h)=a, h=g^a	gesucht ist a! Gruppenordnung <g>=G
#			g Generator von G und h aus G

#my_sph(g,a)

	#Operation(0)=Additiv EC/Zn+, Operation(1)=Multiplikativ Zp*
	
	#if operation==0:
	#	op=lambda x,y: x+y
	#	pow=lambda x,a: x*a
	#	G=n #Ordnung bei Generator maximal, ord(g)=n!
	# 	inv_g=G-g

	#else:	
	#	op=lambda x,y: x*y
	#	pow=lambda x^a
	#	G=p-1	#Ordnung bei Generator maximal, ord(g)=p-1!

my_bsgs(a, g, op, pow, G, inv_g)

	
	B=ceil(sqrt(G))

	baby=[]

	for i in range(B):
		baby.append(1)
		for j in range(i):
			baby[i]=op(baby[i],g)
			
	sort(baby)
	
	giant=[]
	
	for i in range(B):
		giant.append(a*pow(inv_g,B))	

	gleich=list(set(baby).intersection(set(giant)))

	i_pos=baby.index(gleich[0])
	j_pos=giant.index(gleich[0])

	h=i_pos+m*j_pos


g=Integers(2233729)(1)

group_order=order(g)

a=1229675


op= lambda x,y: x+y
pow=lambda x,a: x*a


my_sph(a, g, op, group_order)

#Geht nur bei kleinen Exponenten, aber wir haben einmal 2**100
#	fac=group_order.factor()
#	fac_list=list(fac)
	
#	n=[]
#	a_list=[]
#	g_list=[]	

#	for i in range(0,len(fac_list)):
#		n.append(group_order/(fac_list[i][0]**fac_list[i][1]))
#		a_list.append(a**n[i])
#		g_list.append(g**n[i])
		
	#Berechne log a_list[i] zur basis g_list[i] mittels BSGS!
	#ergebnis=[]
	#for i in range(0,len(a_list)):
	#	ergebnis.append(my_bsgs(a_list[i],g_list[i], op))
	
	#Zusammensetzen mit CRT!	

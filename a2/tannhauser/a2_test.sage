# secure divide
def secdiv(p,g):
	c=floor(p/g)
	if c == 0:
		c=1
	return c

def my_eea(g, p, op):

	#print("g="+str(g)+"p="+str(p))
	
	if p<g:
		tmp=g
		g=p
		p=tmp
	
	if op == '+':
		return p-g
	i=0
	#print("g="+str(g)+"p="+str(p))
	r0=[p]
	r1=[g]
	q=[secdiv(p,g)]
	t=[0]
	s=[0]
	while(r1[i]>0):
		i=i+1
		r0.append(r1[i-1])
		r1.append(r0[i-1]%r1[i-1])
		if(r1[i]!=0):
			q.append(secdiv(r0[i],r1[i]))
		else:
			q.append(0)
		s.append(0)
		t.append(0)
	
	i=i-1
	t[i]=0
	s[i]=1
	while(i>0):
		i=i-1
		t[i]=s[i+1]
		s[i]=t[i+1]-(q[i]*t[i])
		"""
		print("r0="+str(r0[i])),
		print("r1="+str(r1[i])),
		print("q="+str(q[i])),
		print("t="+str(t[i])),
		print("s="+str(s[i]))
		"""
	if s[0]<0:
		s[0]=p+s[0]
	if s[0]==0:
		print("zeroerror")
	return s[0]

# ceil(sqrt(1048368573847272683495828220422329672575844726363)) == 1023898712689528037525444
g=5
m=1023898712689528037525444
p=1048368573847272683495828220422329672575844726363
#g=3
#m=3
#p=29

op='*'
g=mod(g,p)^m 	# g == 27
g=g.lift()
#g=int(g)
#print("g="+str(g))
#print(type(g))
#print(type(p))
#print(type(m))

print(str(my_eea(g,p,op)))
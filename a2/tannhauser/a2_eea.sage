# secure divide
def secdiv(p,g):
	c=floor(p/g) # round down

	# if the rounded number is zero, set it to one
	if c == 0:
		c=1
	return c

def my_eea(g, p, op):
	
	# if accidentially the ring and the group element were passed wrong around, exchange them
	if p<g:
		tmp=g
		g=p
		p=tmp
	
	# if the operator is +, return the inverse
	if op == '+':
		return p-g
	i=0
	r0=[p] # initiate r0 register with the ring
	r1=[g] # initiate r1 register with the element to be inversed
	q=[secdiv(p,g)] # q is initiated with the first division of the elements
	t=[0] # initiate t, fill it with zero as a placeholder
	s=[0] # initiate s, fill it with zero as a placeholder

	# regular eucludian algorithm
	while(r1[i]>0):
		i=i+1
		r0.append(r1[i-1])
		r1.append(r0[i-1]%r1[i-1])
		# the last q is zero, all other q have to be calculated
		if(r1[i]!=0):
			q.append(secdiv(r0[i],r1[i]))
		else:
			q.append(0)
		# fill s and t with 0 placeholders and extend them to the needed size
		s.append(0)
		t.append(0)
	
	i=i-1 # lower i to get the start index (i is to high becaus of while...)
	t[i]=0 # first t is always zero
	s[i]=1 # first s is always one

	# regular extended eucludian algorithm
	while(i>0):
		i=i-1
		t[i]=s[i+1]
		s[i]=t[i+1]-(q[i]*t[i])

	if s[0]<0: # when s[0] is a negative number, substract it from the ring
		s[0]=p+s[0]
	if s[0]==0:
		print("zeroerror") # zero error, something went wrong
	return s[0] # return the inverse element

# g^-m mod p in (Z,op)
def my_inverse(g, m, p, op):
	# testnumbers from 2.3 2)
	#g=5
	#m=1023898712689528037525444
	#p=1048368573847272683495828220422329672575844726363
	#op='*'

	g=mod(g,p)^m # sqare and multiply g^m
	g=g.lift() # cast g to "sage.rings.integer.Integer"

	return my_eea(g,p,op))
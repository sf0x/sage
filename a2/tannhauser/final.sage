def my_bsgs(a, g, op, group_order):

    B=ceil(sqrt(group_order))
    G=group_order
    baby=[]

    for i in range(B):
        baby.append(1)
        for j in range(i):
            baby[i]=op(baby[i],g)

    baby.sort()

    giant=[]

    inv_g=inverse_mod(g,G)

    for i in range(B):
        giant.append(pow(inv_g,i,G))
        if giant[i] in baby:
        	return baby.index(giant[i])+1 #glaube das muss so?!?
    return 0




op_add=lambda x,y: x+y
op_mul=lambda x,y: x*y

pow_add=lambda g,a,p: mod((g*a),p)
pow_mul=lambda g,a,p: mod(g,p)^a


p=(2233729)(1)
group_order=order(p)
a=1229675
op=op_add
pow=pow_add
g=5

print(my_bsgs(a,g,op,group_order))
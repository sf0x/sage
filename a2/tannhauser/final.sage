def my_bsgs(g,a,op,pow,or):

op_mul=lambda x,y: x*y
op_add=lambda x,y: x+y
op=op_mul
p=1048368573847272683495828220422329672575844726363
pow_mul=lambda g,a,p: mod(g,p)^a
pow_add=lambda g,a,p: mod((g*a),p)
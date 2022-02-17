	lw x1,0(x0)
	add x2,x1,x0
	ori x4,x0,1
	ori x5,x0,4
	ori x6,x0,0xffffffff
L1:
	beq x2,x4,finish
	ori x3,x0,1
	ori x7,x0,4
	ori x8,x0,8
L2:
	sltu x11, x3,x2
	beq x11,x0,L3
	lw x9,0(x7)
	lw x10,0(x8)
	sltu x11,x9,x10
	beq x11,x4,L4
	sw x10,0(x7)
	sw x9,0(x8)
	jal x0, L4
L3:
    	add x2,x2,x6
    	jal x0,  L1
L4:
    	add x3,x3,x4
    	add x7,x7,x5
    	add x8,x8,x5
    	jal x0,  L2
finish:
    	jal x0, finish
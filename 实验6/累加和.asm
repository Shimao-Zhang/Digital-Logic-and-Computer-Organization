lw x3, 0x0(x0)  	#读取x0寄存器里数值加上0x0的内存地址（0x0000）中的数值到x3寄存器。
ori x1, x0,0x1       	#x1寄存器赋值1，初始i
ori x2, x0,0x1       	#x2寄存器赋值1,步长为1

loop:
add x4, x4, x1      	#x4寄存器保存累加和
beq x1, x3,finish  	#x1=n跳转
add x1, x1, x2      	#x1=x1+1
jal x0, loop

finish:
sw x4, 0x4(x0)
jal x0,finish

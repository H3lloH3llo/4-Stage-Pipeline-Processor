li r0, 0, 0x6767
li r1, 0, 0x0123 
li r2, 0, 0x4567 
li r3, 0, 0x89AB 
li r4, 0, 0xCDEF
li r5, 0, 0x0ECE
li r6, 0, 0x0345
li r7, 0, 0x0F0F
li r8, 0, 0xFFFF 
li r9, 0, 0x8000
li r10, 0, 0x7FFF
nop
nop
simals r11, r1, r2, r3 
simahs r12, r11, r4, r5 
simsls r13, r2, r3, r4 
simshs r14, r13, r5, r6 
slmals r15, r3, r4, r5 
slmahs r16, r15, r6, r7 
slmsls r17, r4, r5, r6 
slmshs r18, r17, r7, r8
nop
nop 
shrhi r19, r1, 4 
shrhi r20, r19, 3 
au r21, r2, r3 
au r22, r21, r4 
cnt1h r23, r6 
cnt1h r24, r23 
ahs r25, r8, r9 
ahs r26, r25, r10 
or r27, r1, r2 
or r28, r27, r3 
bcw r29, r4 
bcw r30, r29 
maxws r11, r5, r6 
minws r12, r11, r7 
minws r13, r8, r9 
maxws r14, r13, r10 
mlhu r15, r6, r7 
mlhu r16, r15, r8 
mlhcu r17, r1, 5 
mlhcu r18, r17, 3 
and r19, r2, r3 
and r20, r19, r4 
clzw r21, r8 
clzw r22, r21 
rotw r23, r1, r2 
rotw r24, r23, r3 
sfwu r25, r3, r4 
sfwu r26, r25, r5 
sfhs r27, r6, r7 
sfhs r28, r27, r8
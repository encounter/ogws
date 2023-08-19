.include "macros.inc"

.section .sdata2, "a"
.balign 0x8
.global lbl_804C1328
lbl_804C1328:
	.incbin "baserom.dol", 0x3C9F68, 0x4
.global lbl_804C132C
lbl_804C132C:
	.incbin "baserom.dol", 0x3C9F6C, 0x4
.global lbl_804C1330
lbl_804C1330:
	.incbin "baserom.dol", 0x3C9F70, 0x8

.section .text, "ax"
.global AXFXDelayGetMemSize
AXFXDelayGetMemSize:
/* 8010974C 0010464C  80 A3 00 40 */	lwz r5, 0x40(r3)
/* 80109750 00104650  80 83 00 44 */	lwz r4, 0x44(r3)
/* 80109754 00104654  80 03 00 48 */	lwz r0, 0x48(r3)
/* 80109758 00104658  7C 65 22 14 */	add r3, r5, r4
/* 8010975C 0010465C  7C 63 02 14 */	add r3, r3, r0
/* 80109760 00104660  54 63 38 30 */	slwi r3, r3, 7
/* 80109764 00104664  4E 80 00 20 */	blr 

.global AXFXDelayInit
AXFXDelayInit:
/* 80109768 00104668  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010976C 0010466C  7C 08 02 A6 */	mflr r0
/* 80109770 00104670  90 01 00 24 */	stw r0, 0x24(r1)
/* 80109774 00104674  39 61 00 20 */	addi r11, r1, 0x20
/* 80109778 00104678  4B FA 85 CD */	bl _savegpr_27
/* 8010977C 0010467C  7C 7E 1B 78 */	mr r30, r3
/* 80109780 00104680  4B FE 81 41 */	bl OSDisableInterrupts
/* 80109784 00104684  38 80 00 01 */	li r4, 1
/* 80109788 00104688  38 00 00 03 */	li r0, 3
/* 8010978C 0010468C  7C 7F 1B 78 */	mr r31, r3
/* 80109790 00104690  7F C3 F3 78 */	mr r3, r30
/* 80109794 00104694  90 9E 00 3C */	stw r4, 0x3c(r30)
/* 80109798 00104698  7C 09 03 A6 */	mtctr r0
lbl_8010979C:
/* 8010979C 0010469C  80 03 00 40 */	lwz r0, 0x40(r3)
/* 801097A0 001046A0  2C 00 00 00 */	cmpwi r0, 0
/* 801097A4 001046A4  40 82 00 64 */	bne lbl_80109808
/* 801097A8 001046A8  4B FE 81 19 */	bl OSDisableInterrupts
/* 801097AC 001046AC  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 801097B0 001046B0  7C 7B 1B 78 */	mr r27, r3
/* 801097B4 001046B4  3B 80 00 00 */	li r28, 0
/* 801097B8 001046B8  3B A0 00 00 */	li r29, 0
/* 801097BC 001046BC  60 00 00 01 */	ori r0, r0, 1
/* 801097C0 001046C0  90 1E 00 3C */	stw r0, 0x3c(r30)
lbl_801097C4:
/* 801097C4 001046C4  80 7E 00 00 */	lwz r3, 0(r30)
/* 801097C8 001046C8  2C 03 00 00 */	cmpwi r3, 0
/* 801097CC 001046CC  41 82 00 14 */	beq lbl_801097E0
/* 801097D0 001046D0  81 8D 85 2C */	lwz r12, __AXFXFree-_SDA_BASE_(r13)
/* 801097D4 001046D4  7D 89 03 A6 */	mtctr r12
/* 801097D8 001046D8  4E 80 04 21 */	bctrl 
/* 801097DC 001046DC  93 BE 00 00 */	stw r29, 0(r30)
lbl_801097E0:
/* 801097E0 001046E0  3B 9C 00 01 */	addi r28, r28, 1
/* 801097E4 001046E4  3B DE 00 04 */	addi r30, r30, 4
/* 801097E8 001046E8  28 1C 00 03 */	cmplwi r28, 3
/* 801097EC 001046EC  41 80 FF D8 */	blt lbl_801097C4
/* 801097F0 001046F0  7F 63 DB 78 */	mr r3, r27
/* 801097F4 001046F4  4B FE 80 F5 */	bl OSRestoreInterrupts
/* 801097F8 001046F8  7F E3 FB 78 */	mr r3, r31
/* 801097FC 001046FC  4B FE 80 ED */	bl OSRestoreInterrupts
/* 80109800 00104700  38 60 00 00 */	li r3, 0
/* 80109804 00104704  48 00 01 4C */	b lbl_80109950
lbl_80109808:
/* 80109808 00104708  54 00 28 34 */	slwi r0, r0, 5
/* 8010980C 0010470C  90 03 00 18 */	stw r0, 0x18(r3)
/* 80109810 00104710  38 63 00 04 */	addi r3, r3, 4
/* 80109814 00104714  42 00 FF 88 */	bdnz lbl_8010979C
/* 80109818 00104718  7F DC F3 78 */	mr r28, r30
/* 8010981C 0010471C  3B 60 00 00 */	li r27, 0
lbl_80109820:
/* 80109820 00104720  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 80109824 00104724  81 8D 85 28 */	lwz r12, __AXFXAlloc-_SDA_BASE_(r13)
/* 80109828 00104728  54 03 10 3A */	slwi r3, r0, 2
/* 8010982C 0010472C  7D 89 03 A6 */	mtctr r12
/* 80109830 00104730  4E 80 04 21 */	bctrl 
/* 80109834 00104734  2C 03 00 00 */	cmpwi r3, 0
/* 80109838 00104738  90 7C 00 00 */	stw r3, 0(r28)
/* 8010983C 0010473C  40 82 00 0C */	bne lbl_80109848
/* 80109840 00104740  38 00 00 00 */	li r0, 0
/* 80109844 00104744  48 00 00 18 */	b lbl_8010985C
lbl_80109848:
/* 80109848 00104748  3B 7B 00 01 */	addi r27, r27, 1
/* 8010984C 0010474C  3B 9C 00 04 */	addi r28, r28, 4
/* 80109850 00104750  28 1B 00 03 */	cmplwi r27, 3
/* 80109854 00104754  41 80 FF CC */	blt lbl_80109820
/* 80109858 00104758  38 00 00 01 */	li r0, 1
lbl_8010985C:
/* 8010985C 0010475C  2C 00 00 00 */	cmpwi r0, 0
/* 80109860 00104760  40 82 00 64 */	bne lbl_801098C4
/* 80109864 00104764  4B FE 80 5D */	bl OSDisableInterrupts
/* 80109868 00104768  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 8010986C 0010476C  7C 7C 1B 78 */	mr r28, r3
/* 80109870 00104770  3B 60 00 00 */	li r27, 0
/* 80109874 00104774  3B A0 00 00 */	li r29, 0
/* 80109878 00104778  60 00 00 01 */	ori r0, r0, 1
/* 8010987C 0010477C  90 1E 00 3C */	stw r0, 0x3c(r30)
lbl_80109880:
/* 80109880 00104780  80 7E 00 00 */	lwz r3, 0(r30)
/* 80109884 00104784  2C 03 00 00 */	cmpwi r3, 0
/* 80109888 00104788  41 82 00 14 */	beq lbl_8010989C
/* 8010988C 0010478C  81 8D 85 2C */	lwz r12, __AXFXFree-_SDA_BASE_(r13)
/* 80109890 00104790  7D 89 03 A6 */	mtctr r12
/* 80109894 00104794  4E 80 04 21 */	bctrl 
/* 80109898 00104798  93 BE 00 00 */	stw r29, 0(r30)
lbl_8010989C:
/* 8010989C 0010479C  3B 7B 00 01 */	addi r27, r27, 1
/* 801098A0 001047A0  3B DE 00 04 */	addi r30, r30, 4
/* 801098A4 001047A4  28 1B 00 03 */	cmplwi r27, 3
/* 801098A8 001047A8  41 80 FF D8 */	blt lbl_80109880
/* 801098AC 001047AC  7F 83 E3 78 */	mr r3, r28
/* 801098B0 001047B0  4B FE 80 39 */	bl OSRestoreInterrupts
/* 801098B4 001047B4  7F E3 FB 78 */	mr r3, r31
/* 801098B8 001047B8  4B FE 80 31 */	bl OSRestoreInterrupts
/* 801098BC 001047BC  38 60 00 00 */	li r3, 0
/* 801098C0 001047C0  48 00 00 90 */	b lbl_80109950
lbl_801098C4:
/* 801098C4 001047C4  7F C3 F3 78 */	mr r3, r30
/* 801098C8 001047C8  48 00 03 D5 */	bl __InitParams
/* 801098CC 001047CC  2C 03 00 00 */	cmpwi r3, 0
/* 801098D0 001047D0  40 82 00 64 */	bne lbl_80109934
/* 801098D4 001047D4  4B FE 7F ED */	bl OSDisableInterrupts
/* 801098D8 001047D8  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 801098DC 001047DC  7C 7C 1B 78 */	mr r28, r3
/* 801098E0 001047E0  3B 60 00 00 */	li r27, 0
/* 801098E4 001047E4  3B A0 00 00 */	li r29, 0
/* 801098E8 001047E8  60 00 00 01 */	ori r0, r0, 1
/* 801098EC 001047EC  90 1E 00 3C */	stw r0, 0x3c(r30)
lbl_801098F0:
/* 801098F0 001047F0  80 7E 00 00 */	lwz r3, 0(r30)
/* 801098F4 001047F4  2C 03 00 00 */	cmpwi r3, 0
/* 801098F8 001047F8  41 82 00 14 */	beq lbl_8010990C
/* 801098FC 001047FC  81 8D 85 2C */	lwz r12, __AXFXFree-_SDA_BASE_(r13)
/* 80109900 00104800  7D 89 03 A6 */	mtctr r12
/* 80109904 00104804  4E 80 04 21 */	bctrl 
/* 80109908 00104808  93 BE 00 00 */	stw r29, 0(r30)
lbl_8010990C:
/* 8010990C 0010480C  3B 7B 00 01 */	addi r27, r27, 1
/* 80109910 00104810  3B DE 00 04 */	addi r30, r30, 4
/* 80109914 00104814  28 1B 00 03 */	cmplwi r27, 3
/* 80109918 00104818  41 80 FF D8 */	blt lbl_801098F0
/* 8010991C 0010481C  7F 83 E3 78 */	mr r3, r28
/* 80109920 00104820  4B FE 7F C9 */	bl OSRestoreInterrupts
/* 80109924 00104824  7F E3 FB 78 */	mr r3, r31
/* 80109928 00104828  4B FE 7F C1 */	bl OSRestoreInterrupts
/* 8010992C 0010482C  38 60 00 00 */	li r3, 0
/* 80109930 00104830  48 00 00 20 */	b lbl_80109950
lbl_80109934:
/* 80109934 00104834  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 80109938 00104838  7F E3 FB 78 */	mr r3, r31
/* 8010993C 0010483C  60 00 00 02 */	ori r0, r0, 2
/* 80109940 00104840  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80109944 00104844  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80109948 00104848  4B FE 7F A1 */	bl OSRestoreInterrupts
/* 8010994C 0010484C  38 60 00 01 */	li r3, 1
lbl_80109950:
/* 80109950 00104850  39 61 00 20 */	addi r11, r1, 0x20
/* 80109954 00104854  4B FA 84 3D */	bl _restgpr_27
/* 80109958 00104858  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8010995C 0010485C  7C 08 03 A6 */	mtlr r0
/* 80109960 00104860  38 21 00 20 */	addi r1, r1, 0x20
/* 80109964 00104864  4E 80 00 20 */	blr 

.global AXFXDelaySettings
AXFXDelaySettings:
/* 80109968 00104868  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010996C 0010486C  7C 08 02 A6 */	mflr r0
/* 80109970 00104870  90 01 00 24 */	stw r0, 0x24(r1)
/* 80109974 00104874  39 61 00 20 */	addi r11, r1, 0x20
/* 80109978 00104878  4B FA 83 C9 */	bl _savegpr_26
/* 8010997C 0010487C  7C 7F 1B 78 */	mr r31, r3
/* 80109980 00104880  4B FE 7F 41 */	bl OSDisableInterrupts
/* 80109984 00104884  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80109988 00104888  7C 7A 1B 78 */	mr r26, r3
/* 8010998C 0010488C  60 00 00 01 */	ori r0, r0, 1
/* 80109990 00104890  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80109994 00104894  4B FE 7F 2D */	bl OSDisableInterrupts
/* 80109998 00104898  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 8010999C 0010489C  7C 7C 1B 78 */	mr r28, r3
/* 801099A0 001048A0  7F FB FB 78 */	mr r27, r31
/* 801099A4 001048A4  3B A0 00 00 */	li r29, 0
/* 801099A8 001048A8  60 00 00 01 */	ori r0, r0, 1
/* 801099AC 001048AC  3B C0 00 00 */	li r30, 0
/* 801099B0 001048B0  90 1F 00 3C */	stw r0, 0x3c(r31)
lbl_801099B4:
/* 801099B4 001048B4  80 7B 00 00 */	lwz r3, 0(r27)
/* 801099B8 001048B8  2C 03 00 00 */	cmpwi r3, 0
/* 801099BC 001048BC  41 82 00 14 */	beq lbl_801099D0
/* 801099C0 001048C0  81 8D 85 2C */	lwz r12, __AXFXFree-_SDA_BASE_(r13)
/* 801099C4 001048C4  7D 89 03 A6 */	mtctr r12
/* 801099C8 001048C8  4E 80 04 21 */	bctrl 
/* 801099CC 001048CC  93 DB 00 00 */	stw r30, 0(r27)
lbl_801099D0:
/* 801099D0 001048D0  3B BD 00 01 */	addi r29, r29, 1
/* 801099D4 001048D4  3B 7B 00 04 */	addi r27, r27, 4
/* 801099D8 001048D8  28 1D 00 03 */	cmplwi r29, 3
/* 801099DC 001048DC  41 80 FF D8 */	blt lbl_801099B4
/* 801099E0 001048E0  7F 83 E3 78 */	mr r3, r28
/* 801099E4 001048E4  4B FE 7F 05 */	bl OSRestoreInterrupts
/* 801099E8 001048E8  7F E3 FB 78 */	mr r3, r31
/* 801099EC 001048EC  4B FF FD 7D */	bl AXFXDelayInit
/* 801099F0 001048F0  2C 03 00 00 */	cmpwi r3, 0
/* 801099F4 001048F4  40 82 00 64 */	bne lbl_80109A58
/* 801099F8 001048F8  4B FE 7E C9 */	bl OSDisableInterrupts
/* 801099FC 001048FC  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80109A00 00104900  7C 7D 1B 78 */	mr r29, r3
/* 80109A04 00104904  3B 80 00 00 */	li r28, 0
/* 80109A08 00104908  3B C0 00 00 */	li r30, 0
/* 80109A0C 0010490C  60 00 00 01 */	ori r0, r0, 1
/* 80109A10 00104910  90 1F 00 3C */	stw r0, 0x3c(r31)
lbl_80109A14:
/* 80109A14 00104914  80 7F 00 00 */	lwz r3, 0(r31)
/* 80109A18 00104918  2C 03 00 00 */	cmpwi r3, 0
/* 80109A1C 0010491C  41 82 00 14 */	beq lbl_80109A30
/* 80109A20 00104920  81 8D 85 2C */	lwz r12, __AXFXFree-_SDA_BASE_(r13)
/* 80109A24 00104924  7D 89 03 A6 */	mtctr r12
/* 80109A28 00104928  4E 80 04 21 */	bctrl 
/* 80109A2C 0010492C  93 DF 00 00 */	stw r30, 0(r31)
lbl_80109A30:
/* 80109A30 00104930  3B 9C 00 01 */	addi r28, r28, 1
/* 80109A34 00104934  3B FF 00 04 */	addi r31, r31, 4
/* 80109A38 00104938  28 1C 00 03 */	cmplwi r28, 3
/* 80109A3C 0010493C  41 80 FF D8 */	blt lbl_80109A14
/* 80109A40 00104940  7F A3 EB 78 */	mr r3, r29
/* 80109A44 00104944  4B FE 7E A5 */	bl OSRestoreInterrupts
/* 80109A48 00104948  7F 43 D3 78 */	mr r3, r26
/* 80109A4C 0010494C  4B FE 7E 9D */	bl OSRestoreInterrupts
/* 80109A50 00104950  38 60 00 00 */	li r3, 0
/* 80109A54 00104954  48 00 00 20 */	b lbl_80109A74
lbl_80109A58:
/* 80109A58 00104958  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80109A5C 0010495C  7F 43 D3 78 */	mr r3, r26
/* 80109A60 00104960  60 00 00 02 */	ori r0, r0, 2
/* 80109A64 00104964  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80109A68 00104968  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80109A6C 0010496C  4B FE 7E 7D */	bl OSRestoreInterrupts
/* 80109A70 00104970  38 60 00 01 */	li r3, 1
lbl_80109A74:
/* 80109A74 00104974  39 61 00 20 */	addi r11, r1, 0x20
/* 80109A78 00104978  4B FA 83 15 */	bl _restgpr_26
/* 80109A7C 0010497C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80109A80 00104980  7C 08 03 A6 */	mtlr r0
/* 80109A84 00104984  38 21 00 20 */	addi r1, r1, 0x20
/* 80109A88 00104988  4E 80 00 20 */	blr 

.global AXFXDelayShutdown
AXFXDelayShutdown:
/* 80109A8C 0010498C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80109A90 00104990  7C 08 02 A6 */	mflr r0
/* 80109A94 00104994  90 01 00 24 */	stw r0, 0x24(r1)
/* 80109A98 00104998  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80109A9C 0010499C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80109AA0 001049A0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80109AA4 001049A4  93 81 00 10 */	stw r28, 0x10(r1)
/* 80109AA8 001049A8  7C 7C 1B 78 */	mr r28, r3
/* 80109AAC 001049AC  4B FE 7E 15 */	bl OSDisableInterrupts
/* 80109AB0 001049B0  80 1C 00 3C */	lwz r0, 0x3c(r28)
/* 80109AB4 001049B4  7C 7D 1B 78 */	mr r29, r3
/* 80109AB8 001049B8  3B C0 00 00 */	li r30, 0
/* 80109ABC 001049BC  3B E0 00 00 */	li r31, 0
/* 80109AC0 001049C0  60 00 00 01 */	ori r0, r0, 1
/* 80109AC4 001049C4  90 1C 00 3C */	stw r0, 0x3c(r28)
lbl_80109AC8:
/* 80109AC8 001049C8  80 7C 00 00 */	lwz r3, 0(r28)
/* 80109ACC 001049CC  2C 03 00 00 */	cmpwi r3, 0
/* 80109AD0 001049D0  41 82 00 14 */	beq lbl_80109AE4
/* 80109AD4 001049D4  81 8D 85 2C */	lwz r12, __AXFXFree-_SDA_BASE_(r13)
/* 80109AD8 001049D8  7D 89 03 A6 */	mtctr r12
/* 80109ADC 001049DC  4E 80 04 21 */	bctrl 
/* 80109AE0 001049E0  93 FC 00 00 */	stw r31, 0(r28)
lbl_80109AE4:
/* 80109AE4 001049E4  3B DE 00 01 */	addi r30, r30, 1
/* 80109AE8 001049E8  3B 9C 00 04 */	addi r28, r28, 4
/* 80109AEC 001049EC  28 1E 00 03 */	cmplwi r30, 3
/* 80109AF0 001049F0  41 80 FF D8 */	blt lbl_80109AC8
/* 80109AF4 001049F4  7F A3 EB 78 */	mr r3, r29
/* 80109AF8 001049F8  4B FE 7D F1 */	bl OSRestoreInterrupts
/* 80109AFC 001049FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80109B00 00104A00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80109B04 00104A04  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80109B08 00104A08  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80109B0C 00104A0C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80109B10 00104A10  7C 08 03 A6 */	mtlr r0
/* 80109B14 00104A14  38 21 00 20 */	addi r1, r1, 0x20
/* 80109B18 00104A18  4E 80 00 20 */	blr 

.global AXFXDelayCallback
AXFXDelayCallback:
/* 80109B1C 00104A1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80109B20 00104A20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80109B24 00104A24  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80109B28 00104A28  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80109B2C 00104A2C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80109B30 00104A30  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 80109B34 00104A34  2C 00 00 00 */	cmpwi r0, 0
/* 80109B38 00104A38  41 82 00 10 */	beq lbl_80109B48
/* 80109B3C 00104A3C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80109B40 00104A40  90 04 00 3C */	stw r0, 0x3c(r4)
/* 80109B44 00104A44  48 00 01 40 */	b lbl_80109C84
lbl_80109B48:
/* 80109B48 00104A48  38 00 00 60 */	li r0, 0x60
/* 80109B4C 00104A4C  80 A3 00 00 */	lwz r5, 0(r3)
/* 80109B50 00104A50  80 C3 00 04 */	lwz r6, 4(r3)
/* 80109B54 00104A54  39 60 00 00 */	li r11, 0
/* 80109B58 00104A58  80 63 00 08 */	lwz r3, 8(r3)
/* 80109B5C 00104A5C  7C 09 03 A6 */	mtctr r0
lbl_80109B60:
/* 80109B60 00104A60  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80109B64 00104A64  83 84 00 00 */	lwz r28, 0(r4)
/* 80109B68 00104A68  54 1D 10 3A */	slwi r29, r0, 2
/* 80109B6C 00104A6C  81 04 00 10 */	lwz r8, 0x10(r4)
/* 80109B70 00104A70  7C 1C E8 2E */	lwzx r0, r28, r29
/* 80109B74 00104A74  80 E4 00 24 */	lwz r7, 0x24(r4)
/* 80109B78 00104A78  55 1E 10 3A */	slwi r30, r8, 2
/* 80109B7C 00104A7C  81 24 00 14 */	lwz r9, 0x14(r4)
/* 80109B80 00104A80  7D 00 39 D6 */	mullw r8, r0, r7
/* 80109B84 00104A84  80 E4 00 04 */	lwz r7, 4(r4)
/* 80109B88 00104A88  55 2C 10 3A */	slwi r12, r9, 2
/* 80109B8C 00104A8C  83 E4 00 08 */	lwz r31, 8(r4)
/* 80109B90 00104A90  81 45 00 00 */	lwz r10, 0(r5)
/* 80109B94 00104A94  7C E7 F0 2E */	lwzx r7, r7, r30
/* 80109B98 00104A98  7D 09 3E 70 */	srawi r9, r8, 7
/* 80109B9C 00104A9C  7D 1F 60 2E */	lwzx r8, r31, r12
/* 80109BA0 00104AA0  7D 2A 4A 14 */	add r9, r10, r9
/* 80109BA4 00104AA4  7D 3C E9 2E */	stwx r9, r28, r29
/* 80109BA8 00104AA8  81 44 00 28 */	lwz r10, 0x28(r4)
/* 80109BAC 00104AAC  81 24 00 10 */	lwz r9, 0x10(r4)
/* 80109BB0 00104AB0  7D 87 51 D6 */	mullw r12, r7, r10
/* 80109BB4 00104AB4  83 E6 00 00 */	lwz r31, 0(r6)
/* 80109BB8 00104AB8  81 44 00 04 */	lwz r10, 4(r4)
/* 80109BBC 00104ABC  55 29 10 3A */	slwi r9, r9, 2
/* 80109BC0 00104AC0  7D 8C 3E 70 */	srawi r12, r12, 7
/* 80109BC4 00104AC4  7D 9F 62 14 */	add r12, r31, r12
/* 80109BC8 00104AC8  7D 8A 49 2E */	stwx r12, r10, r9
/* 80109BCC 00104ACC  81 44 00 2C */	lwz r10, 0x2c(r4)
/* 80109BD0 00104AD0  81 24 00 14 */	lwz r9, 0x14(r4)
/* 80109BD4 00104AD4  7D 88 51 D6 */	mullw r12, r8, r10
/* 80109BD8 00104AD8  83 E3 00 00 */	lwz r31, 0(r3)
/* 80109BDC 00104ADC  81 44 00 08 */	lwz r10, 8(r4)
/* 80109BE0 00104AE0  55 29 10 3A */	slwi r9, r9, 2
/* 80109BE4 00104AE4  7D 8C 3E 70 */	srawi r12, r12, 7
/* 80109BE8 00104AE8  7D 9F 62 14 */	add r12, r31, r12
/* 80109BEC 00104AEC  7D 8A 49 2E */	stwx r12, r10, r9
/* 80109BF0 00104AF0  81 44 00 0C */	lwz r10, 0xc(r4)
/* 80109BF4 00104AF4  81 24 00 18 */	lwz r9, 0x18(r4)
/* 80109BF8 00104AF8  39 4A 00 01 */	addi r10, r10, 1
/* 80109BFC 00104AFC  7C 0A 48 40 */	cmplw r10, r9
/* 80109C00 00104B00  91 44 00 0C */	stw r10, 0xc(r4)
/* 80109C04 00104B04  41 80 00 08 */	blt lbl_80109C0C
/* 80109C08 00104B08  91 64 00 0C */	stw r11, 0xc(r4)
lbl_80109C0C:
/* 80109C0C 00104B0C  81 44 00 10 */	lwz r10, 0x10(r4)
/* 80109C10 00104B10  81 24 00 1C */	lwz r9, 0x1c(r4)
/* 80109C14 00104B14  39 4A 00 01 */	addi r10, r10, 1
/* 80109C18 00104B18  7C 0A 48 40 */	cmplw r10, r9
/* 80109C1C 00104B1C  91 44 00 10 */	stw r10, 0x10(r4)
/* 80109C20 00104B20  41 80 00 08 */	blt lbl_80109C28
/* 80109C24 00104B24  91 64 00 10 */	stw r11, 0x10(r4)
lbl_80109C28:
/* 80109C28 00104B28  81 44 00 14 */	lwz r10, 0x14(r4)
/* 80109C2C 00104B2C  81 24 00 20 */	lwz r9, 0x20(r4)
/* 80109C30 00104B30  39 4A 00 01 */	addi r10, r10, 1
/* 80109C34 00104B34  7C 0A 48 40 */	cmplw r10, r9
/* 80109C38 00104B38  91 44 00 14 */	stw r10, 0x14(r4)
/* 80109C3C 00104B3C  41 80 00 08 */	blt lbl_80109C44
/* 80109C40 00104B40  91 64 00 14 */	stw r11, 0x14(r4)
lbl_80109C44:
/* 80109C44 00104B44  81 24 00 30 */	lwz r9, 0x30(r4)
/* 80109C48 00104B48  7C 00 49 D6 */	mullw r0, r0, r9
/* 80109C4C 00104B4C  7C 00 3E 70 */	srawi r0, r0, 7
/* 80109C50 00104B50  90 05 00 00 */	stw r0, 0(r5)
/* 80109C54 00104B54  38 A5 00 04 */	addi r5, r5, 4
/* 80109C58 00104B58  80 04 00 34 */	lwz r0, 0x34(r4)
/* 80109C5C 00104B5C  7C 07 01 D6 */	mullw r0, r7, r0
/* 80109C60 00104B60  7C 00 3E 70 */	srawi r0, r0, 7
/* 80109C64 00104B64  90 06 00 00 */	stw r0, 0(r6)
/* 80109C68 00104B68  38 C6 00 04 */	addi r6, r6, 4
/* 80109C6C 00104B6C  80 04 00 38 */	lwz r0, 0x38(r4)
/* 80109C70 00104B70  7C 08 01 D6 */	mullw r0, r8, r0
/* 80109C74 00104B74  7C 00 3E 70 */	srawi r0, r0, 7
/* 80109C78 00104B78  90 03 00 00 */	stw r0, 0(r3)
/* 80109C7C 00104B7C  38 63 00 04 */	addi r3, r3, 4
/* 80109C80 00104B80  42 00 FE E0 */	bdnz lbl_80109B60
lbl_80109C84:
/* 80109C84 00104B84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80109C88 00104B88  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80109C8C 00104B8C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80109C90 00104B90  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80109C94 00104B94  38 21 00 20 */	addi r1, r1, 0x20
/* 80109C98 00104B98  4E 80 00 20 */	blr 

__InitParams:
/* 80109C9C 00104B9C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80109CA0 00104BA0  7C 08 02 A6 */	mflr r0
/* 80109CA4 00104BA4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80109CA8 00104BA8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80109CAC 00104BAC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 80109CB0 00104BB0  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80109CB4 00104BB4  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 80109CB8 00104BB8  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80109CBC 00104BBC  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 80109CC0 00104BC0  CB A2 99 10 */	lfd f29, lbl_804C1330-_SDA2_BASE_(r2)
/* 80109CC4 00104BC4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80109CC8 00104BC8  3F E0 43 30 */	lis r31, 0x4330
/* 80109CCC 00104BCC  C3 C2 99 08 */	lfs f30, lbl_804C1328-_SDA2_BASE_(r2)
/* 80109CD0 00104BD0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80109CD4 00104BD4  3B C0 00 00 */	li r30, 0
/* 80109CD8 00104BD8  C3 E2 99 0C */	lfs f31, lbl_804C132C-_SDA2_BASE_(r2)
/* 80109CDC 00104BDC  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80109CE0 00104BE0  7C 7D 1B 78 */	mr r29, r3
/* 80109CE4 00104BE4  93 81 00 30 */	stw r28, 0x30(r1)
/* 80109CE8 00104BE8  3B 80 00 00 */	li r28, 0
lbl_80109CEC:
/* 80109CEC 00104BEC  80 1D 00 4C */	lwz r0, 0x4c(r29)
/* 80109CF0 00104BF0  28 00 00 64 */	cmplwi r0, 0x64
/* 80109CF4 00104BF4  41 80 00 0C */	blt lbl_80109D00
/* 80109CF8 00104BF8  38 60 00 00 */	li r3, 0
/* 80109CFC 00104BFC  48 00 00 AC */	b lbl_80109DA8
lbl_80109D00:
/* 80109D00 00104C00  80 1D 00 58 */	lwz r0, 0x58(r29)
/* 80109D04 00104C04  28 00 00 64 */	cmplwi r0, 0x64
/* 80109D08 00104C08  40 81 00 0C */	ble lbl_80109D14
/* 80109D0C 00104C0C  38 60 00 00 */	li r3, 0
/* 80109D10 00104C10  48 00 00 98 */	b lbl_80109DA8
lbl_80109D14:
/* 80109D14 00104C14  80 7D 00 00 */	lwz r3, 0(r29)
/* 80109D18 00104C18  2C 03 00 00 */	cmpwi r3, 0
/* 80109D1C 00104C1C  40 82 00 0C */	bne lbl_80109D28
/* 80109D20 00104C20  38 60 00 00 */	li r3, 0
/* 80109D24 00104C24  48 00 00 84 */	b lbl_80109DA8
lbl_80109D28:
/* 80109D28 00104C28  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 80109D2C 00104C2C  38 80 00 00 */	li r4, 0
/* 80109D30 00104C30  54 05 10 3A */	slwi r5, r0, 2
/* 80109D34 00104C34  4B EF A3 D1 */	bl memset
/* 80109D38 00104C38  93 DD 00 0C */	stw r30, 0xc(r29)
/* 80109D3C 00104C3C  3B 9C 00 01 */	addi r28, r28, 1
/* 80109D40 00104C40  28 1C 00 03 */	cmplwi r28, 3
/* 80109D44 00104C44  80 1D 00 4C */	lwz r0, 0x4c(r29)
/* 80109D48 00104C48  93 E1 00 08 */	stw r31, 8(r1)
/* 80109D4C 00104C4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80109D50 00104C50  C8 01 00 08 */	lfd f0, 8(r1)
/* 80109D54 00104C54  93 E1 00 18 */	stw r31, 0x18(r1)
/* 80109D58 00104C58  EC 00 E8 28 */	fsubs f0, f0, f29
/* 80109D5C 00104C5C  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80109D60 00104C60  EC 00 F8 24 */	fdivs f0, f0, f31
/* 80109D64 00104C64  FC 00 00 1E */	fctiwz f0, f0
/* 80109D68 00104C68  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80109D6C 00104C6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80109D70 00104C70  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80109D74 00104C74  80 1D 00 58 */	lwz r0, 0x58(r29)
/* 80109D78 00104C78  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80109D7C 00104C7C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80109D80 00104C80  EC 00 E8 28 */	fsubs f0, f0, f29
/* 80109D84 00104C84  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80109D88 00104C88  EC 00 F8 24 */	fdivs f0, f0, f31
/* 80109D8C 00104C8C  FC 00 00 1E */	fctiwz f0, f0
/* 80109D90 00104C90  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80109D94 00104C94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80109D98 00104C98  90 1D 00 30 */	stw r0, 0x30(r29)
/* 80109D9C 00104C9C  3B BD 00 04 */	addi r29, r29, 4
/* 80109DA0 00104CA0  41 80 FF 4C */	blt lbl_80109CEC
/* 80109DA4 00104CA4  38 60 00 01 */	li r3, 1
lbl_80109DA8:
/* 80109DA8 00104CA8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80109DAC 00104CAC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80109DB0 00104CB0  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 80109DB4 00104CB4  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80109DB8 00104CB8  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 80109DBC 00104CBC  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80109DC0 00104CC0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80109DC4 00104CC4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80109DC8 00104CC8  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80109DCC 00104CCC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80109DD0 00104CD0  83 81 00 30 */	lwz r28, 0x30(r1)
/* 80109DD4 00104CD4  7C 08 03 A6 */	mtlr r0
/* 80109DD8 00104CD8  38 21 00 70 */	addi r1, r1, 0x70
/* 80109DDC 00104CDC  4E 80 00 20 */	blr 
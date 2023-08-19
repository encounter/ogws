.include "macros.inc"

.section .sdata, "wa"
.balign 0x8
__i2c_ident_flag:
	.long 1

.section .sbss, "wa"
.balign 0x8
__i2c_ident_first:
	.skip 0x4

.section .bss, "wa"
.balign 0x8
.global VIZeroACPType
VIZeroACPType:
	.skip 0x30 # actually 0x1A

.section .text, "ax"
.global WaitMicroTime
WaitMicroTime:
/* 800FC9A4 000F78A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FC9A8 000F78A8  7C 08 02 A6 */	mflr r0
/* 800FC9AC 000F78AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FC9B0 000F78B0  39 61 00 20 */	addi r11, r1, 0x20
/* 800FC9B4 000F78B4  4B FB 53 91 */	bl _savegpr_27
/* 800FC9B8 000F78B8  7C 7B 1B 78 */	mr r27, r3
/* 800FC9BC 000F78BC  4B FF 8C 69 */	bl __OSGetSystemTime
/* 800FC9C0 000F78C0  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 800FC9C4 000F78C4  7C 9C 23 78 */	mr r28, r4
/* 800FC9C8 000F78C8  7C 7D 1B 78 */	mr r29, r3
/* 800FC9CC 000F78CC  3F E0 80 00 */	lis r31, 0x8000
/* 800FC9D0 000F78D0  3B C5 DE 83 */	addi r30, r5, 0x431BDE83@l
lbl_800FC9D4:
/* 800FC9D4 000F78D4  4B FF 8C 51 */	bl __OSGetSystemTime
/* 800FC9D8 000F78D8  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 800FC9DC 000F78DC  7C DC 20 10 */	subfc r6, r28, r4
/* 800FC9E0 000F78E0  7C 7D 19 10 */	subfe r3, r29, r3
/* 800FC9E4 000F78E4  38 A0 00 00 */	li r5, 0
/* 800FC9E8 000F78E8  54 00 F0 BE */	srwi r0, r0, 2
/* 800FC9EC 000F78EC  54 C4 18 38 */	slwi r4, r6, 3
/* 800FC9F0 000F78F0  7C 1E 00 16 */	mulhwu r0, r30, r0
/* 800FC9F4 000F78F4  54 63 18 38 */	slwi r3, r3, 3
/* 800FC9F8 000F78F8  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800FC9FC 000F78FC  54 06 8B FE */	srwi r6, r0, 0xf
/* 800FCA00 000F7900  4B FB 54 95 */	bl __div2i
/* 800FCA04 000F7904  7F 65 FE 70 */	srawi r5, r27, 0x1f
/* 800FCA08 000F7908  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800FCA0C 000F790C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 800FCA10 000F7910  7C 7B 20 10 */	subfc r3, r27, r4
/* 800FCA14 000F7914  7C A5 01 10 */	subfe r5, r5, r0
/* 800FCA18 000F7918  7C A0 01 10 */	subfe r5, r0, r0
/* 800FCA1C 000F791C  7C A5 00 D1 */	neg. r5, r5
/* 800FCA20 000F7920  40 82 FF B4 */	bne lbl_800FC9D4
/* 800FCA24 000F7924  39 61 00 20 */	addi r11, r1, 0x20
/* 800FCA28 000F7928  4B FB 53 69 */	bl _restgpr_27
/* 800FCA2C 000F792C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800FCA30 000F7930  7C 08 03 A6 */	mtlr r0
/* 800FCA34 000F7934  38 21 00 20 */	addi r1, r1, 0x20
/* 800FCA38 000F7938  4E 80 00 20 */	blr 

.global sendSlaveAddr
sendSlaveAddr:
/* 800FCA3C 000F793C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800FCA40 000F7940  7C 08 02 A6 */	mflr r0
/* 800FCA44 000F7944  90 01 00 34 */	stw r0, 0x34(r1)
/* 800FCA48 000F7948  39 61 00 30 */	addi r11, r1, 0x30
/* 800FCA4C 000F794C  4B FB 52 E9 */	bl _savegpr_23
/* 800FCA50 000F7950  80 0D 84 E0 */	lwz r0, __i2c_ident_flag-_SDA_BASE_(r13)
/* 800FCA54 000F7954  7C 7D 1B 78 */	mr r29, r3
/* 800FCA58 000F7958  2C 00 00 00 */	cmpwi r0, 0
/* 800FCA5C 000F795C  40 82 00 1C */	bne lbl_800FCA78
/* 800FCA60 000F7960  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 800FCA64 000F7964  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 800FCA68 000F7968  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FCA6C 000F796C  60 00 80 00 */	ori r0, r0, 0x8000
/* 800FCA70 000F7970  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 800FCA74 000F7974  48 00 00 14 */	b lbl_800FCA88
lbl_800FCA78:
/* 800FCA78 000F7978  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 800FCA7C 000F797C  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 800FCA80 000F7980  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FCA84 000F7984  90 03 00 C0 */	stw r0, 0xc0(r3)
lbl_800FCA88:
/* 800FCA88 000F7988  4B FF 8B 9D */	bl __OSGetSystemTime
/* 800FCA8C 000F798C  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 800FCA90 000F7990  7C 9C 23 78 */	mr r28, r4
/* 800FCA94 000F7994  7C 7B 1B 78 */	mr r27, r3
/* 800FCA98 000F7998  3F 20 80 00 */	lis r25, 0x8000
/* 800FCA9C 000F799C  3B 45 DE 83 */	addi r26, r5, 0x431BDE83@l
/* 800FCAA0 000F79A0  3B 00 00 02 */	li r24, 2
/* 800FCAA4 000F79A4  3A E0 00 00 */	li r23, 0
lbl_800FCAA8:
/* 800FCAA8 000F79A8  4B FF 8B 7D */	bl __OSGetSystemTime
/* 800FCAAC 000F79AC  80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 800FCAB0 000F79B0  7C DC 20 10 */	subfc r6, r28, r4
/* 800FCAB4 000F79B4  7C 7B 19 10 */	subfe r3, r27, r3
/* 800FCAB8 000F79B8  38 A0 00 00 */	li r5, 0
/* 800FCABC 000F79BC  54 00 F0 BE */	srwi r0, r0, 2
/* 800FCAC0 000F79C0  54 C4 18 38 */	slwi r4, r6, 3
/* 800FCAC4 000F79C4  7C 1A 00 16 */	mulhwu r0, r26, r0
/* 800FCAC8 000F79C8  54 63 18 38 */	slwi r3, r3, 3
/* 800FCACC 000F79CC  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800FCAD0 000F79D0  54 06 8B FE */	srwi r6, r0, 0xf
/* 800FCAD4 000F79D4  4B FB 53 C1 */	bl __div2i
/* 800FCAD8 000F79D8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800FCADC 000F79DC  6E E5 80 00 */	xoris r5, r23, 0x8000
/* 800FCAE0 000F79E0  7C 78 20 10 */	subfc r3, r24, r4
/* 800FCAE4 000F79E4  7C A5 01 10 */	subfe r5, r5, r0
/* 800FCAE8 000F79E8  7C A0 01 10 */	subfe r5, r0, r0
/* 800FCAEC 000F79EC  7C A5 00 D1 */	neg. r5, r5
/* 800FCAF0 000F79F0  40 82 FF B8 */	bne lbl_800FCAA8
/* 800FCAF4 000F79F4  3F E0 CD 80 */	lis r31, 0xCD8000C0@ha
/* 800FCAF8 000F79F8  3C 60 43 1C */	lis r3, 0x431BDE83@ha
/* 800FCAFC 000F79FC  80 1F 00 C0 */	lwz r0, 0xCD8000C0@l(r31)
/* 800FCB00 000F7A00  3B 23 DE 83 */	addi r25, r3, 0x431BDE83@l
/* 800FCB04 000F7A04  3B C0 00 00 */	li r30, 0
/* 800FCB08 000F7A08  3F 80 80 00 */	lis r28, 0x8000
/* 800FCB0C 000F7A0C  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800FCB10 000F7A10  3B 60 00 02 */	li r27, 2
/* 800FCB14 000F7A14  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 800FCB18 000F7A18  3B 40 00 00 */	li r26, 0
lbl_800FCB1C:
/* 800FCB1C 000F7A1C  57 A0 06 31 */	rlwinm. r0, r29, 0, 0x18, 0x18
/* 800FCB20 000F7A20  41 82 00 34 */	beq lbl_800FCB54
/* 800FCB24 000F7A24  80 0D 84 E0 */	lwz r0, __i2c_ident_flag-_SDA_BASE_(r13)
/* 800FCB28 000F7A28  2C 00 00 00 */	cmpwi r0, 0
/* 800FCB2C 000F7A2C  40 82 00 14 */	bne lbl_800FCB40
/* 800FCB30 000F7A30  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 800FCB34 000F7A34  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FCB38 000F7A38  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 800FCB3C 000F7A3C  48 00 00 44 */	b lbl_800FCB80
lbl_800FCB40:
/* 800FCB40 000F7A40  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 800FCB44 000F7A44  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FCB48 000F7A48  60 00 80 00 */	ori r0, r0, 0x8000
/* 800FCB4C 000F7A4C  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 800FCB50 000F7A50  48 00 00 30 */	b lbl_800FCB80
lbl_800FCB54:
/* 800FCB54 000F7A54  80 0D 84 E0 */	lwz r0, __i2c_ident_flag-_SDA_BASE_(r13)
/* 800FCB58 000F7A58  2C 00 00 00 */	cmpwi r0, 0
/* 800FCB5C 000F7A5C  40 82 00 18 */	bne lbl_800FCB74
/* 800FCB60 000F7A60  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 800FCB64 000F7A64  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FCB68 000F7A68  60 00 80 00 */	ori r0, r0, 0x8000
/* 800FCB6C 000F7A6C  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 800FCB70 000F7A70  48 00 00 10 */	b lbl_800FCB80
lbl_800FCB74:
/* 800FCB74 000F7A74  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 800FCB78 000F7A78  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FCB7C 000F7A7C  90 1F 00 C0 */	stw r0, 0xc0(r31)
lbl_800FCB80:
/* 800FCB80 000F7A80  4B FF 8A A5 */	bl __OSGetSystemTime
/* 800FCB84 000F7A84  7C 98 23 78 */	mr r24, r4
/* 800FCB88 000F7A88  7C 77 1B 78 */	mr r23, r3
lbl_800FCB8C:
/* 800FCB8C 000F7A8C  4B FF 8A 99 */	bl __OSGetSystemTime
/* 800FCB90 000F7A90  80 1C 00 F8 */	lwz r0, 0xf8(r28)
/* 800FCB94 000F7A94  7C D8 20 10 */	subfc r6, r24, r4
/* 800FCB98 000F7A98  7C 77 19 10 */	subfe r3, r23, r3
/* 800FCB9C 000F7A9C  38 A0 00 00 */	li r5, 0
/* 800FCBA0 000F7AA0  54 00 F0 BE */	srwi r0, r0, 2
/* 800FCBA4 000F7AA4  54 C4 18 38 */	slwi r4, r6, 3
/* 800FCBA8 000F7AA8  7C 19 00 16 */	mulhwu r0, r25, r0
/* 800FCBAC 000F7AAC  54 63 18 38 */	slwi r3, r3, 3
/* 800FCBB0 000F7AB0  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800FCBB4 000F7AB4  54 06 8B FE */	srwi r6, r0, 0xf
/* 800FCBB8 000F7AB8  4B FB 52 DD */	bl __div2i
/* 800FCBBC 000F7ABC  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800FCBC0 000F7AC0  6F 45 80 00 */	xoris r5, r26, 0x8000
/* 800FCBC4 000F7AC4  7C 7B 20 10 */	subfc r3, r27, r4
/* 800FCBC8 000F7AC8  7C A5 01 10 */	subfe r5, r5, r0
/* 800FCBCC 000F7ACC  7C A0 01 10 */	subfe r5, r0, r0
/* 800FCBD0 000F7AD0  7C A5 00 D1 */	neg. r5, r5
/* 800FCBD4 000F7AD4  40 82 FF B8 */	bne lbl_800FCB8C
/* 800FCBD8 000F7AD8  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 800FCBDC 000F7ADC  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800FCBE0 000F7AE0  60 00 40 00 */	ori r0, r0, 0x4000
/* 800FCBE4 000F7AE4  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 800FCBE8 000F7AE8  4B FF 8A 3D */	bl __OSGetSystemTime
/* 800FCBEC 000F7AEC  7C 97 23 78 */	mr r23, r4
/* 800FCBF0 000F7AF0  7C 78 1B 78 */	mr r24, r3
lbl_800FCBF4:
/* 800FCBF4 000F7AF4  4B FF 8A 31 */	bl __OSGetSystemTime
/* 800FCBF8 000F7AF8  80 1C 00 F8 */	lwz r0, 0xf8(r28)
/* 800FCBFC 000F7AFC  7C D7 20 10 */	subfc r6, r23, r4
/* 800FCC00 000F7B00  7C 78 19 10 */	subfe r3, r24, r3
/* 800FCC04 000F7B04  38 A0 00 00 */	li r5, 0
/* 800FCC08 000F7B08  54 00 F0 BE */	srwi r0, r0, 2
/* 800FCC0C 000F7B0C  54 C4 18 38 */	slwi r4, r6, 3
/* 800FCC10 000F7B10  7C 19 00 16 */	mulhwu r0, r25, r0
/* 800FCC14 000F7B14  54 63 18 38 */	slwi r3, r3, 3
/* 800FCC18 000F7B18  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800FCC1C 000F7B1C  54 06 8B FE */	srwi r6, r0, 0xf
/* 800FCC20 000F7B20  4B FB 52 75 */	bl __div2i
/* 800FCC24 000F7B24  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800FCC28 000F7B28  6F 45 80 00 */	xoris r5, r26, 0x8000
/* 800FCC2C 000F7B2C  7C 7B 20 10 */	subfc r3, r27, r4
/* 800FCC30 000F7B30  7C A5 01 10 */	subfe r5, r5, r0
/* 800FCC34 000F7B34  7C A0 01 10 */	subfe r5, r0, r0
/* 800FCC38 000F7B38  7C A5 00 D1 */	neg. r5, r5
/* 800FCC3C 000F7B3C  40 82 FF B8 */	bne lbl_800FCBF4
/* 800FCC40 000F7B40  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 800FCC44 000F7B44  3B DE 00 01 */	addi r30, r30, 1
/* 800FCC48 000F7B48  2C 1E 00 08 */	cmpwi r30, 8
/* 800FCC4C 000F7B4C  57 BD 0E 3C */	rlwinm r29, r29, 1, 0x18, 0x1e
/* 800FCC50 000F7B50  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800FCC54 000F7B54  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 800FCC58 000F7B58  41 80 FE C4 */	blt lbl_800FCB1C
/* 800FCC5C 000F7B5C  3C 60 CD 80 */	lis r3, 0xCD8000C4@ha
/* 800FCC60 000F7B60  80 03 00 C4 */	lwz r0, 0xCD8000C4@l(r3)
/* 800FCC64 000F7B64  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FCC68 000F7B68  60 00 40 00 */	ori r0, r0, 0x4000
/* 800FCC6C 000F7B6C  90 03 00 C4 */	stw r0, 0xc4(r3)
/* 800FCC70 000F7B70  4B FF 89 B5 */	bl __OSGetSystemTime
/* 800FCC74 000F7B74  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 800FCC78 000F7B78  7C 9F 23 78 */	mr r31, r4
/* 800FCC7C 000F7B7C  7C 7E 1B 78 */	mr r30, r3
/* 800FCC80 000F7B80  3F 80 80 00 */	lis r28, 0x8000
/* 800FCC84 000F7B84  3B A5 DE 83 */	addi r29, r5, 0x431BDE83@l
/* 800FCC88 000F7B88  3B 60 00 02 */	li r27, 2
/* 800FCC8C 000F7B8C  3B 40 00 00 */	li r26, 0
lbl_800FCC90:
/* 800FCC90 000F7B90  4B FF 89 95 */	bl __OSGetSystemTime
/* 800FCC94 000F7B94  80 1C 00 F8 */	lwz r0, 0xf8(r28)
/* 800FCC98 000F7B98  7C DF 20 10 */	subfc r6, r31, r4
/* 800FCC9C 000F7B9C  7C 7E 19 10 */	subfe r3, r30, r3
/* 800FCCA0 000F7BA0  38 A0 00 00 */	li r5, 0
/* 800FCCA4 000F7BA4  54 00 F0 BE */	srwi r0, r0, 2
/* 800FCCA8 000F7BA8  54 C4 18 38 */	slwi r4, r6, 3
/* 800FCCAC 000F7BAC  7C 1D 00 16 */	mulhwu r0, r29, r0
/* 800FCCB0 000F7BB0  54 63 18 38 */	slwi r3, r3, 3
/* 800FCCB4 000F7BB4  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800FCCB8 000F7BB8  54 06 8B FE */	srwi r6, r0, 0xf
/* 800FCCBC 000F7BBC  4B FB 51 D9 */	bl __div2i
/* 800FCCC0 000F7BC0  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800FCCC4 000F7BC4  6F 45 80 00 */	xoris r5, r26, 0x8000
/* 800FCCC8 000F7BC8  7C 7B 20 10 */	subfc r3, r27, r4
/* 800FCCCC 000F7BCC  7C A5 01 10 */	subfe r5, r5, r0
/* 800FCCD0 000F7BD0  7C A0 01 10 */	subfe r5, r0, r0
/* 800FCCD4 000F7BD4  7C A5 00 D1 */	neg. r5, r5
/* 800FCCD8 000F7BD8  40 82 FF B8 */	bne lbl_800FCC90
/* 800FCCDC 000F7BDC  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 800FCCE0 000F7BE0  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 800FCCE4 000F7BE4  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800FCCE8 000F7BE8  60 00 40 00 */	ori r0, r0, 0x4000
/* 800FCCEC 000F7BEC  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 800FCCF0 000F7BF0  4B FF 89 35 */	bl __OSGetSystemTime
/* 800FCCF4 000F7BF4  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 800FCCF8 000F7BF8  7C 9A 23 78 */	mr r26, r4
/* 800FCCFC 000F7BFC  7C 7B 1B 78 */	mr r27, r3
/* 800FCD00 000F7C00  3F E0 80 00 */	lis r31, 0x8000
/* 800FCD04 000F7C04  3B 85 DE 83 */	addi r28, r5, 0x431BDE83@l
/* 800FCD08 000F7C08  3B C0 00 02 */	li r30, 2
/* 800FCD0C 000F7C0C  3B A0 00 00 */	li r29, 0
lbl_800FCD10:
/* 800FCD10 000F7C10  4B FF 89 15 */	bl __OSGetSystemTime
/* 800FCD14 000F7C14  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 800FCD18 000F7C18  7C DA 20 10 */	subfc r6, r26, r4
/* 800FCD1C 000F7C1C  7C 7B 19 10 */	subfe r3, r27, r3
/* 800FCD20 000F7C20  38 A0 00 00 */	li r5, 0
/* 800FCD24 000F7C24  54 00 F0 BE */	srwi r0, r0, 2
/* 800FCD28 000F7C28  54 C4 18 38 */	slwi r4, r6, 3
/* 800FCD2C 000F7C2C  7C 1C 00 16 */	mulhwu r0, r28, r0
/* 800FCD30 000F7C30  54 63 18 38 */	slwi r3, r3, 3
/* 800FCD34 000F7C34  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800FCD38 000F7C38  54 06 8B FE */	srwi r6, r0, 0xf
/* 800FCD3C 000F7C3C  4B FB 51 59 */	bl __div2i
/* 800FCD40 000F7C40  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800FCD44 000F7C44  6F A5 80 00 */	xoris r5, r29, 0x8000
/* 800FCD48 000F7C48  7C 7E 20 10 */	subfc r3, r30, r4
/* 800FCD4C 000F7C4C  7C A5 01 10 */	subfe r5, r5, r0
/* 800FCD50 000F7C50  7C A0 01 10 */	subfe r5, r0, r0
/* 800FCD54 000F7C54  7C A5 00 D1 */	neg. r5, r5
/* 800FCD58 000F7C58  40 82 FF B8 */	bne lbl_800FCD10
/* 800FCD5C 000F7C5C  80 0D 84 E0 */	lwz r0, __i2c_ident_flag-_SDA_BASE_(r13)
/* 800FCD60 000F7C60  28 00 00 01 */	cmplwi r0, 1
/* 800FCD64 000F7C64  40 82 00 1C */	bne lbl_800FCD80
/* 800FCD68 000F7C68  3C 60 CD 80 */	lis r3, 0xCD8000C8@ha
/* 800FCD6C 000F7C6C  80 03 00 C8 */	lwz r0, 0xCD8000C8@l(r3)
/* 800FCD70 000F7C70  54 00 8F FF */	rlwinm. r0, r0, 0x11, 0x1f, 0x1f
/* 800FCD74 000F7C74  41 82 00 0C */	beq lbl_800FCD80
/* 800FCD78 000F7C78  38 60 00 00 */	li r3, 0
/* 800FCD7C 000F7C7C  48 00 00 5C */	b lbl_800FCDD8
lbl_800FCD80:
/* 800FCD80 000F7C80  80 0D 84 E0 */	lwz r0, __i2c_ident_flag-_SDA_BASE_(r13)
/* 800FCD84 000F7C84  2C 00 00 00 */	cmpwi r0, 0
/* 800FCD88 000F7C88  40 82 00 1C */	bne lbl_800FCDA4
/* 800FCD8C 000F7C8C  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 800FCD90 000F7C90  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 800FCD94 000F7C94  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FCD98 000F7C98  60 00 80 00 */	ori r0, r0, 0x8000
/* 800FCD9C 000F7C9C  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 800FCDA0 000F7CA0  48 00 00 14 */	b lbl_800FCDB4
lbl_800FCDA4:
/* 800FCDA4 000F7CA4  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 800FCDA8 000F7CA8  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 800FCDAC 000F7CAC  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FCDB0 000F7CB0  90 03 00 C0 */	stw r0, 0xc0(r3)
lbl_800FCDB4:
/* 800FCDB4 000F7CB4  3C 80 CD 80 */	lis r4, 0xCD8000C4@ha
/* 800FCDB8 000F7CB8  38 60 00 01 */	li r3, 1
/* 800FCDBC 000F7CBC  80 04 00 C4 */	lwz r0, 0xCD8000C4@l(r4)
/* 800FCDC0 000F7CC0  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FCDC4 000F7CC4  60 00 C0 00 */	ori r0, r0, 0xc000
/* 800FCDC8 000F7CC8  90 04 00 C4 */	stw r0, 0xc4(r4)
/* 800FCDCC 000F7CCC  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 800FCDD0 000F7CD0  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800FCDD4 000F7CD4  90 04 00 C0 */	stw r0, 0xc0(r4)
lbl_800FCDD8:
/* 800FCDD8 000F7CD8  39 61 00 30 */	addi r11, r1, 0x30
/* 800FCDDC 000F7CDC  4B FB 4F A5 */	bl _restgpr_23
/* 800FCDE0 000F7CE0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800FCDE4 000F7CE4  7C 08 03 A6 */	mtlr r0
/* 800FCDE8 000F7CE8  38 21 00 30 */	addi r1, r1, 0x30
/* 800FCDEC 000F7CEC  4E 80 00 20 */	blr 

.global __VISendI2CData
__VISendI2CData:
/* 800FCDF0 000F7CF0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800FCDF4 000F7CF4  7C 08 02 A6 */	mflr r0
/* 800FCDF8 000F7CF8  90 01 00 44 */	stw r0, 0x44(r1)
/* 800FCDFC 000F7CFC  39 61 00 40 */	addi r11, r1, 0x40
/* 800FCE00 000F7D00  4B FB 4F 29 */	bl _savegpr_20
/* 800FCE04 000F7D04  80 0D 9D 60 */	lwz r0, __i2c_ident_first-_SDA_BASE_(r13)
/* 800FCE08 000F7D08  7C 74 1B 78 */	mr r20, r3
/* 800FCE0C 000F7D0C  7C 9D 23 78 */	mr r29, r4
/* 800FCE10 000F7D10  7C BE 2B 78 */	mr r30, r5
/* 800FCE14 000F7D14  2C 00 00 00 */	cmpwi r0, 0
/* 800FCE18 000F7D18  40 82 00 10 */	bne lbl_800FCE28
/* 800FCE1C 000F7D1C  38 00 00 01 */	li r0, 1
/* 800FCE20 000F7D20  90 0D 84 E0 */	stw r0, __i2c_ident_flag-_SDA_BASE_(r13)
/* 800FCE24 000F7D24  90 0D 9D 60 */	stw r0, __i2c_ident_first-_SDA_BASE_(r13)
lbl_800FCE28:
/* 800FCE28 000F7D28  4B FF 4A 99 */	bl OSDisableInterrupts
/* 800FCE2C 000F7D2C  3C 80 CD 80 */	lis r4, 0xCD8000C4@ha
/* 800FCE30 000F7D30  7C 7F 1B 78 */	mr r31, r3
/* 800FCE34 000F7D34  80 04 00 C4 */	lwz r0, 0xCD8000C4@l(r4)
/* 800FCE38 000F7D38  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FCE3C 000F7D3C  60 00 C0 00 */	ori r0, r0, 0xc000
/* 800FCE40 000F7D40  90 04 00 C4 */	stw r0, 0xc4(r4)
/* 800FCE44 000F7D44  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 800FCE48 000F7D48  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800FCE4C 000F7D4C  60 00 40 00 */	ori r0, r0, 0x4000
/* 800FCE50 000F7D50  90 04 00 C0 */	stw r0, 0xc0(r4)
/* 800FCE54 000F7D54  80 0D 84 E0 */	lwz r0, __i2c_ident_flag-_SDA_BASE_(r13)
/* 800FCE58 000F7D58  2C 00 00 00 */	cmpwi r0, 0
/* 800FCE5C 000F7D5C  40 82 00 14 */	bne lbl_800FCE70
/* 800FCE60 000F7D60  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 800FCE64 000F7D64  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FCE68 000F7D68  90 04 00 C0 */	stw r0, 0xc0(r4)
/* 800FCE6C 000F7D6C  48 00 00 14 */	b lbl_800FCE80
lbl_800FCE70:
/* 800FCE70 000F7D70  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 800FCE74 000F7D74  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FCE78 000F7D78  60 00 80 00 */	ori r0, r0, 0x8000
/* 800FCE7C 000F7D7C  90 04 00 C0 */	stw r0, 0xc0(r4)
lbl_800FCE80:
/* 800FCE80 000F7D80  4B FF 87 A5 */	bl __OSGetSystemTime
/* 800FCE84 000F7D84  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 800FCE88 000F7D88  7C 97 23 78 */	mr r23, r4
/* 800FCE8C 000F7D8C  7C 76 1B 78 */	mr r22, r3
/* 800FCE90 000F7D90  3F 20 80 00 */	lis r25, 0x8000
/* 800FCE94 000F7D94  3B 45 DE 83 */	addi r26, r5, 0x431BDE83@l
/* 800FCE98 000F7D98  3B 00 00 02 */	li r24, 2
/* 800FCE9C 000F7D9C  3A A0 00 00 */	li r21, 0
lbl_800FCEA0:
/* 800FCEA0 000F7DA0  4B FF 87 85 */	bl __OSGetSystemTime
/* 800FCEA4 000F7DA4  80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 800FCEA8 000F7DA8  7C D7 20 10 */	subfc r6, r23, r4
/* 800FCEAC 000F7DAC  7C 76 19 10 */	subfe r3, r22, r3
/* 800FCEB0 000F7DB0  38 A0 00 00 */	li r5, 0
/* 800FCEB4 000F7DB4  54 00 F0 BE */	srwi r0, r0, 2
/* 800FCEB8 000F7DB8  54 C4 18 38 */	slwi r4, r6, 3
/* 800FCEBC 000F7DBC  7C 1A 00 16 */	mulhwu r0, r26, r0
/* 800FCEC0 000F7DC0  54 63 18 38 */	slwi r3, r3, 3
/* 800FCEC4 000F7DC4  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800FCEC8 000F7DC8  54 06 8B FE */	srwi r6, r0, 0xf
/* 800FCECC 000F7DCC  4B FB 4F C9 */	bl __div2i
/* 800FCED0 000F7DD0  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800FCED4 000F7DD4  6E A5 80 00 */	xoris r5, r21, 0x8000
/* 800FCED8 000F7DD8  7C 78 20 10 */	subfc r3, r24, r4
/* 800FCEDC 000F7DDC  7C A5 01 10 */	subfe r5, r5, r0
/* 800FCEE0 000F7DE0  7C A0 01 10 */	subfe r5, r0, r0
/* 800FCEE4 000F7DE4  7C A5 00 D1 */	neg. r5, r5
/* 800FCEE8 000F7DE8  40 82 FF B8 */	bne lbl_800FCEA0
/* 800FCEEC 000F7DEC  4B FF 87 39 */	bl __OSGetSystemTime
/* 800FCEF0 000F7DF0  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 800FCEF4 000F7DF4  7C 97 23 78 */	mr r23, r4
/* 800FCEF8 000F7DF8  7C 76 1B 78 */	mr r22, r3
/* 800FCEFC 000F7DFC  3F 20 80 00 */	lis r25, 0x8000
/* 800FCF00 000F7E00  3B 45 DE 83 */	addi r26, r5, 0x431BDE83@l
/* 800FCF04 000F7E04  3B 00 00 02 */	li r24, 2
/* 800FCF08 000F7E08  3A A0 00 00 */	li r21, 0
lbl_800FCF0C:
/* 800FCF0C 000F7E0C  4B FF 87 19 */	bl __OSGetSystemTime
/* 800FCF10 000F7E10  80 19 00 F8 */	lwz r0, 0xf8(r25)
/* 800FCF14 000F7E14  7C D7 20 10 */	subfc r6, r23, r4
/* 800FCF18 000F7E18  7C 76 19 10 */	subfe r3, r22, r3
/* 800FCF1C 000F7E1C  38 A0 00 00 */	li r5, 0
/* 800FCF20 000F7E20  54 00 F0 BE */	srwi r0, r0, 2
/* 800FCF24 000F7E24  54 C4 18 38 */	slwi r4, r6, 3
/* 800FCF28 000F7E28  7C 1A 00 16 */	mulhwu r0, r26, r0
/* 800FCF2C 000F7E2C  54 63 18 38 */	slwi r3, r3, 3
/* 800FCF30 000F7E30  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800FCF34 000F7E34  54 06 8B FE */	srwi r6, r0, 0xf
/* 800FCF38 000F7E38  4B FB 4F 5D */	bl __div2i
/* 800FCF3C 000F7E3C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800FCF40 000F7E40  6E A5 80 00 */	xoris r5, r21, 0x8000
/* 800FCF44 000F7E44  7C 78 20 10 */	subfc r3, r24, r4
/* 800FCF48 000F7E48  7C A5 01 10 */	subfe r5, r5, r0
/* 800FCF4C 000F7E4C  7C A0 01 10 */	subfe r5, r0, r0
/* 800FCF50 000F7E50  7C A5 00 D1 */	neg. r5, r5
/* 800FCF54 000F7E54  40 82 FF B8 */	bne lbl_800FCF0C
/* 800FCF58 000F7E58  7E 83 A3 78 */	mr r3, r20
/* 800FCF5C 000F7E5C  4B FF FA E1 */	bl sendSlaveAddr
/* 800FCF60 000F7E60  2C 03 00 00 */	cmpwi r3, 0
/* 800FCF64 000F7E64  40 82 00 14 */	bne lbl_800FCF78
/* 800FCF68 000F7E68  7F E3 FB 78 */	mr r3, r31
/* 800FCF6C 000F7E6C  4B FF 49 7D */	bl OSRestoreInterrupts
/* 800FCF70 000F7E70  38 60 00 00 */	li r3, 0
/* 800FCF74 000F7E74  48 00 04 34 */	b lbl_800FD3A8
lbl_800FCF78:
/* 800FCF78 000F7E78  3E C0 CD 80 */	lis r22, 0xCD8000C4@ha
/* 800FCF7C 000F7E7C  3C 60 43 1C */	lis r3, 0x431BDE83@ha
/* 800FCF80 000F7E80  80 16 00 C4 */	lwz r0, 0xCD8000C4@l(r22)
/* 800FCF84 000F7E84  3B 23 DE 83 */	addi r25, r3, 0x431BDE83@l
/* 800FCF88 000F7E88  3F 40 80 00 */	lis r26, 0x8000
/* 800FCF8C 000F7E8C  3B 60 00 02 */	li r27, 2
/* 800FCF90 000F7E90  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FCF94 000F7E94  3B 80 00 00 */	li r28, 0
/* 800FCF98 000F7E98  60 00 C0 00 */	ori r0, r0, 0xc000
/* 800FCF9C 000F7E9C  90 16 00 C4 */	stw r0, 0xc4(r22)
/* 800FCFA0 000F7EA0  48 00 02 94 */	b lbl_800FD234
lbl_800FCFA4:
/* 800FCFA4 000F7EA4  8A 9D 00 00 */	lbz r20, 0(r29)
/* 800FCFA8 000F7EA8  3A A0 00 00 */	li r21, 0
/* 800FCFAC 000F7EAC  3B BD 00 01 */	addi r29, r29, 1
lbl_800FCFB0:
/* 800FCFB0 000F7EB0  56 80 06 31 */	rlwinm. r0, r20, 0, 0x18, 0x18
/* 800FCFB4 000F7EB4  41 82 00 34 */	beq lbl_800FCFE8
/* 800FCFB8 000F7EB8  80 0D 84 E0 */	lwz r0, __i2c_ident_flag-_SDA_BASE_(r13)
/* 800FCFBC 000F7EBC  2C 00 00 00 */	cmpwi r0, 0
/* 800FCFC0 000F7EC0  40 82 00 14 */	bne lbl_800FCFD4
/* 800FCFC4 000F7EC4  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 800FCFC8 000F7EC8  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FCFCC 000F7ECC  90 16 00 C0 */	stw r0, 0xc0(r22)
/* 800FCFD0 000F7ED0  48 00 00 44 */	b lbl_800FD014
lbl_800FCFD4:
/* 800FCFD4 000F7ED4  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 800FCFD8 000F7ED8  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FCFDC 000F7EDC  60 00 80 00 */	ori r0, r0, 0x8000
/* 800FCFE0 000F7EE0  90 16 00 C0 */	stw r0, 0xc0(r22)
/* 800FCFE4 000F7EE4  48 00 00 30 */	b lbl_800FD014
lbl_800FCFE8:
/* 800FCFE8 000F7EE8  80 0D 84 E0 */	lwz r0, __i2c_ident_flag-_SDA_BASE_(r13)
/* 800FCFEC 000F7EEC  2C 00 00 00 */	cmpwi r0, 0
/* 800FCFF0 000F7EF0  40 82 00 18 */	bne lbl_800FD008
/* 800FCFF4 000F7EF4  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 800FCFF8 000F7EF8  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FCFFC 000F7EFC  60 00 80 00 */	ori r0, r0, 0x8000
/* 800FD000 000F7F00  90 16 00 C0 */	stw r0, 0xc0(r22)
/* 800FD004 000F7F04  48 00 00 10 */	b lbl_800FD014
lbl_800FD008:
/* 800FD008 000F7F08  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 800FD00C 000F7F0C  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FD010 000F7F10  90 16 00 C0 */	stw r0, 0xc0(r22)
lbl_800FD014:
/* 800FD014 000F7F14  4B FF 86 11 */	bl __OSGetSystemTime
/* 800FD018 000F7F18  7C 98 23 78 */	mr r24, r4
/* 800FD01C 000F7F1C  7C 77 1B 78 */	mr r23, r3
lbl_800FD020:
/* 800FD020 000F7F20  4B FF 86 05 */	bl __OSGetSystemTime
/* 800FD024 000F7F24  80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 800FD028 000F7F28  7C D8 20 10 */	subfc r6, r24, r4
/* 800FD02C 000F7F2C  7C 77 19 10 */	subfe r3, r23, r3
/* 800FD030 000F7F30  38 A0 00 00 */	li r5, 0
/* 800FD034 000F7F34  54 00 F0 BE */	srwi r0, r0, 2
/* 800FD038 000F7F38  54 C4 18 38 */	slwi r4, r6, 3
/* 800FD03C 000F7F3C  7C 19 00 16 */	mulhwu r0, r25, r0
/* 800FD040 000F7F40  54 63 18 38 */	slwi r3, r3, 3
/* 800FD044 000F7F44  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800FD048 000F7F48  54 06 8B FE */	srwi r6, r0, 0xf
/* 800FD04C 000F7F4C  4B FB 4E 49 */	bl __div2i
/* 800FD050 000F7F50  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800FD054 000F7F54  6F 85 80 00 */	xoris r5, r28, 0x8000
/* 800FD058 000F7F58  7C 7B 20 10 */	subfc r3, r27, r4
/* 800FD05C 000F7F5C  7C A5 01 10 */	subfe r5, r5, r0
/* 800FD060 000F7F60  7C A0 01 10 */	subfe r5, r0, r0
/* 800FD064 000F7F64  7C A5 00 D1 */	neg. r5, r5
/* 800FD068 000F7F68  40 82 FF B8 */	bne lbl_800FD020
/* 800FD06C 000F7F6C  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 800FD070 000F7F70  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800FD074 000F7F74  60 00 40 00 */	ori r0, r0, 0x4000
/* 800FD078 000F7F78  90 16 00 C0 */	stw r0, 0xc0(r22)
/* 800FD07C 000F7F7C  4B FF 85 A9 */	bl __OSGetSystemTime
/* 800FD080 000F7F80  7C 98 23 78 */	mr r24, r4
/* 800FD084 000F7F84  7C 77 1B 78 */	mr r23, r3
lbl_800FD088:
/* 800FD088 000F7F88  4B FF 85 9D */	bl __OSGetSystemTime
/* 800FD08C 000F7F8C  80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 800FD090 000F7F90  7C D8 20 10 */	subfc r6, r24, r4
/* 800FD094 000F7F94  7C 77 19 10 */	subfe r3, r23, r3
/* 800FD098 000F7F98  38 A0 00 00 */	li r5, 0
/* 800FD09C 000F7F9C  54 00 F0 BE */	srwi r0, r0, 2
/* 800FD0A0 000F7FA0  54 C4 18 38 */	slwi r4, r6, 3
/* 800FD0A4 000F7FA4  7C 19 00 16 */	mulhwu r0, r25, r0
/* 800FD0A8 000F7FA8  54 63 18 38 */	slwi r3, r3, 3
/* 800FD0AC 000F7FAC  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800FD0B0 000F7FB0  54 06 8B FE */	srwi r6, r0, 0xf
/* 800FD0B4 000F7FB4  4B FB 4D E1 */	bl __div2i
/* 800FD0B8 000F7FB8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800FD0BC 000F7FBC  6F 85 80 00 */	xoris r5, r28, 0x8000
/* 800FD0C0 000F7FC0  7C 7B 20 10 */	subfc r3, r27, r4
/* 800FD0C4 000F7FC4  7C A5 01 10 */	subfe r5, r5, r0
/* 800FD0C8 000F7FC8  7C A0 01 10 */	subfe r5, r0, r0
/* 800FD0CC 000F7FCC  7C A5 00 D1 */	neg. r5, r5
/* 800FD0D0 000F7FD0  40 82 FF B8 */	bne lbl_800FD088
/* 800FD0D4 000F7FD4  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 800FD0D8 000F7FD8  3A B5 00 01 */	addi r21, r21, 1
/* 800FD0DC 000F7FDC  2C 15 00 08 */	cmpwi r21, 8
/* 800FD0E0 000F7FE0  56 94 0E 3C */	rlwinm r20, r20, 1, 0x18, 0x1e
/* 800FD0E4 000F7FE4  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800FD0E8 000F7FE8  90 16 00 C0 */	stw r0, 0xc0(r22)
/* 800FD0EC 000F7FEC  41 80 FE C4 */	blt lbl_800FCFB0
/* 800FD0F0 000F7FF0  80 16 00 C4 */	lwz r0, 0xc4(r22)
/* 800FD0F4 000F7FF4  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FD0F8 000F7FF8  60 00 40 00 */	ori r0, r0, 0x4000
/* 800FD0FC 000F7FFC  90 16 00 C4 */	stw r0, 0xc4(r22)
/* 800FD100 000F8000  4B FF 85 25 */	bl __OSGetSystemTime
/* 800FD104 000F8004  7C 98 23 78 */	mr r24, r4
/* 800FD108 000F8008  7C 77 1B 78 */	mr r23, r3
lbl_800FD10C:
/* 800FD10C 000F800C  4B FF 85 19 */	bl __OSGetSystemTime
/* 800FD110 000F8010  80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 800FD114 000F8014  7C D8 20 10 */	subfc r6, r24, r4
/* 800FD118 000F8018  7C 77 19 10 */	subfe r3, r23, r3
/* 800FD11C 000F801C  38 A0 00 00 */	li r5, 0
/* 800FD120 000F8020  54 00 F0 BE */	srwi r0, r0, 2
/* 800FD124 000F8024  54 C4 18 38 */	slwi r4, r6, 3
/* 800FD128 000F8028  7C 19 00 16 */	mulhwu r0, r25, r0
/* 800FD12C 000F802C  54 63 18 38 */	slwi r3, r3, 3
/* 800FD130 000F8030  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800FD134 000F8034  54 06 8B FE */	srwi r6, r0, 0xf
/* 800FD138 000F8038  4B FB 4D 5D */	bl __div2i
/* 800FD13C 000F803C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800FD140 000F8040  6F 85 80 00 */	xoris r5, r28, 0x8000
/* 800FD144 000F8044  7C 7B 20 10 */	subfc r3, r27, r4
/* 800FD148 000F8048  7C A5 01 10 */	subfe r5, r5, r0
/* 800FD14C 000F804C  7C A0 01 10 */	subfe r5, r0, r0
/* 800FD150 000F8050  7C A5 00 D1 */	neg. r5, r5
/* 800FD154 000F8054  40 82 FF B8 */	bne lbl_800FD10C
/* 800FD158 000F8058  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 800FD15C 000F805C  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800FD160 000F8060  60 00 40 00 */	ori r0, r0, 0x4000
/* 800FD164 000F8064  90 16 00 C0 */	stw r0, 0xc0(r22)
/* 800FD168 000F8068  4B FF 84 BD */	bl __OSGetSystemTime
/* 800FD16C 000F806C  7C 97 23 78 */	mr r23, r4
/* 800FD170 000F8070  7C 78 1B 78 */	mr r24, r3
lbl_800FD174:
/* 800FD174 000F8074  4B FF 84 B1 */	bl __OSGetSystemTime
/* 800FD178 000F8078  80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 800FD17C 000F807C  7C D7 20 10 */	subfc r6, r23, r4
/* 800FD180 000F8080  7C 78 19 10 */	subfe r3, r24, r3
/* 800FD184 000F8084  38 A0 00 00 */	li r5, 0
/* 800FD188 000F8088  54 00 F0 BE */	srwi r0, r0, 2
/* 800FD18C 000F808C  54 C4 18 38 */	slwi r4, r6, 3
/* 800FD190 000F8090  7C 19 00 16 */	mulhwu r0, r25, r0
/* 800FD194 000F8094  54 63 18 38 */	slwi r3, r3, 3
/* 800FD198 000F8098  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800FD19C 000F809C  54 06 8B FE */	srwi r6, r0, 0xf
/* 800FD1A0 000F80A0  4B FB 4C F5 */	bl __div2i
/* 800FD1A4 000F80A4  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800FD1A8 000F80A8  6F 85 80 00 */	xoris r5, r28, 0x8000
/* 800FD1AC 000F80AC  7C 7B 20 10 */	subfc r3, r27, r4
/* 800FD1B0 000F80B0  7C A5 01 10 */	subfe r5, r5, r0
/* 800FD1B4 000F80B4  7C A0 01 10 */	subfe r5, r0, r0
/* 800FD1B8 000F80B8  7C A5 00 D1 */	neg. r5, r5
/* 800FD1BC 000F80BC  40 82 FF B8 */	bne lbl_800FD174
/* 800FD1C0 000F80C0  80 0D 84 E0 */	lwz r0, __i2c_ident_flag-_SDA_BASE_(r13)
/* 800FD1C4 000F80C4  28 00 00 01 */	cmplwi r0, 1
/* 800FD1C8 000F80C8  40 82 00 20 */	bne lbl_800FD1E8
/* 800FD1CC 000F80CC  80 16 00 C8 */	lwz r0, 0xc8(r22)
/* 800FD1D0 000F80D0  54 00 8F FF */	rlwinm. r0, r0, 0x11, 0x1f, 0x1f
/* 800FD1D4 000F80D4  41 82 00 14 */	beq lbl_800FD1E8
/* 800FD1D8 000F80D8  7F E3 FB 78 */	mr r3, r31
/* 800FD1DC 000F80DC  4B FF 47 0D */	bl OSRestoreInterrupts
/* 800FD1E0 000F80E0  38 60 00 00 */	li r3, 0
/* 800FD1E4 000F80E4  48 00 01 C4 */	b lbl_800FD3A8
lbl_800FD1E8:
/* 800FD1E8 000F80E8  80 0D 84 E0 */	lwz r0, __i2c_ident_flag-_SDA_BASE_(r13)
/* 800FD1EC 000F80EC  2C 00 00 00 */	cmpwi r0, 0
/* 800FD1F0 000F80F0  40 82 00 18 */	bne lbl_800FD208
/* 800FD1F4 000F80F4  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 800FD1F8 000F80F8  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FD1FC 000F80FC  60 00 80 00 */	ori r0, r0, 0x8000
/* 800FD200 000F8100  90 16 00 C0 */	stw r0, 0xc0(r22)
/* 800FD204 000F8104  48 00 00 10 */	b lbl_800FD214
lbl_800FD208:
/* 800FD208 000F8108  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 800FD20C 000F810C  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FD210 000F8110  90 16 00 C0 */	stw r0, 0xc0(r22)
lbl_800FD214:
/* 800FD214 000F8114  80 16 00 C4 */	lwz r0, 0xc4(r22)
/* 800FD218 000F8118  3B DE FF FF */	addi r30, r30, -1
/* 800FD21C 000F811C  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FD220 000F8120  60 00 C0 00 */	ori r0, r0, 0xc000
/* 800FD224 000F8124  90 16 00 C4 */	stw r0, 0xc4(r22)
/* 800FD228 000F8128  80 16 00 C0 */	lwz r0, 0xc0(r22)
/* 800FD22C 000F812C  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800FD230 000F8130  90 16 00 C0 */	stw r0, 0xc0(r22)
lbl_800FD234:
/* 800FD234 000F8134  2C 1E 00 00 */	cmpwi r30, 0
/* 800FD238 000F8138  40 82 FD 6C */	bne lbl_800FCFA4
/* 800FD23C 000F813C  3C 60 CD 80 */	lis r3, 0xCD8000C4@ha
/* 800FD240 000F8140  80 03 00 C4 */	lwz r0, 0xCD8000C4@l(r3)
/* 800FD244 000F8144  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FD248 000F8148  60 00 C0 00 */	ori r0, r0, 0xc000
/* 800FD24C 000F814C  90 03 00 C4 */	stw r0, 0xc4(r3)
/* 800FD250 000F8150  80 0D 84 E0 */	lwz r0, __i2c_ident_flag-_SDA_BASE_(r13)
/* 800FD254 000F8154  2C 00 00 00 */	cmpwi r0, 0
/* 800FD258 000F8158  40 82 00 18 */	bne lbl_800FD270
/* 800FD25C 000F815C  80 03 00 C0 */	lwz r0, 0xc0(r3)
/* 800FD260 000F8160  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FD264 000F8164  60 00 80 00 */	ori r0, r0, 0x8000
/* 800FD268 000F8168  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 800FD26C 000F816C  48 00 00 10 */	b lbl_800FD27C
lbl_800FD270:
/* 800FD270 000F8170  80 03 00 C0 */	lwz r0, 0xc0(r3)
/* 800FD274 000F8174  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FD278 000F8178  90 03 00 C0 */	stw r0, 0xc0(r3)
lbl_800FD27C:
/* 800FD27C 000F817C  4B FF 83 A9 */	bl __OSGetSystemTime
/* 800FD280 000F8180  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 800FD284 000F8184  7C 99 23 78 */	mr r25, r4
/* 800FD288 000F8188  7C 78 1B 78 */	mr r24, r3
/* 800FD28C 000F818C  3E C0 80 00 */	lis r22, 0x8000
/* 800FD290 000F8190  3A E5 DE 83 */	addi r23, r5, 0x431BDE83@l
/* 800FD294 000F8194  3A A0 00 02 */	li r21, 2
/* 800FD298 000F8198  3A 80 00 00 */	li r20, 0
lbl_800FD29C:
/* 800FD29C 000F819C  4B FF 83 89 */	bl __OSGetSystemTime
/* 800FD2A0 000F81A0  80 16 00 F8 */	lwz r0, 0xf8(r22)
/* 800FD2A4 000F81A4  7C D9 20 10 */	subfc r6, r25, r4
/* 800FD2A8 000F81A8  7C 78 19 10 */	subfe r3, r24, r3
/* 800FD2AC 000F81AC  38 A0 00 00 */	li r5, 0
/* 800FD2B0 000F81B0  54 00 F0 BE */	srwi r0, r0, 2
/* 800FD2B4 000F81B4  54 C4 18 38 */	slwi r4, r6, 3
/* 800FD2B8 000F81B8  7C 17 00 16 */	mulhwu r0, r23, r0
/* 800FD2BC 000F81BC  54 63 18 38 */	slwi r3, r3, 3
/* 800FD2C0 000F81C0  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800FD2C4 000F81C4  54 06 8B FE */	srwi r6, r0, 0xf
/* 800FD2C8 000F81C8  4B FB 4B CD */	bl __div2i
/* 800FD2CC 000F81CC  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800FD2D0 000F81D0  6E 85 80 00 */	xoris r5, r20, 0x8000
/* 800FD2D4 000F81D4  7C 75 20 10 */	subfc r3, r21, r4
/* 800FD2D8 000F81D8  7C A5 01 10 */	subfe r5, r5, r0
/* 800FD2DC 000F81DC  7C A0 01 10 */	subfe r5, r0, r0
/* 800FD2E0 000F81E0  7C A5 00 D1 */	neg. r5, r5
/* 800FD2E4 000F81E4  40 82 FF B8 */	bne lbl_800FD29C
/* 800FD2E8 000F81E8  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 800FD2EC 000F81EC  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 800FD2F0 000F81F0  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800FD2F4 000F81F4  60 00 40 00 */	ori r0, r0, 0x4000
/* 800FD2F8 000F81F8  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 800FD2FC 000F81FC  4B FF 83 29 */	bl __OSGetSystemTime
/* 800FD300 000F8200  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 800FD304 000F8204  7C 99 23 78 */	mr r25, r4
/* 800FD308 000F8208  7C 78 1B 78 */	mr r24, r3
/* 800FD30C 000F820C  3E C0 80 00 */	lis r22, 0x8000
/* 800FD310 000F8210  3A E5 DE 83 */	addi r23, r5, 0x431BDE83@l
/* 800FD314 000F8214  3A A0 00 02 */	li r21, 2
/* 800FD318 000F8218  3A 80 00 00 */	li r20, 0
lbl_800FD31C:
/* 800FD31C 000F821C  4B FF 83 09 */	bl __OSGetSystemTime
/* 800FD320 000F8220  80 16 00 F8 */	lwz r0, 0xf8(r22)
/* 800FD324 000F8224  7C D9 20 10 */	subfc r6, r25, r4
/* 800FD328 000F8228  7C 78 19 10 */	subfe r3, r24, r3
/* 800FD32C 000F822C  38 A0 00 00 */	li r5, 0
/* 800FD330 000F8230  54 00 F0 BE */	srwi r0, r0, 2
/* 800FD334 000F8234  54 C4 18 38 */	slwi r4, r6, 3
/* 800FD338 000F8238  7C 17 00 16 */	mulhwu r0, r23, r0
/* 800FD33C 000F823C  54 63 18 38 */	slwi r3, r3, 3
/* 800FD340 000F8240  50 C3 1F 7E */	rlwimi r3, r6, 3, 0x1d, 0x1f
/* 800FD344 000F8244  54 06 8B FE */	srwi r6, r0, 0xf
/* 800FD348 000F8248  4B FB 4B 4D */	bl __div2i
/* 800FD34C 000F824C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 800FD350 000F8250  6E 85 80 00 */	xoris r5, r20, 0x8000
/* 800FD354 000F8254  7C 75 20 10 */	subfc r3, r21, r4
/* 800FD358 000F8258  7C A5 01 10 */	subfe r5, r5, r0
/* 800FD35C 000F825C  7C A0 01 10 */	subfe r5, r0, r0
/* 800FD360 000F8260  7C A5 00 D1 */	neg. r5, r5
/* 800FD364 000F8264  40 82 FF B8 */	bne lbl_800FD31C
/* 800FD368 000F8268  80 0D 84 E0 */	lwz r0, __i2c_ident_flag-_SDA_BASE_(r13)
/* 800FD36C 000F826C  2C 00 00 00 */	cmpwi r0, 0
/* 800FD370 000F8270  40 82 00 18 */	bne lbl_800FD388
/* 800FD374 000F8274  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 800FD378 000F8278  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 800FD37C 000F827C  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FD380 000F8280  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 800FD384 000F8284  48 00 00 18 */	b lbl_800FD39C
lbl_800FD388:
/* 800FD388 000F8288  3C 60 CD 80 */	lis r3, 0xCD8000C0@ha
/* 800FD38C 000F828C  80 03 00 C0 */	lwz r0, 0xCD8000C0@l(r3)
/* 800FD390 000F8290  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800FD394 000F8294  60 00 80 00 */	ori r0, r0, 0x8000
/* 800FD398 000F8298  90 03 00 C0 */	stw r0, 0xc0(r3)
lbl_800FD39C:
/* 800FD39C 000F829C  7F E3 FB 78 */	mr r3, r31
/* 800FD3A0 000F82A0  4B FF 45 49 */	bl OSRestoreInterrupts
/* 800FD3A4 000F82A4  38 60 00 01 */	li r3, 1
lbl_800FD3A8:
/* 800FD3A8 000F82A8  39 61 00 40 */	addi r11, r1, 0x40
/* 800FD3AC 000F82AC  4B FB 49 C9 */	bl _restgpr_20
/* 800FD3B0 000F82B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800FD3B4 000F82B4  7C 08 03 A6 */	mtlr r0
/* 800FD3B8 000F82B8  38 21 00 40 */	addi r1, r1, 0x40
/* 800FD3BC 000F82BC  4E 80 00 20 */	blr 
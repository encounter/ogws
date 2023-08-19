.include "macros.inc"

.section .sdata2, "a"
.balign 0x8
.global lbl_804C07E8
lbl_804C07E8:
	.incbin "baserom.dol", 0x3C9428, 0x1
.global lbl_804C07E9
lbl_804C07E9:
	.incbin "baserom.dol", 0x3C9429, 0x1
.global lbl_804C07EA
lbl_804C07EA:
	.incbin "baserom.dol", 0x3C942A, 0x1
.global lbl_804C07EB
lbl_804C07EB:
	.incbin "baserom.dol", 0x3C942B, 0x1
.global lbl_804C07EC
lbl_804C07EC:
	.incbin "baserom.dol", 0x3C942C, 0x4
.global lbl_804C07F0
lbl_804C07F0:
	.incbin "baserom.dol", 0x3C9430, 0x4
.global lbl_804C07F4
lbl_804C07F4:
	.incbin "baserom.dol", 0x3C9434, 0x4
.global lbl_804C07F8
lbl_804C07F8:
	.incbin "baserom.dol", 0x3C9438, 0x8
.global lbl_804C0800
lbl_804C0800:
	.incbin "baserom.dol", 0x3C9440, 0x8
.global lbl_804C0808
lbl_804C0808:
	.incbin "baserom.dol", 0x3C9448, 0x8

.section .data, "wa"
.balign 0x8
.global lbl_80397D38
lbl_80397D38:
    .long 0
    .long 0
    .long 0x8008a390
    .long 0x80096a6c
    .long 0x80096a80
    .long 0x80097c58
    .long 0x80097cbc
    .long 0x80096bc0
    .long 0x80096c54
    .long 0

.section .text, "ax"
.global func_80097C1C
func_80097C1C:
/* 80097C1C 00092B1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80097C20 00092B20  7C 08 02 A6 */	mflr r0
/* 80097C24 00092B24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80097C28 00092B28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80097C2C 00092B2C  7C 7F 1B 78 */	mr r31, r3
/* 80097C30 00092B30  4B FF EE 05 */	bl __ct__Q23EGG14PostEffectBaseFv
/* 80097C34 00092B34  3C 80 80 39 */	lis r4, lbl_80397D38@ha
/* 80097C38 00092B38  7F E3 FB 78 */	mr r3, r31
/* 80097C3C 00092B3C  38 84 7D 38 */	addi r4, r4, lbl_80397D38@l
/* 80097C40 00092B40  90 9F 00 1C */	stw r4, 0x1c(r31)
/* 80097C44 00092B44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80097C48 00092B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80097C4C 00092B4C  7C 08 03 A6 */	mtlr r0
/* 80097C50 00092B50  38 21 00 10 */	addi r1, r1, 0x10
/* 80097C54 00092B54  4E 80 00 20 */	blr 

/* 80097C58 00092B58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80097C5C 00092B5C  38 00 00 80 */	li r0, 0x80
/* 80097C60 00092B60  C0 02 8D CC */	lfs f0, lbl_804C07EC-_SDA2_BASE_(r2)
/* 80097C64 00092B64  38 A0 00 02 */	li r5, 2
/* 80097C68 00092B68  98 03 00 28 */	stb r0, 0x28(r3)
/* 80097C6C 00092B6C  38 80 00 01 */	li r4, 1
/* 80097C70 00092B70  38 00 00 06 */	li r0, 6
/* 80097C74 00092B74  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80097C78 00092B78  90 A3 00 2C */	stw r5, 0x2c(r3)
/* 80097C7C 00092B7C  89 02 8D C8 */	lbz r8, lbl_804C07E8-_SDA2_BASE_(r2)
/* 80097C80 00092B80  88 E2 8D C9 */	lbz r7, lbl_804C07E9-_SDA2_BASE_(r2)
/* 80097C84 00092B84  88 C2 8D CA */	lbz r6, lbl_804C07EA-_SDA2_BASE_(r2)
/* 80097C88 00092B88  88 A2 8D CB */	lbz r5, lbl_804C07EB-_SDA2_BASE_(r2)
/* 80097C8C 00092B8C  99 01 00 08 */	stb r8, 8(r1)
/* 80097C90 00092B90  98 E1 00 09 */	stb r7, 9(r1)
/* 80097C94 00092B94  98 C1 00 0A */	stb r6, 0xa(r1)
/* 80097C98 00092B98  98 A1 00 0B */	stb r5, 0xb(r1)
/* 80097C9C 00092B9C  99 03 00 24 */	stb r8, 0x24(r3)
/* 80097CA0 00092BA0  98 E3 00 25 */	stb r7, 0x25(r3)
/* 80097CA4 00092BA4  98 C3 00 26 */	stb r6, 0x26(r3)
/* 80097CA8 00092BA8  98 A3 00 27 */	stb r5, 0x27(r3)
/* 80097CAC 00092BAC  98 83 00 30 */	stb r4, 0x30(r3)
/* 80097CB0 00092BB0  90 03 00 04 */	stw r0, 4(r3)
/* 80097CB4 00092BB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80097CB8 00092BB8  4E 80 00 20 */	blr 

/* 80097CBC 00092BBC  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80097CC0 00092BC0  7C 08 02 A6 */	mflr r0
/* 80097CC4 00092BC4  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80097CC8 00092BC8  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80097CCC 00092BCC  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 80097CD0 00092BD0  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 80097CD4 00092BD4  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, qr0
/* 80097CD8 00092BD8  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 80097CDC 00092BDC  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, qr0
/* 80097CE0 00092BE0  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 80097CE4 00092BE4  F3 81 00 A8 */	psq_st f28, 168(r1), 0, qr0
/* 80097CE8 00092BE8  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 80097CEC 00092BEC  F3 61 00 98 */	psq_st f27, 152(r1), 0, qr0
/* 80097CF0 00092BF0  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 80097CF4 00092BF4  F3 41 00 88 */	psq_st f26, 136(r1), 0, qr0
/* 80097CF8 00092BF8  DB 21 00 70 */	stfd f25, 0x70(r1)
/* 80097CFC 00092BFC  F3 21 00 78 */	psq_st f25, 120(r1), 0, qr0
/* 80097D00 00092C00  39 61 00 70 */	addi r11, r1, 0x70
/* 80097D04 00092C04  48 01 A0 41 */	bl _savegpr_27
/* 80097D08 00092C08  81 83 00 1C */	lwz r12, 0x1c(r3)
/* 80097D0C 00092C0C  7C 7F 1B 78 */	mr r31, r3
/* 80097D10 00092C10  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80097D14 00092C14  7D 89 03 A6 */	mtctr r12
/* 80097D18 00092C18  4E 80 04 21 */	bctrl 
/* 80097D1C 00092C1C  7F E3 FB 78 */	mr r3, r31
/* 80097D20 00092C20  4B FF EF 99 */	bl setMatColorChannel__Q23EGG14PostEffectBaseFv
/* 80097D24 00092C24  7F E3 FB 78 */	mr r3, r31
/* 80097D28 00092C28  4B FF EF FD */	bl setMatInd__Q23EGG14PostEffectBaseFv
/* 80097D2C 00092C2C  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 80097D30 00092C30  7C 00 00 34 */	cntlzw r0, r0
/* 80097D34 00092C34  54 03 D9 7E */	srwi r3, r0, 5
/* 80097D38 00092C38  38 03 00 02 */	addi r0, r3, 2
/* 80097D3C 00092C3C  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 80097D40 00092C40  7F A3 EB 78 */	mr r3, r29
/* 80097D44 00092C44  48 04 62 45 */	bl GXSetNumTexGens
/* 80097D48 00092C48  38 60 00 02 */	li r3, 2
/* 80097D4C 00092C4C  38 80 00 01 */	li r4, 1
/* 80097D50 00092C50  38 A0 00 04 */	li r5, 4
/* 80097D54 00092C54  38 C0 00 3C */	li r6, 0x3c
/* 80097D58 00092C58  38 E0 00 00 */	li r7, 0
/* 80097D5C 00092C5C  39 00 00 7D */	li r8, 0x7d
/* 80097D60 00092C60  48 04 60 01 */	bl GXSetTexCoordGen2
/* 80097D64 00092C64  80 7F 00 08 */	lwz r3, 8(r31)
/* 80097D68 00092C68  3F C0 43 30 */	lis r30, 0x4330
/* 80097D6C 00092C6C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80097D70 00092C70  3B 80 00 00 */	li r28, 0
/* 80097D74 00092C74  A0 03 00 02 */	lhz r0, 2(r3)
/* 80097D78 00092C78  C8 42 8D E0 */	lfd f2, lbl_804C0800-_SDA2_BASE_(r2)
/* 80097D7C 00092C7C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80097D80 00092C80  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80097D84 00092C84  C8 21 00 48 */	lfd f1, 0x48(r1)
/* 80097D88 00092C88  CB 82 8D E8 */	lfd f28, lbl_804C0808-_SDA2_BASE_(r2)
/* 80097D8C 00092C8C  EC 21 10 28 */	fsubs f1, f1, f2
/* 80097D90 00092C90  C3 A2 8D D0 */	lfs f29, lbl_804C07F0-_SDA2_BASE_(r2)
/* 80097D94 00092C94  C3 C2 8D CC */	lfs f30, lbl_804C07EC-_SDA2_BASE_(r2)
/* 80097D98 00092C98  C3 22 8D D4 */	lfs f25, lbl_804C07F4-_SDA2_BASE_(r2)
/* 80097D9C 00092C9C  EF 60 08 24 */	fdivs f27, f0, f1
/* 80097DA0 00092CA0  C3 E2 8D D8 */	lfs f31, lbl_804C07F8-_SDA2_BASE_(r2)
lbl_80097DA4:
/* 80097DA4 00092CA4  7F 83 E3 78 */	mr r3, r28
/* 80097DA8 00092CA8  48 00 9A 31 */	bl getTexMtxID__Q23EGG9GXUtilityFi
/* 80097DAC 00092CAC  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 80097DB0 00092CB0  7C 7B 1B 78 */	mr r27, r3
/* 80097DB4 00092CB4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80097DB8 00092CB8  EC 3F 06 72 */	fmuls f1, f31, f25
/* 80097DBC 00092CBC  38 61 00 14 */	addi r3, r1, 0x14
/* 80097DC0 00092CC0  38 81 00 10 */	addi r4, r1, 0x10
/* 80097DC4 00092CC4  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80097DC8 00092CC8  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80097DCC 00092CCC  D3 21 00 18 */	stfs f25, 0x18(r1)
/* 80097DD0 00092CD0  EC 00 E0 28 */	fsubs f0, f0, f28
/* 80097DD4 00092CD4  D3 21 00 1C */	stfs f25, 0x1c(r1)
/* 80097DD8 00092CD8  EC 1D F0 38 */	fmsubs f0, f29, f0, f30
/* 80097DDC 00092CDC  D3 21 00 20 */	stfs f25, 0x20(r1)
/* 80097DE0 00092CE0  EF 5B 00 32 */	fmuls f26, f27, f0
/* 80097DE4 00092CE4  4B F9 7B 7D */	bl SinCosFIdx__Q24nw4r4mathFPfPff
/* 80097DE8 00092CE8  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80097DEC 00092CEC  FC 60 C8 18 */	frsp f3, f25
/* 80097DF0 00092CF0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80097DF4 00092CF4  FC 40 C8 18 */	frsp f2, f25
/* 80097DF8 00092CF8  EC DE 00 72 */	fmuls f6, f30, f1
/* 80097DFC 00092CFC  D3 21 00 44 */	stfs f25, 0x44(r1)
/* 80097E00 00092D00  EC 3E 00 32 */	fmuls f1, f30, f0
/* 80097E04 00092D04  D3 21 00 34 */	stfs f25, 0x34(r1)
/* 80097E08 00092D08  7F 83 E3 78 */	mr r3, r28
/* 80097E0C 00092D0C  EC 06 00 F2 */	fmuls f0, f6, f3
/* 80097E10 00092D10  FC A0 08 50 */	fneg f5, f1
/* 80097E14 00092D14  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80097E18 00092D18  FC 80 30 50 */	fneg f4, f6
/* 80097E1C 00092D1C  7F 66 DB 78 */	mr r6, r27
/* 80097E20 00092D20  EC 21 00 F2 */	fmuls f1, f1, f3
/* 80097E24 00092D24  EC 05 00 B8 */	fmsubs f0, f5, f2, f0
/* 80097E28 00092D28  D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 80097E2C 00092D2C  38 80 00 01 */	li r4, 1
/* 80097E30 00092D30  EC 24 08 BA */	fmadds f1, f4, f2, f1
/* 80097E34 00092D34  38 A0 00 04 */	li r5, 4
/* 80097E38 00092D38  EC 03 00 2A */	fadds f0, f3, f0
/* 80097E3C 00092D3C  D0 A1 00 2C */	stfs f5, 0x2c(r1)
/* 80097E40 00092D40  38 E0 00 00 */	li r7, 0
/* 80097E44 00092D44  EC 22 08 2A */	fadds f1, f2, f1
/* 80097E48 00092D48  EC 19 00 2A */	fadds f0, f25, f0
/* 80097E4C 00092D4C  D0 C1 00 3C */	stfs f6, 0x3c(r1)
/* 80097E50 00092D50  39 00 00 7D */	li r8, 0x7d
/* 80097E54 00092D54  EC 3A 08 2A */	fadds f1, f26, f1
/* 80097E58 00092D58  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80097E5C 00092D5C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80097E60 00092D60  48 04 5F 01 */	bl GXSetTexCoordGen2
/* 80097E64 00092D64  7F 64 DB 78 */	mr r4, r27
/* 80097E68 00092D68  38 61 00 28 */	addi r3, r1, 0x28
/* 80097E6C 00092D6C  38 A0 00 01 */	li r5, 1
/* 80097E70 00092D70  48 04 B5 35 */	bl GXLoadTexMtxImm
/* 80097E74 00092D74  3B 9C 00 01 */	addi r28, r28, 1
/* 80097E78 00092D78  2C 1C 00 02 */	cmpwi r28, 2
/* 80097E7C 00092D7C  41 80 FF 28 */	blt lbl_80097DA4
/* 80097E80 00092D80  38 60 00 00 */	li r3, 0
/* 80097E84 00092D84  88 1F 00 28 */	lbz r0, 0x28(r31)
/* 80097E88 00092D88  90 61 00 0C */	stw r3, 0xc(r1)
/* 80097E8C 00092D8C  7F A3 EB 78 */	mr r3, r29
/* 80097E90 00092D90  98 01 00 0F */	stb r0, 0xf(r1)
/* 80097E94 00092D94  48 04 9D 4D */	bl GXSetNumTevStages
/* 80097E98 00092D98  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80097E9C 00092D9C  38 81 00 08 */	addi r4, r1, 8
/* 80097EA0 00092DA0  38 60 00 00 */	li r3, 0
/* 80097EA4 00092DA4  90 01 00 08 */	stw r0, 8(r1)
/* 80097EA8 00092DA8  48 04 99 65 */	bl GXSetTevKColor
/* 80097EAC 00092DAC  3B 60 00 00 */	li r27, 0
/* 80097EB0 00092DB0  48 00 01 D8 */	b lbl_80098088
lbl_80097EB4:
/* 80097EB4 00092DB4  7F 63 DB 78 */	mr r3, r27
/* 80097EB8 00092DB8  48 04 96 2D */	bl GXSetTevDirect
/* 80097EBC 00092DBC  7F 63 DB 78 */	mr r3, r27
/* 80097EC0 00092DC0  38 80 00 0C */	li r4, 0xc
/* 80097EC4 00092DC4  48 04 99 A5 */	bl GXSetTevKColorSel
/* 80097EC8 00092DC8  7F 63 DB 78 */	mr r3, r27
/* 80097ECC 00092DCC  38 80 00 1C */	li r4, 0x1c
/* 80097ED0 00092DD0  48 04 99 E9 */	bl GXSetTevKAlphaSel
/* 80097ED4 00092DD4  2C 1B 00 02 */	cmpwi r27, 2
/* 80097ED8 00092DD8  40 80 00 20 */	bge lbl_80097EF8
/* 80097EDC 00092DDC  80 BF 00 08 */	lwz r5, 8(r31)
/* 80097EE0 00092DE0  7F 63 DB 78 */	mr r3, r27
/* 80097EE4 00092DE4  7F 64 DB 78 */	mr r4, r27
/* 80097EE8 00092DE8  38 C0 00 FF */	li r6, 0xff
/* 80097EEC 00092DEC  80 A5 00 18 */	lwz r5, 0x18(r5)
/* 80097EF0 00092DF0  48 04 9B 95 */	bl GXSetTevOrder
/* 80097EF4 00092DF4  48 00 00 1C */	b lbl_80097F10
lbl_80097EF8:
/* 80097EF8 00092DF8  80 BF 00 08 */	lwz r5, 8(r31)
/* 80097EFC 00092DFC  7F 63 DB 78 */	mr r3, r27
/* 80097F00 00092E00  38 80 00 02 */	li r4, 2
/* 80097F04 00092E04  38 C0 00 FF */	li r6, 0xff
/* 80097F08 00092E08  80 A5 00 18 */	lwz r5, 0x18(r5)
/* 80097F0C 00092E0C  48 04 9B 79 */	bl GXSetTevOrder
lbl_80097F10:
/* 80097F10 00092E10  7F 63 DB 78 */	mr r3, r27
/* 80097F14 00092E14  38 80 00 00 */	li r4, 0
/* 80097F18 00092E18  38 A0 00 00 */	li r5, 0
/* 80097F1C 00092E1C  48 04 99 ED */	bl GXSetTevSwapMode
/* 80097F20 00092E20  2C 1B 00 01 */	cmpwi r27, 1
/* 80097F24 00092E24  41 82 00 8C */	beq lbl_80097FB0
/* 80097F28 00092E28  40 80 00 10 */	bge lbl_80097F38
/* 80097F2C 00092E2C  2C 1B 00 00 */	cmpwi r27, 0
/* 80097F30 00092E30  40 80 00 14 */	bge lbl_80097F44
/* 80097F34 00092E34  48 00 01 50 */	b lbl_80098084
lbl_80097F38:
/* 80097F38 00092E38  2C 1B 00 03 */	cmpwi r27, 3
/* 80097F3C 00092E3C  40 80 01 48 */	bge lbl_80098084
/* 80097F40 00092E40  48 00 00 DC */	b lbl_8009801C
lbl_80097F44:
/* 80097F44 00092E44  7F 63 DB 78 */	mr r3, r27
/* 80097F48 00092E48  38 80 00 0F */	li r4, 0xf
/* 80097F4C 00092E4C  38 A0 00 0F */	li r5, 0xf
/* 80097F50 00092E50  38 C0 00 0F */	li r6, 0xf
/* 80097F54 00092E54  38 E0 00 08 */	li r7, 8
/* 80097F58 00092E58  48 04 96 C1 */	bl GXSetTevColorIn
/* 80097F5C 00092E5C  7F 63 DB 78 */	mr r3, r27
/* 80097F60 00092E60  38 80 00 07 */	li r4, 7
/* 80097F64 00092E64  38 A0 00 07 */	li r5, 7
/* 80097F68 00092E68  38 C0 00 07 */	li r6, 7
/* 80097F6C 00092E6C  38 E0 00 07 */	li r7, 7
/* 80097F70 00092E70  48 04 96 E9 */	bl GXSetTevAlphaIn
/* 80097F74 00092E74  7F 63 DB 78 */	mr r3, r27
/* 80097F78 00092E78  38 80 00 00 */	li r4, 0
/* 80097F7C 00092E7C  38 A0 00 00 */	li r5, 0
/* 80097F80 00092E80  38 C0 00 00 */	li r6, 0
/* 80097F84 00092E84  38 E0 00 01 */	li r7, 1
/* 80097F88 00092E88  39 00 00 00 */	li r8, 0
/* 80097F8C 00092E8C  48 04 97 0D */	bl GXSetTevColorOp
/* 80097F90 00092E90  7F 63 DB 78 */	mr r3, r27
/* 80097F94 00092E94  38 80 00 00 */	li r4, 0
/* 80097F98 00092E98  38 A0 00 00 */	li r5, 0
/* 80097F9C 00092E9C  38 C0 00 00 */	li r6, 0
/* 80097FA0 00092EA0  38 E0 00 01 */	li r7, 1
/* 80097FA4 00092EA4  39 00 00 00 */	li r8, 0
/* 80097FA8 00092EA8  48 04 97 49 */	bl GXSetTevAlphaOp
/* 80097FAC 00092EAC  48 00 00 D8 */	b lbl_80098084
lbl_80097FB0:
/* 80097FB0 00092EB0  7F 63 DB 78 */	mr r3, r27
/* 80097FB4 00092EB4  38 80 00 00 */	li r4, 0
/* 80097FB8 00092EB8  38 A0 00 08 */	li r5, 8
/* 80097FBC 00092EBC  38 C0 00 0D */	li r6, 0xd
/* 80097FC0 00092EC0  38 E0 00 0F */	li r7, 0xf
/* 80097FC4 00092EC4  48 04 96 55 */	bl GXSetTevColorIn
/* 80097FC8 00092EC8  7F 63 DB 78 */	mr r3, r27
/* 80097FCC 00092ECC  38 80 00 07 */	li r4, 7
/* 80097FD0 00092ED0  38 A0 00 07 */	li r5, 7
/* 80097FD4 00092ED4  38 C0 00 07 */	li r6, 7
/* 80097FD8 00092ED8  38 E0 00 06 */	li r7, 6
/* 80097FDC 00092EDC  48 04 96 7D */	bl GXSetTevAlphaIn
/* 80097FE0 00092EE0  80 DF 00 2C */	lwz r6, 0x2c(r31)
/* 80097FE4 00092EE4  7F 63 DB 78 */	mr r3, r27
/* 80097FE8 00092EE8  38 80 00 00 */	li r4, 0
/* 80097FEC 00092EEC  38 A0 00 00 */	li r5, 0
/* 80097FF0 00092EF0  38 E0 00 01 */	li r7, 1
/* 80097FF4 00092EF4  39 00 00 00 */	li r8, 0
/* 80097FF8 00092EF8  48 04 96 A1 */	bl GXSetTevColorOp
/* 80097FFC 00092EFC  7F 63 DB 78 */	mr r3, r27
/* 80098000 00092F00  38 80 00 00 */	li r4, 0
/* 80098004 00092F04  38 A0 00 00 */	li r5, 0
/* 80098008 00092F08  38 C0 00 00 */	li r6, 0
/* 8009800C 00092F0C  38 E0 00 01 */	li r7, 1
/* 80098010 00092F10  39 00 00 00 */	li r8, 0
/* 80098014 00092F14  48 04 96 DD */	bl GXSetTevAlphaOp
/* 80098018 00092F18  48 00 00 6C */	b lbl_80098084
lbl_8009801C:
/* 8009801C 00092F1C  7F 63 DB 78 */	mr r3, r27
/* 80098020 00092F20  38 80 00 08 */	li r4, 8
/* 80098024 00092F24  38 A0 00 00 */	li r5, 0
/* 80098028 00092F28  38 C0 00 01 */	li r6, 1
/* 8009802C 00092F2C  38 E0 00 0F */	li r7, 0xf
/* 80098030 00092F30  48 04 95 E9 */	bl GXSetTevColorIn
/* 80098034 00092F34  7F 63 DB 78 */	mr r3, r27
/* 80098038 00092F38  38 80 00 07 */	li r4, 7
/* 8009803C 00092F3C  38 A0 00 07 */	li r5, 7
/* 80098040 00092F40  38 C0 00 07 */	li r6, 7
/* 80098044 00092F44  38 E0 00 06 */	li r7, 6
/* 80098048 00092F48  48 04 96 11 */	bl GXSetTevAlphaIn
/* 8009804C 00092F4C  7F 63 DB 78 */	mr r3, r27
/* 80098050 00092F50  38 80 00 00 */	li r4, 0
/* 80098054 00092F54  38 A0 00 00 */	li r5, 0
/* 80098058 00092F58  38 C0 00 00 */	li r6, 0
/* 8009805C 00092F5C  38 E0 00 01 */	li r7, 1
/* 80098060 00092F60  39 00 00 00 */	li r8, 0
/* 80098064 00092F64  48 04 96 35 */	bl GXSetTevColorOp
/* 80098068 00092F68  7F 63 DB 78 */	mr r3, r27
/* 8009806C 00092F6C  38 80 00 00 */	li r4, 0
/* 80098070 00092F70  38 A0 00 00 */	li r5, 0
/* 80098074 00092F74  38 C0 00 00 */	li r6, 0
/* 80098078 00092F78  38 E0 00 01 */	li r7, 1
/* 8009807C 00092F7C  39 00 00 00 */	li r8, 0
/* 80098080 00092F80  48 04 96 71 */	bl GXSetTevAlphaOp
lbl_80098084:
/* 80098084 00092F84  3B 7B 00 01 */	addi r27, r27, 1
lbl_80098088:
/* 80098088 00092F88  7C 1B E8 00 */	cmpw r27, r29
/* 8009808C 00092F8C  41 80 FE 28 */	blt lbl_80097EB4
/* 80098090 00092F90  7F E3 FB 78 */	mr r3, r31
/* 80098094 00092F94  4B FF EC 99 */	bl setMatPE__Q23EGG14PostEffectBaseFv
/* 80098098 00092F98  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 8009809C 00092F9C  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 800980A0 00092FA0  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, qr0
/* 800980A4 00092FA4  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 800980A8 00092FA8  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, qr0
/* 800980AC 00092FAC  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 800980B0 00092FB0  E3 81 00 A8 */	psq_l f28, 168(r1), 0, qr0
/* 800980B4 00092FB4  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 800980B8 00092FB8  E3 61 00 98 */	psq_l f27, 152(r1), 0, qr0
/* 800980BC 00092FBC  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 800980C0 00092FC0  E3 41 00 88 */	psq_l f26, 136(r1), 0, qr0
/* 800980C4 00092FC4  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 800980C8 00092FC8  E3 21 00 78 */	psq_l f25, 120(r1), 0, qr0
/* 800980CC 00092FCC  39 61 00 70 */	addi r11, r1, 0x70
/* 800980D0 00092FD0  CB 21 00 70 */	lfd f25, 0x70(r1)
/* 800980D4 00092FD4  48 01 9C BD */	bl _restgpr_27
/* 800980D8 00092FD8  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 800980DC 00092FDC  7C 08 03 A6 */	mtlr r0
/* 800980E0 00092FE0  38 21 00 E0 */	addi r1, r1, 0xe0
/* 800980E4 00092FE4  4E 80 00 20 */	blr 
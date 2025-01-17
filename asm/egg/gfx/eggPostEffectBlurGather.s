.include "macros.inc"

.section .sdata2, "a"
.balign 0x8
.global lbl_804C07D8
lbl_804C07D8:
	.incbin "baserom.dol", 0x3C9418, 0x4
.global lbl_804C07DC
lbl_804C07DC:
	.incbin "baserom.dol", 0x3C941C, 0x4
.global lbl_804C07E0
lbl_804C07E0:
	.incbin "baserom.dol", 0x3C9420, 0x8

.section .data, "wa"
.balign 0x8
.global lbl_80397D10
lbl_80397D10:
    .long 0
    .long 0
    .long 0x8008a310
    .long 0x80096a6c
    .long 0x80096a80
    .long 0x800977e4
    .long 0x8009786c
    .long 0x80096bc0
    .long 0x80096c54
    .long 0

.section .text, "ax"
.global func_800977A8
func_800977A8:
/* 800977A8 000926A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800977AC 000926AC  7C 08 02 A6 */	mflr r0
/* 800977B0 000926B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800977B4 000926B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800977B8 000926B8  7C 7F 1B 78 */	mr r31, r3
/* 800977BC 000926BC  4B FF F2 79 */	bl __ct__Q23EGG14PostEffectBaseFv
/* 800977C0 000926C0  3C 80 80 39 */	lis r4, lbl_80397D10@ha
/* 800977C4 000926C4  7F E3 FB 78 */	mr r3, r31
/* 800977C8 000926C8  38 84 7D 10 */	addi r4, r4, lbl_80397D10@l
/* 800977CC 000926CC  90 9F 00 1C */	stw r4, 0x1c(r31)
/* 800977D0 000926D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800977D4 000926D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800977D8 000926D8  7C 08 03 A6 */	mtlr r0
/* 800977DC 000926DC  38 21 00 10 */	addi r1, r1, 0x10
/* 800977E0 000926E0  4E 80 00 20 */	blr 
/* 800977E4 000926E4  38 82 8B A4 */	addi r4, r2, scColorWhite__Q23EGG6DrawGX-_SDA2_BASE_
/* 800977E8 000926E8  38 A0 00 00 */	li r5, 0
/* 800977EC 000926EC  89 02 8B A4 */	lbz r8, scColorWhite__Q23EGG6DrawGX-_SDA2_BASE_(r2)
/* 800977F0 000926F0  38 00 00 01 */	li r0, 1
/* 800977F4 000926F4  88 C4 00 01 */	lbz r6, 1(r4)
/* 800977F8 000926F8  88 E4 00 02 */	lbz r7, 2(r4)
/* 800977FC 000926FC  88 84 00 03 */	lbz r4, 3(r4)
/* 80097800 00092700  C0 22 8D B8 */	lfs f1, lbl_804C07D8-_SDA2_BASE_(r2)
/* 80097804 00092704  C0 02 8D BC */	lfs f0, lbl_804C07DC-_SDA2_BASE_(r2)
/* 80097808 00092708  90 A3 00 28 */	stw r5, 0x28(r3)
/* 8009780C 0009270C  99 03 00 2C */	stb r8, 0x2c(r3)
/* 80097810 00092710  98 C3 00 2D */	stb r6, 0x2d(r3)
/* 80097814 00092714  98 E3 00 2E */	stb r7, 0x2e(r3)
/* 80097818 00092718  98 83 00 2F */	stb r4, 0x2f(r3)
/* 8009781C 0009271C  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 80097820 00092720  98 A3 00 34 */	stb r5, 0x34(r3)
/* 80097824 00092724  90 A3 00 38 */	stw r5, 0x38(r3)
/* 80097828 00092728  99 03 00 3C */	stb r8, 0x3c(r3)
/* 8009782C 0009272C  98 C3 00 3D */	stb r6, 0x3d(r3)
/* 80097830 00092730  98 E3 00 3E */	stb r7, 0x3e(r3)
/* 80097834 00092734  98 83 00 3F */	stb r4, 0x3f(r3)
/* 80097838 00092738  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 8009783C 0009273C  98 A3 00 44 */	stb r5, 0x44(r3)
/* 80097840 00092740  90 A3 00 48 */	stw r5, 0x48(r3)
/* 80097844 00092744  99 03 00 4C */	stb r8, 0x4c(r3)
/* 80097848 00092748  98 C3 00 4D */	stb r6, 0x4d(r3)
/* 8009784C 0009274C  98 E3 00 4E */	stb r7, 0x4e(r3)
/* 80097850 00092750  98 83 00 4F */	stb r4, 0x4f(r3)
/* 80097854 00092754  D0 23 00 50 */	stfs f1, 0x50(r3)
/* 80097858 00092758  98 A3 00 54 */	stb r5, 0x54(r3)
/* 8009785C 0009275C  98 03 00 20 */	stb r0, 0x20(r3)
/* 80097860 00092760  98 03 00 21 */	stb r0, 0x21(r3)
/* 80097864 00092764  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80097868 00092768  4E 80 00 20 */	blr 
/* 8009786C 0009276C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80097870 00092770  7C 08 02 A6 */	mflr r0
/* 80097874 00092774  90 01 00 54 */	stw r0, 0x54(r1)
/* 80097878 00092778  39 61 00 50 */	addi r11, r1, 0x50
/* 8009787C 0009277C  48 01 A4 C9 */	bl _savegpr_27
/* 80097880 00092780  80 03 00 08 */	lwz r0, 8(r3)
/* 80097884 00092784  7C 7E 1B 78 */	mr r30, r3
/* 80097888 00092788  3B A0 00 00 */	li r29, 0
/* 8009788C 0009278C  2C 00 00 00 */	cmpwi r0, 0
/* 80097890 00092790  41 82 00 14 */	beq lbl_800978A4
/* 80097894 00092794  88 03 00 21 */	lbz r0, 0x21(r3)
/* 80097898 00092798  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8009789C 0009279C  40 82 00 08 */	bne lbl_800978A4
/* 800978A0 000927A0  3B A0 00 01 */	li r29, 1
lbl_800978A4:
/* 800978A4 000927A4  88 83 00 20 */	lbz r4, 0x20(r3)
/* 800978A8 000927A8  57 A0 0D FC */	rlwinm r0, r29, 1, 0x17, 0x1e
/* 800978AC 000927AC  7F C3 F3 78 */	mr r3, r30
/* 800978B0 000927B0  7F E4 02 14 */	add r31, r4, r0
/* 800978B4 000927B4  4B FF F4 05 */	bl setMatColorChannel__Q23EGG14PostEffectBaseFv
/* 800978B8 000927B8  88 1E 00 20 */	lbz r0, 0x20(r30)
/* 800978BC 000927BC  7C 00 EA 14 */	add r0, r0, r29
/* 800978C0 000927C0  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 800978C4 000927C4  7F 83 E3 78 */	mr r3, r28
/* 800978C8 000927C8  48 04 66 C1 */	bl GXSetNumTexGens
/* 800978CC 000927CC  7F DD F3 78 */	mr r29, r30
/* 800978D0 000927D0  3B 60 00 00 */	li r27, 0
/* 800978D4 000927D4  48 00 00 64 */	b lbl_80097938
lbl_800978D8:
/* 800978D8 000927D8  7F 63 DB 78 */	mr r3, r27
/* 800978DC 000927DC  38 80 00 01 */	li r4, 1
/* 800978E0 000927E0  38 A0 00 04 */	li r5, 4
/* 800978E4 000927E4  38 C0 00 3C */	li r6, 0x3c
/* 800978E8 000927E8  38 E0 00 00 */	li r7, 0
/* 800978EC 000927EC  39 00 00 7D */	li r8, 0x7d
/* 800978F0 000927F0  48 04 64 71 */	bl GXSetTexCoordGen2
/* 800978F4 000927F4  88 1E 00 20 */	lbz r0, 0x20(r30)
/* 800978F8 000927F8  7C 1B 00 00 */	cmpw r27, r0
/* 800978FC 000927FC  40 80 00 20 */	bge lbl_8009791C
/* 80097900 00092800  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80097904 00092804  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80097908 00092808  80 83 00 18 */	lwz r4, 0x18(r3)
/* 8009790C 0009280C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80097910 00092810  7D 89 03 A6 */	mtctr r12
/* 80097914 00092814  4E 80 04 21 */	bctrl 
/* 80097918 00092818  48 00 00 18 */	b lbl_80097930
lbl_8009791C:
/* 8009791C 0009281C  81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 80097920 00092820  7F C3 F3 78 */	mr r3, r30
/* 80097924 00092824  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80097928 00092828  7D 89 03 A6 */	mtctr r12
/* 8009792C 0009282C  4E 80 04 21 */	bctrl 
lbl_80097930:
/* 80097930 00092830  3B BD 00 10 */	addi r29, r29, 0x10
/* 80097934 00092834  3B 7B 00 01 */	addi r27, r27, 1
lbl_80097938:
/* 80097938 00092838  7C 1B E0 00 */	cmpw r27, r28
/* 8009793C 0009283C  41 80 FF 9C */	blt lbl_800978D8
/* 80097940 00092840  C0 22 8D C0 */	lfs f1, lbl_804C07E0-_SDA2_BASE_(r2)
/* 80097944 00092844  7F C3 F3 78 */	mr r3, r30
/* 80097948 00092848  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8009794C 0009284C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80097950 00092850  FC 00 00 1E */	fctiwz f0, f0
/* 80097954 00092854  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80097958 00092858  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8009795C 0009285C  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 80097960 00092860  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80097964 00092864  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 80097968 00092868  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8009796C 0009286C  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 80097970 00092870  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80097974 00092874  98 C1 00 14 */	stb r6, 0x14(r1)
/* 80097978 00092878  98 A1 00 15 */	stb r5, 0x15(r1)
/* 8009797C 0009287C  98 81 00 16 */	stb r4, 0x16(r1)
/* 80097980 00092880  98 01 00 17 */	stb r0, 0x17(r1)
/* 80097984 00092884  4B FF F3 A1 */	bl setMatInd__Q23EGG14PostEffectBaseFv
/* 80097988 00092888  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8009798C 0009288C  48 04 A2 55 */	bl GXSetNumTevStages
/* 80097990 00092890  3B BE 00 28 */	addi r29, r30, 0x28
/* 80097994 00092894  3B 60 00 00 */	li r27, 0
/* 80097998 00092898  48 00 02 5C */	b lbl_80097BF4
lbl_8009799C:
/* 8009799C 0009289C  7F 63 DB 78 */	mr r3, r27
/* 800979A0 000928A0  48 04 9B 45 */	bl GXSetTevDirect
/* 800979A4 000928A4  7F 63 DB 78 */	mr r3, r27
/* 800979A8 000928A8  38 80 00 00 */	li r4, 0
/* 800979AC 000928AC  38 A0 00 00 */	li r5, 0
/* 800979B0 000928B0  48 04 9F 59 */	bl GXSetTevSwapMode
/* 800979B4 000928B4  88 1E 00 20 */	lbz r0, 0x20(r30)
/* 800979B8 000928B8  7C 1B 00 00 */	cmpw r27, r0
/* 800979BC 000928BC  40 80 01 00 */	bge lbl_80097ABC
/* 800979C0 000928C0  C0 3D 00 08 */	lfs f1, 8(r29)
/* 800979C4 000928C4  38 61 00 10 */	addi r3, r1, 0x10
/* 800979C8 000928C8  38 9D 00 04 */	addi r4, r29, 4
/* 800979CC 000928CC  38 A0 00 00 */	li r5, 0
/* 800979D0 000928D0  4B FF F4 99 */	bl scaleColor__Q23EGG14PostEffectBaseFR8_GXColorRC8_GXColorfb
/* 800979D4 000928D4  7F 63 DB 78 */	mr r3, r27
/* 800979D8 000928D8  38 9B 00 0C */	addi r4, r27, 0xc
/* 800979DC 000928DC  48 04 9E 8D */	bl GXSetTevKColorSel
/* 800979E0 000928E0  7F 63 DB 78 */	mr r3, r27
/* 800979E4 000928E4  38 9B 00 1C */	addi r4, r27, 0x1c
/* 800979E8 000928E8  48 04 9E D1 */	bl GXSetTevKAlphaSel
/* 800979EC 000928EC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 800979F0 000928F0  7F 63 DB 78 */	mr r3, r27
/* 800979F4 000928F4  38 81 00 0C */	addi r4, r1, 0xc
/* 800979F8 000928F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800979FC 000928FC  48 04 9E 11 */	bl GXSetTevKColor
/* 80097A00 00092900  80 BD 00 00 */	lwz r5, 0(r29)
/* 80097A04 00092904  7F 63 DB 78 */	mr r3, r27
/* 80097A08 00092908  7F 64 DB 78 */	mr r4, r27
/* 80097A0C 0009290C  38 C0 00 FF */	li r6, 0xff
/* 80097A10 00092910  80 A5 00 18 */	lwz r5, 0x18(r5)
/* 80097A14 00092914  48 04 A0 71 */	bl GXSetTevOrder
/* 80097A18 00092918  2C 1B 00 00 */	cmpwi r27, 0
/* 80097A1C 0009291C  7F 63 DB 78 */	mr r3, r27
/* 80097A20 00092920  38 80 00 0F */	li r4, 0xf
/* 80097A24 00092924  38 A0 00 08 */	li r5, 8
/* 80097A28 00092928  38 C0 00 0E */	li r6, 0xe
/* 80097A2C 0009292C  38 E0 00 00 */	li r7, 0
/* 80097A30 00092930  40 82 00 08 */	bne lbl_80097A38
/* 80097A34 00092934  38 E0 00 0F */	li r7, 0xf
lbl_80097A38:
/* 80097A38 00092938  48 04 9B E1 */	bl GXSetTevColorIn
/* 80097A3C 0009293C  88 DE 00 20 */	lbz r6, 0x20(r30)
/* 80097A40 00092940  7F 63 DB 78 */	mr r3, r27
/* 80097A44 00092944  38 80 00 00 */	li r4, 0
/* 80097A48 00092948  38 A0 00 00 */	li r5, 0
/* 80097A4C 0009294C  38 06 FF FF */	addi r0, r6, -1
/* 80097A50 00092950  38 C0 00 00 */	li r6, 0
/* 80097A54 00092954  7C 1B 00 50 */	subf r0, r27, r0
/* 80097A58 00092958  38 E0 00 01 */	li r7, 1
/* 80097A5C 0009295C  7C 00 00 34 */	cntlzw r0, r0
/* 80097A60 00092960  54 08 D9 7E */	srwi r8, r0, 5
/* 80097A64 00092964  48 04 9C 35 */	bl GXSetTevColorOp
/* 80097A68 00092968  2C 1B 00 00 */	cmpwi r27, 0
/* 80097A6C 0009296C  7F 63 DB 78 */	mr r3, r27
/* 80097A70 00092970  38 80 00 07 */	li r4, 7
/* 80097A74 00092974  38 A0 00 04 */	li r5, 4
/* 80097A78 00092978  38 C0 00 06 */	li r6, 6
/* 80097A7C 0009297C  38 E0 00 00 */	li r7, 0
/* 80097A80 00092980  40 82 00 08 */	bne lbl_80097A88
/* 80097A84 00092984  38 E0 00 07 */	li r7, 7
lbl_80097A88:
/* 80097A88 00092988  48 04 9B D1 */	bl GXSetTevAlphaIn
/* 80097A8C 0009298C  88 DE 00 20 */	lbz r6, 0x20(r30)
/* 80097A90 00092990  7F 63 DB 78 */	mr r3, r27
/* 80097A94 00092994  38 80 00 00 */	li r4, 0
/* 80097A98 00092998  38 A0 00 00 */	li r5, 0
/* 80097A9C 0009299C  38 06 FF FF */	addi r0, r6, -1
/* 80097AA0 000929A0  38 C0 00 00 */	li r6, 0
/* 80097AA4 000929A4  7C 1B 00 50 */	subf r0, r27, r0
/* 80097AA8 000929A8  38 E0 00 01 */	li r7, 1
/* 80097AAC 000929AC  7C 00 00 34 */	cntlzw r0, r0
/* 80097AB0 000929B0  54 08 D9 7E */	srwi r8, r0, 5
/* 80097AB4 000929B4  48 04 9C 3D */	bl GXSetTevAlphaOp
/* 80097AB8 000929B8  48 00 01 34 */	b lbl_80097BEC
lbl_80097ABC:
/* 80097ABC 000929BC  40 82 00 B4 */	bne lbl_80097B70
/* 80097AC0 000929C0  7F 63 DB 78 */	mr r3, r27
/* 80097AC4 000929C4  38 80 00 0E */	li r4, 0xe
/* 80097AC8 000929C8  48 04 9D A1 */	bl GXSetTevKColorSel
/* 80097ACC 000929CC  7F 63 DB 78 */	mr r3, r27
/* 80097AD0 000929D0  38 80 00 1E */	li r4, 0x1e
/* 80097AD4 000929D4  48 04 9D E5 */	bl GXSetTevKAlphaSel
/* 80097AD8 000929D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80097ADC 000929DC  38 81 00 08 */	addi r4, r1, 8
/* 80097AE0 000929E0  38 60 00 02 */	li r3, 2
/* 80097AE4 000929E4  90 01 00 08 */	stw r0, 8(r1)
/* 80097AE8 000929E8  48 04 9D 25 */	bl GXSetTevKColor
/* 80097AEC 000929EC  80 BE 00 08 */	lwz r5, 8(r30)
/* 80097AF0 000929F0  7F 63 DB 78 */	mr r3, r27
/* 80097AF4 000929F4  7F 64 DB 78 */	mr r4, r27
/* 80097AF8 000929F8  38 C0 00 FF */	li r6, 0xff
/* 80097AFC 000929FC  80 A5 00 18 */	lwz r5, 0x18(r5)
/* 80097B00 00092A00  48 04 9F 85 */	bl GXSetTevOrder
/* 80097B04 00092A04  7F 63 DB 78 */	mr r3, r27
/* 80097B08 00092A08  38 80 00 0E */	li r4, 0xe
/* 80097B0C 00092A0C  38 A0 00 0F */	li r5, 0xf
/* 80097B10 00092A10  38 C0 00 0F */	li r6, 0xf
/* 80097B14 00092A14  38 E0 00 08 */	li r7, 8
/* 80097B18 00092A18  48 04 9B 01 */	bl GXSetTevColorIn
/* 80097B1C 00092A1C  7F 63 DB 78 */	mr r3, r27
/* 80097B20 00092A20  38 80 00 01 */	li r4, 1
/* 80097B24 00092A24  38 A0 00 00 */	li r5, 0
/* 80097B28 00092A28  38 C0 00 02 */	li r6, 2
/* 80097B2C 00092A2C  38 E0 00 01 */	li r7, 1
/* 80097B30 00092A30  39 00 00 00 */	li r8, 0
/* 80097B34 00092A34  48 04 9B 65 */	bl GXSetTevColorOp
/* 80097B38 00092A38  7F 63 DB 78 */	mr r3, r27
/* 80097B3C 00092A3C  38 80 00 06 */	li r4, 6
/* 80097B40 00092A40  38 A0 00 07 */	li r5, 7
/* 80097B44 00092A44  38 C0 00 07 */	li r6, 7
/* 80097B48 00092A48  38 E0 00 04 */	li r7, 4
/* 80097B4C 00092A4C  48 04 9B 0D */	bl GXSetTevAlphaIn
/* 80097B50 00092A50  7F 63 DB 78 */	mr r3, r27
/* 80097B54 00092A54  38 80 00 01 */	li r4, 1
/* 80097B58 00092A58  38 A0 00 00 */	li r5, 0
/* 80097B5C 00092A5C  38 C0 00 02 */	li r6, 2
/* 80097B60 00092A60  38 E0 00 01 */	li r7, 1
/* 80097B64 00092A64  39 00 00 00 */	li r8, 0
/* 80097B68 00092A68  48 04 9B 89 */	bl GXSetTevAlphaOp
/* 80097B6C 00092A6C  48 00 00 80 */	b lbl_80097BEC
lbl_80097B70:
/* 80097B70 00092A70  7F 63 DB 78 */	mr r3, r27
/* 80097B74 00092A74  38 80 00 FF */	li r4, 0xff
/* 80097B78 00092A78  38 A0 00 FF */	li r5, 0xff
/* 80097B7C 00092A7C  38 C0 00 FF */	li r6, 0xff
/* 80097B80 00092A80  48 04 9F 05 */	bl GXSetTevOrder
/* 80097B84 00092A84  7F 63 DB 78 */	mr r3, r27
/* 80097B88 00092A88  38 80 00 02 */	li r4, 2
/* 80097B8C 00092A8C  38 A0 00 0F */	li r5, 0xf
/* 80097B90 00092A90  38 C0 00 00 */	li r6, 0
/* 80097B94 00092A94  38 E0 00 0F */	li r7, 0xf
/* 80097B98 00092A98  48 04 9A 81 */	bl GXSetTevColorIn
/* 80097B9C 00092A9C  7F 63 DB 78 */	mr r3, r27
/* 80097BA0 00092AA0  38 80 00 00 */	li r4, 0
/* 80097BA4 00092AA4  38 A0 00 00 */	li r5, 0
/* 80097BA8 00092AA8  38 C0 00 00 */	li r6, 0
/* 80097BAC 00092AAC  38 E0 00 01 */	li r7, 1
/* 80097BB0 00092AB0  39 00 00 00 */	li r8, 0
/* 80097BB4 00092AB4  48 04 9A E5 */	bl GXSetTevColorOp
/* 80097BB8 00092AB8  7F 63 DB 78 */	mr r3, r27
/* 80097BBC 00092ABC  38 80 00 01 */	li r4, 1
/* 80097BC0 00092AC0  38 A0 00 07 */	li r5, 7
/* 80097BC4 00092AC4  38 C0 00 00 */	li r6, 0
/* 80097BC8 00092AC8  38 E0 00 07 */	li r7, 7
/* 80097BCC 00092ACC  48 04 9A 8D */	bl GXSetTevAlphaIn
/* 80097BD0 00092AD0  7F 63 DB 78 */	mr r3, r27
/* 80097BD4 00092AD4  38 80 00 00 */	li r4, 0
/* 80097BD8 00092AD8  38 A0 00 00 */	li r5, 0
/* 80097BDC 00092ADC  38 C0 00 00 */	li r6, 0
/* 80097BE0 00092AE0  38 E0 00 01 */	li r7, 1
/* 80097BE4 00092AE4  39 00 00 00 */	li r8, 0
/* 80097BE8 00092AE8  48 04 9B 09 */	bl GXSetTevAlphaOp
lbl_80097BEC:
/* 80097BEC 00092AEC  3B BD 00 10 */	addi r29, r29, 0x10
/* 80097BF0 00092AF0  3B 7B 00 01 */	addi r27, r27, 1
lbl_80097BF4:
/* 80097BF4 00092AF4  7C 1B F8 00 */	cmpw r27, r31
/* 80097BF8 00092AF8  41 80 FD A4 */	blt lbl_8009799C
/* 80097BFC 00092AFC  7F C3 F3 78 */	mr r3, r30
/* 80097C00 00092B00  4B FF F1 2D */	bl setMatPE__Q23EGG14PostEffectBaseFv
/* 80097C04 00092B04  39 61 00 50 */	addi r11, r1, 0x50
/* 80097C08 00092B08  48 01 A1 89 */	bl _restgpr_27
/* 80097C0C 00092B0C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80097C10 00092B10  7C 08 03 A6 */	mtlr r0
/* 80097C14 00092B14  38 21 00 50 */	addi r1, r1, 0x50
/* 80097C18 00092B18  4E 80 00 20 */	blr 

.include "macros.inc"

.section .text, "ax"

# SearchFrame__Q34nw4r3g3d30@unnamed@g3d_resanmtexpat_cpp@FPCQ34nw4r3g3d19ResAnmTexPatAnmDataf
.global SearchFrame__Q34nw4r3g3d30$$2unnamed$$2g3d_resanmtexpat_cpp$$2FPCQ34nw4r3g3d19ResAnmTexPatAnmDataf
SearchFrame__Q34nw4r3g3d30$$2unnamed$$2g3d_resanmtexpat_cpp$$2FPCQ34nw4r3g3d19ResAnmTexPatAnmDataf:
/* 80057374 00052274  A0 A3 00 00 */	lhz r5, 0(r3)
/* 80057378 00052278  38 C3 00 08 */	addi r6, r3, 8
/* 8005737C 0005227C  C0 43 00 08 */	lfs f2, 8(r3)
/* 80057380 00052280  38 05 FF FF */	addi r0, r5, -1
/* 80057384 00052284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80057388 00052288  54 00 18 38 */	slwi r0, r0, 3
/* 8005738C 0005228C  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80057390 00052290  7C 83 02 14 */	add r4, r3, r0
/* 80057394 00052294  38 84 00 08 */	addi r4, r4, 8
/* 80057398 00052298  4C 40 13 82 */	cror 2, 0, 2
/* 8005739C 0005229C  40 82 00 0C */	bne lbl_800573A8
/* 800573A0 000522A0  7C C3 33 78 */	mr r3, r6
/* 800573A4 000522A4  48 00 00 74 */	b lbl_80057418
lbl_800573A8:
/* 800573A8 000522A8  C0 04 00 00 */	lfs f0, 0(r4)
/* 800573AC 000522AC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800573B0 000522B0  4C 40 13 82 */	cror 2, 0, 2
/* 800573B4 000522B4  40 82 00 0C */	bne lbl_800573C0
/* 800573B8 000522B8  7C 83 23 78 */	mr r3, r4
/* 800573BC 000522BC  48 00 00 5C */	b lbl_80057418
lbl_800573C0:
/* 800573C0 000522C0  B0 A1 00 08 */	sth r5, 8(r1)
/* 800573C4 000522C4  EC 61 10 28 */	fsubs f3, f1, f2
/* 800573C8 000522C8  E0 41 B0 08 */	psq_l f2, 8(r1), 1, qr3
/* 800573CC 000522CC  C0 03 00 04 */	lfs f0, 4(r3)
/* 800573D0 000522D0  EC 43 00 B2 */	fmuls f2, f3, f2
/* 800573D4 000522D4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800573D8 000522D8  F0 01 B0 0C */	psq_st f0, 12(r1), 1, qr3
/* 800573DC 000522DC  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 800573E0 000522E0  54 00 18 38 */	slwi r0, r0, 3
/* 800573E4 000522E4  7C 63 02 14 */	add r3, r3, r0
/* 800573E8 000522E8  C4 03 00 08 */	lfsu f0, 8(r3)
/* 800573EC 000522EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800573F0 000522F0  40 80 00 14 */	bge lbl_80057404
lbl_800573F4:
/* 800573F4 000522F4  C4 03 FF F8 */	lfsu f0, -8(r3)
/* 800573F8 000522F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800573FC 000522FC  41 80 FF F8 */	blt lbl_800573F4
/* 80057400 00052300  48 00 00 18 */	b lbl_80057418
lbl_80057404:
/* 80057404 00052304  C4 03 00 08 */	lfsu f0, 8(r3)
/* 80057408 00052308  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8005740C 0005230C  4C 40 13 82 */	cror 2, 0, 2
/* 80057410 00052310  41 82 FF F4 */	beq lbl_80057404
/* 80057414 00052314  38 63 FF F8 */	addi r3, r3, -8
lbl_80057418:
/* 80057418 00052318  38 21 00 10 */	addi r1, r1, 0x10
/* 8005741C 0005231C  4E 80 00 20 */	blr 

.global GetAnmResult__Q34nw4r3g3d12ResAnmTexPatCFPQ34nw4r3g3d15TexPatAnmResultUlf
GetAnmResult__Q34nw4r3g3d12ResAnmTexPatCFPQ34nw4r3g3d15TexPatAnmResultUlf:
/* 80057420 00052320  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80057424 00052324  7C 08 02 A6 */	mflr r0
/* 80057428 00052328  90 01 00 44 */	stw r0, 0x44(r1)
/* 8005742C 0005232C  39 61 00 38 */	addi r11, r1, 0x38
/* 80057430 00052330  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 80057434 00052334  48 05 A9 01 */	bl _savegpr_23
/* 80057438 00052338  80 C3 00 00 */	lwz r6, 0(r3)
/* 8005743C 0005233C  FF E0 08 90 */	fmr f31, f1
/* 80057440 00052340  7C 98 23 78 */	mr r24, r4
/* 80057444 00052344  80 06 00 10 */	lwz r0, 0x10(r6)
/* 80057448 00052348  2C 00 00 00 */	cmpwi r0, 0
/* 8005744C 0005234C  41 82 00 0C */	beq lbl_80057458
/* 80057450 00052350  7C 06 02 14 */	add r0, r6, r0
/* 80057454 00052354  48 00 00 08 */	b lbl_8005745C
lbl_80057458:
/* 80057458 00052358  38 00 00 00 */	li r0, 0
lbl_8005745C:
/* 8005745C 0005235C  2C 00 00 00 */	cmpwi r0, 0
/* 80057460 00052360  41 82 00 2C */	beq lbl_8005748C
/* 80057464 00052364  38 A5 00 01 */	addi r5, r5, 1
/* 80057468 00052368  54 A5 20 36 */	slwi r5, r5, 4
/* 8005746C 0005236C  7C A0 2A 14 */	add r5, r0, r5
/* 80057470 00052370  80 A5 00 14 */	lwz r5, 0x14(r5)
/* 80057474 00052374  2C 05 00 00 */	cmpwi r5, 0
/* 80057478 00052378  41 82 00 0C */	beq lbl_80057484
/* 8005747C 0005237C  7F E0 2A 14 */	add r31, r0, r5
/* 80057480 00052380  48 00 00 10 */	b lbl_80057490
lbl_80057484:
/* 80057484 00052384  3B E0 00 00 */	li r31, 0
/* 80057488 00052388  48 00 00 08 */	b lbl_80057490
lbl_8005748C:
/* 8005748C 0005238C  3B E0 00 00 */	li r31, 0
lbl_80057490:
/* 80057490 00052390  80 63 00 00 */	lwz r3, 0(r3)
/* 80057494 00052394  3B 7F 00 08 */	addi r27, r31, 8
/* 80057498 00052398  83 5F 00 04 */	lwz r26, 4(r31)
/* 8005749C 0005239C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 800574A0 000523A0  2C 00 00 00 */	cmpwi r0, 0
/* 800574A4 000523A4  41 82 00 0C */	beq lbl_800574B0
/* 800574A8 000523A8  7F C3 02 14 */	add r30, r3, r0
/* 800574AC 000523AC  48 00 00 08 */	b lbl_800574B4
lbl_800574B0:
/* 800574B0 000523B0  3B C0 00 00 */	li r30, 0
lbl_800574B4:
/* 800574B4 000523B4  80 03 00 20 */	lwz r0, 0x20(r3)
/* 800574B8 000523B8  2C 00 00 00 */	cmpwi r0, 0
/* 800574BC 000523BC  41 82 00 0C */	beq lbl_800574C8
/* 800574C0 000523C0  7F A3 02 14 */	add r29, r3, r0
/* 800574C4 000523C4  48 00 00 08 */	b lbl_800574CC
lbl_800574C8:
/* 800574C8 000523C8  3B A0 00 00 */	li r29, 0
lbl_800574CC:
/* 800574CC 000523CC  38 00 00 00 */	li r0, 0
/* 800574D0 000523D0  7F 1C C3 78 */	mr r28, r24
/* 800574D4 000523D4  98 04 00 00 */	stb r0, 0(r4)
/* 800574D8 000523D8  3B 20 00 00 */	li r25, 0
/* 800574DC 000523DC  3A E0 00 01 */	li r23, 1
/* 800574E0 000523E0  98 04 00 01 */	stb r0, 1(r4)
lbl_800574E4:
/* 800574E4 000523E4  57 40 07 FF */	clrlwi. r0, r26, 0x1f
/* 800574E8 000523E8  41 82 00 88 */	beq lbl_80057570
/* 800574EC 000523EC  57 40 07 BD */	rlwinm. r0, r26, 0, 0x1e, 0x1e
/* 800574F0 000523F0  41 82 00 10 */	beq lbl_80057500
/* 800574F4 000523F4  A0 9B 00 00 */	lhz r4, 0(r27)
/* 800574F8 000523F8  A0 7B 00 02 */	lhz r3, 2(r27)
/* 800574FC 000523FC  48 00 00 1C */	b lbl_80057518
lbl_80057500:
/* 80057500 00052400  80 1B 00 00 */	lwz r0, 0(r27)
/* 80057504 00052404  FC 20 F8 90 */	fmr f1, f31
/* 80057508 00052408  7C 60 FA 14 */	add r3, r0, r31
/* 8005750C 0005240C  4B FF FE 69 */	bl SearchFrame__Q34nw4r3g3d30$$2unnamed$$2g3d_resanmtexpat_cpp$$2FPCQ34nw4r3g3d19ResAnmTexPatAnmDataf
/* 80057510 00052410  A0 83 00 04 */	lhz r4, 4(r3)
/* 80057514 00052414  A0 63 00 06 */	lhz r3, 6(r3)
lbl_80057518:
/* 80057518 00052418  57 40 07 7B */	rlwinm. r0, r26, 0, 0x1d, 0x1d
/* 8005751C 0005241C  7E E5 C8 30 */	slw r5, r23, r25
/* 80057520 00052420  41 82 00 24 */	beq lbl_80057544
/* 80057524 00052424  54 80 10 3A */	slwi r0, r4, 2
/* 80057528 00052428  7C 1E 00 2E */	lwzx r0, r30, r0
/* 8005752C 0005242C  2C 00 00 00 */	cmpwi r0, 0
/* 80057530 00052430  41 82 00 14 */	beq lbl_80057544
/* 80057534 00052434  90 1C 00 04 */	stw r0, 4(r28)
/* 80057538 00052438  88 18 00 00 */	lbz r0, 0(r24)
/* 8005753C 0005243C  7C 00 2B 78 */	or r0, r0, r5
/* 80057540 00052440  98 18 00 00 */	stb r0, 0(r24)
lbl_80057544:
/* 80057544 00052444  57 40 07 39 */	rlwinm. r0, r26, 0, 0x1c, 0x1c
/* 80057548 00052448  41 82 00 24 */	beq lbl_8005756C
/* 8005754C 0005244C  54 60 10 3A */	slwi r0, r3, 2
/* 80057550 00052450  7C 1D 00 2E */	lwzx r0, r29, r0
/* 80057554 00052454  2C 00 00 00 */	cmpwi r0, 0
/* 80057558 00052458  41 82 00 14 */	beq lbl_8005756C
/* 8005755C 0005245C  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80057560 00052460  88 18 00 01 */	lbz r0, 1(r24)
/* 80057564 00052464  7C 00 2B 78 */	or r0, r0, r5
/* 80057568 00052468  98 18 00 01 */	stb r0, 1(r24)
lbl_8005756C:
/* 8005756C 0005246C  3B 7B 00 04 */	addi r27, r27, 4
lbl_80057570:
/* 80057570 00052470  3B 39 00 01 */	addi r25, r25, 1
/* 80057574 00052474  57 5A E1 3E */	srwi r26, r26, 4
/* 80057578 00052478  2C 19 00 08 */	cmpwi r25, 8
/* 8005757C 0005247C  3B 9C 00 04 */	addi r28, r28, 4
/* 80057580 00052480  41 80 FF 64 */	blt lbl_800574E4
/* 80057584 00052484  39 61 00 38 */	addi r11, r1, 0x38
/* 80057588 00052488  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 8005758C 0005248C  48 05 A7 F5 */	bl _restgpr_23
/* 80057590 00052490  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80057594 00052494  7C 08 03 A6 */	mtlr r0
/* 80057598 00052498  38 21 00 40 */	addi r1, r1, 0x40
/* 8005759C 0005249C  4E 80 00 20 */	blr 

.global Bind__Q34nw4r3g3d12ResAnmTexPatFQ34nw4r3g3d7ResFile
Bind__Q34nw4r3g3d12ResAnmTexPatFQ34nw4r3g3d7ResFile:
/* 800575A0 000524A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800575A4 000524A4  7C 08 02 A6 */	mflr r0
/* 800575A8 000524A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 800575AC 000524AC  39 61 00 40 */	addi r11, r1, 0x40
/* 800575B0 000524B0  48 05 A7 81 */	bl _savegpr_22
/* 800575B4 000524B4  80 63 00 00 */	lwz r3, 0(r3)
/* 800575B8 000524B8  7C 9C 23 78 */	mr r28, r4
/* 800575BC 000524BC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 800575C0 000524C0  A3 E3 00 30 */	lhz r31, 0x30(r3)
/* 800575C4 000524C4  2C 00 00 00 */	cmpwi r0, 0
/* 800575C8 000524C8  A3 C3 00 32 */	lhz r30, 0x32(r3)
/* 800575CC 000524CC  41 82 00 0C */	beq lbl_800575D8
/* 800575D0 000524D0  7F 63 02 14 */	add r27, r3, r0
/* 800575D4 000524D4  48 00 00 08 */	b lbl_800575DC
lbl_800575D8:
/* 800575D8 000524D8  3B 60 00 00 */	li r27, 0
lbl_800575DC:
/* 800575DC 000524DC  80 03 00 18 */	lwz r0, 0x18(r3)
/* 800575E0 000524E0  2C 00 00 00 */	cmpwi r0, 0
/* 800575E4 000524E4  41 82 00 0C */	beq lbl_800575F0
/* 800575E8 000524E8  7F 43 02 14 */	add r26, r3, r0
/* 800575EC 000524EC  48 00 00 08 */	b lbl_800575F4
lbl_800575F0:
/* 800575F0 000524F0  3B 40 00 00 */	li r26, 0
lbl_800575F4:
/* 800575F4 000524F4  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 800575F8 000524F8  2C 00 00 00 */	cmpwi r0, 0
/* 800575FC 000524FC  41 82 00 0C */	beq lbl_80057608
/* 80057600 00052500  7F 03 02 14 */	add r24, r3, r0
/* 80057604 00052504  48 00 00 08 */	b lbl_8005760C
lbl_80057608:
/* 80057608 00052508  3B 00 00 00 */	li r24, 0
lbl_8005760C:
/* 8005760C 0005250C  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80057610 00052510  2C 00 00 00 */	cmpwi r0, 0
/* 80057614 00052514  41 82 00 0C */	beq lbl_80057620
/* 80057618 00052518  7F 23 02 14 */	add r25, r3, r0
/* 8005761C 0005251C  48 00 00 08 */	b lbl_80057624
lbl_80057620:
/* 80057620 00052520  3B 20 00 00 */	li r25, 0
lbl_80057624:
/* 80057624 00052524  7F 77 DB 78 */	mr r23, r27
/* 80057628 00052528  3B A0 00 00 */	li r29, 0
/* 8005762C 0005252C  3A C0 00 00 */	li r22, 0
/* 80057630 00052530  48 00 00 50 */	b lbl_80057680
lbl_80057634:
/* 80057634 00052534  80 18 00 00 */	lwz r0, 0(r24)
/* 80057638 00052538  2C 00 00 00 */	cmpwi r0, 0
/* 8005763C 0005253C  41 82 00 0C */	beq lbl_80057648
/* 80057640 00052540  3B BD 00 01 */	addi r29, r29, 1
/* 80057644 00052544  48 00 00 30 */	b lbl_80057674
lbl_80057648:
/* 80057648 00052548  80 17 00 00 */	lwz r0, 0(r23)
/* 8005764C 0005254C  7F 83 E3 78 */	mr r3, r28
/* 80057650 00052550  38 81 00 0C */	addi r4, r1, 0xc
/* 80057654 00052554  7C BB 02 14 */	add r5, r27, r0
/* 80057658 00052558  38 05 FF FC */	addi r0, r5, -4
/* 8005765C 0005255C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80057660 00052560  4B FF 97 65 */	bl GetResTex__Q34nw4r3g3d7ResFileCFQ34nw4r3g3d7ResName
/* 80057664 00052564  2C 03 00 00 */	cmpwi r3, 0
/* 80057668 00052568  41 82 00 0C */	beq lbl_80057674
/* 8005766C 0005256C  90 78 00 00 */	stw r3, 0(r24)
/* 80057670 00052570  3B BD 00 01 */	addi r29, r29, 1
lbl_80057674:
/* 80057674 00052574  3B 18 00 04 */	addi r24, r24, 4
/* 80057678 00052578  3A F7 00 04 */	addi r23, r23, 4
/* 8005767C 0005257C  3A D6 00 01 */	addi r22, r22, 1
lbl_80057680:
/* 80057680 00052580  7C 16 F8 00 */	cmpw r22, r31
/* 80057684 00052584  41 80 FF B0 */	blt lbl_80057634
/* 80057688 00052588  7F 5B D3 78 */	mr r27, r26
/* 8005768C 0005258C  3A C0 00 00 */	li r22, 0
/* 80057690 00052590  48 00 00 50 */	b lbl_800576E0
lbl_80057694:
/* 80057694 00052594  80 19 00 00 */	lwz r0, 0(r25)
/* 80057698 00052598  2C 00 00 00 */	cmpwi r0, 0
/* 8005769C 0005259C  41 82 00 0C */	beq lbl_800576A8
/* 800576A0 000525A0  3B BD 00 01 */	addi r29, r29, 1
/* 800576A4 000525A4  48 00 00 30 */	b lbl_800576D4
lbl_800576A8:
/* 800576A8 000525A8  80 1B 00 00 */	lwz r0, 0(r27)
/* 800576AC 000525AC  7F 83 E3 78 */	mr r3, r28
/* 800576B0 000525B0  38 81 00 08 */	addi r4, r1, 8
/* 800576B4 000525B4  7C BA 02 14 */	add r5, r26, r0
/* 800576B8 000525B8  38 05 FF FC */	addi r0, r5, -4
/* 800576BC 000525BC  90 01 00 08 */	stw r0, 8(r1)
/* 800576C0 000525C0  4B FF 95 8D */	bl GetResPltt__Q34nw4r3g3d7ResFileCFQ34nw4r3g3d7ResName
/* 800576C4 000525C4  2C 03 00 00 */	cmpwi r3, 0
/* 800576C8 000525C8  41 82 00 0C */	beq lbl_800576D4
/* 800576CC 000525CC  90 79 00 00 */	stw r3, 0(r25)
/* 800576D0 000525D0  3B BD 00 01 */	addi r29, r29, 1
lbl_800576D4:
/* 800576D4 000525D4  3B 39 00 04 */	addi r25, r25, 4
/* 800576D8 000525D8  3B 7B 00 04 */	addi r27, r27, 4
/* 800576DC 000525DC  3A D6 00 01 */	addi r22, r22, 1
lbl_800576E0:
/* 800576E0 000525E0  7C 16 F0 00 */	cmpw r22, r30
/* 800576E4 000525E4  41 80 FF B0 */	blt lbl_80057694
/* 800576E8 000525E8  7C 1F F2 14 */	add r0, r31, r30
/* 800576EC 000525EC  39 61 00 40 */	addi r11, r1, 0x40
/* 800576F0 000525F0  7C 1D 00 50 */	subf r0, r29, r0
/* 800576F4 000525F4  7C 00 00 34 */	cntlzw r0, r0
/* 800576F8 000525F8  54 03 D9 7E */	srwi r3, r0, 5
/* 800576FC 000525FC  48 05 A6 81 */	bl _restgpr_22
/* 80057700 00052600  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80057704 00052604  7C 08 03 A6 */	mtlr r0
/* 80057708 00052608  38 21 00 40 */	addi r1, r1, 0x40
/* 8005770C 0005260C  4E 80 00 20 */	blr 

.global Release__Q34nw4r3g3d12ResAnmTexPatFv
Release__Q34nw4r3g3d12ResAnmTexPatFv:
/* 80057710 00052610  80 83 00 00 */	lwz r4, 0(r3)
/* 80057714 00052614  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80057718 00052618  A1 24 00 30 */	lhz r9, 0x30(r4)
/* 8005771C 0005261C  2C 00 00 00 */	cmpwi r0, 0
/* 80057720 00052620  A0 64 00 32 */	lhz r3, 0x32(r4)
/* 80057724 00052624  41 82 00 0C */	beq lbl_80057730
/* 80057728 00052628  7C A4 02 14 */	add r5, r4, r0
/* 8005772C 0005262C  48 00 00 08 */	b lbl_80057734
lbl_80057730:
/* 80057730 00052630  38 A0 00 00 */	li r5, 0
lbl_80057734:
/* 80057734 00052634  80 04 00 20 */	lwz r0, 0x20(r4)
/* 80057738 00052638  2C 00 00 00 */	cmpwi r0, 0
/* 8005773C 0005263C  41 82 00 0C */	beq lbl_80057748
/* 80057740 00052640  7C C4 02 14 */	add r6, r4, r0
/* 80057744 00052644  48 00 00 08 */	b lbl_8005774C
lbl_80057748:
/* 80057748 00052648  38 C0 00 00 */	li r6, 0
lbl_8005774C:
/* 8005774C 0005264C  2C 89 00 00 */	cmpwi cr1, r9, 0
/* 80057750 00052650  39 40 00 00 */	li r10, 0
/* 80057754 00052654  40 85 00 A8 */	ble cr1, lbl_800577FC
/* 80057758 00052658  40 85 00 A4 */	ble cr1, lbl_800577FC
/* 8005775C 0005265C  2C 09 00 08 */	cmpwi r9, 8
/* 80057760 00052660  38 E9 FF F8 */	addi r7, r9, -8
/* 80057764 00052664  40 81 00 70 */	ble lbl_800577D4
/* 80057768 00052668  39 00 00 00 */	li r8, 0
/* 8005776C 0005266C  41 84 00 18 */	blt cr1, lbl_80057784
/* 80057770 00052670  3C 80 80 00 */	lis r4, 0x7FFFFFFE@ha
/* 80057774 00052674  38 04 FF FE */	addi r0, r4, 0x7FFFFFFE@l
/* 80057778 00052678  7C 09 00 00 */	cmpw r9, r0
/* 8005777C 0005267C  41 81 00 08 */	bgt lbl_80057784
/* 80057780 00052680  39 00 00 01 */	li r8, 1
lbl_80057784:
/* 80057784 00052684  2C 08 00 00 */	cmpwi r8, 0
/* 80057788 00052688  41 82 00 4C */	beq lbl_800577D4
/* 8005778C 0005268C  38 07 00 07 */	addi r0, r7, 7
/* 80057790 00052690  7C A8 2B 78 */	mr r8, r5
/* 80057794 00052694  54 00 E8 FE */	srwi r0, r0, 3
/* 80057798 00052698  38 80 00 00 */	li r4, 0
/* 8005779C 0005269C  7C 09 03 A6 */	mtctr r0
/* 800577A0 000526A0  2C 07 00 00 */	cmpwi r7, 0
/* 800577A4 000526A4  40 81 00 30 */	ble lbl_800577D4
lbl_800577A8:
/* 800577A8 000526A8  90 88 00 00 */	stw r4, 0(r8)
/* 800577AC 000526AC  39 4A 00 08 */	addi r10, r10, 8
/* 800577B0 000526B0  90 88 00 04 */	stw r4, 4(r8)
/* 800577B4 000526B4  90 88 00 08 */	stw r4, 8(r8)
/* 800577B8 000526B8  90 88 00 0C */	stw r4, 0xc(r8)
/* 800577BC 000526BC  90 88 00 10 */	stw r4, 0x10(r8)
/* 800577C0 000526C0  90 88 00 14 */	stw r4, 0x14(r8)
/* 800577C4 000526C4  90 88 00 18 */	stw r4, 0x18(r8)
/* 800577C8 000526C8  90 88 00 1C */	stw r4, 0x1c(r8)
/* 800577CC 000526CC  39 08 00 20 */	addi r8, r8, 0x20
/* 800577D0 000526D0  42 00 FF D8 */	bdnz lbl_800577A8
lbl_800577D4:
/* 800577D4 000526D4  55 44 10 3A */	slwi r4, r10, 2
/* 800577D8 000526D8  7C 0A 48 50 */	subf r0, r10, r9
/* 800577DC 000526DC  7C A5 22 14 */	add r5, r5, r4
/* 800577E0 000526E0  38 80 00 00 */	li r4, 0
/* 800577E4 000526E4  7C 09 03 A6 */	mtctr r0
/* 800577E8 000526E8  7C 0A 48 00 */	cmpw r10, r9
/* 800577EC 000526EC  40 80 00 10 */	bge lbl_800577FC
lbl_800577F0:
/* 800577F0 000526F0  90 85 00 00 */	stw r4, 0(r5)
/* 800577F4 000526F4  38 A5 00 04 */	addi r5, r5, 4
/* 800577F8 000526F8  42 00 FF F8 */	bdnz lbl_800577F0
lbl_800577FC:
/* 800577FC 000526FC  2C 83 00 00 */	cmpwi cr1, r3, 0
/* 80057800 00052700  39 00 00 00 */	li r8, 0
/* 80057804 00052704  4C 85 00 20 */	blelr cr1
/* 80057808 00052708  4C 85 00 20 */	blelr cr1
/* 8005780C 0005270C  2C 03 00 08 */	cmpwi r3, 8
/* 80057810 00052710  38 A3 FF F8 */	addi r5, r3, -8
/* 80057814 00052714  40 81 00 70 */	ble lbl_80057884
/* 80057818 00052718  38 E0 00 00 */	li r7, 0
/* 8005781C 0005271C  41 84 00 18 */	blt cr1, lbl_80057834
/* 80057820 00052720  3C 80 80 00 */	lis r4, 0x7FFFFFFE@ha
/* 80057824 00052724  38 04 FF FE */	addi r0, r4, 0x7FFFFFFE@l
/* 80057828 00052728  7C 03 00 00 */	cmpw r3, r0
/* 8005782C 0005272C  41 81 00 08 */	bgt lbl_80057834
/* 80057830 00052730  38 E0 00 01 */	li r7, 1
lbl_80057834:
/* 80057834 00052734  2C 07 00 00 */	cmpwi r7, 0
/* 80057838 00052738  41 82 00 4C */	beq lbl_80057884
/* 8005783C 0005273C  38 05 00 07 */	addi r0, r5, 7
/* 80057840 00052740  7C C7 33 78 */	mr r7, r6
/* 80057844 00052744  54 00 E8 FE */	srwi r0, r0, 3
/* 80057848 00052748  38 80 00 00 */	li r4, 0
/* 8005784C 0005274C  7C 09 03 A6 */	mtctr r0
/* 80057850 00052750  2C 05 00 00 */	cmpwi r5, 0
/* 80057854 00052754  40 81 00 30 */	ble lbl_80057884
lbl_80057858:
/* 80057858 00052758  90 87 00 00 */	stw r4, 0(r7)
/* 8005785C 0005275C  39 08 00 08 */	addi r8, r8, 8
/* 80057860 00052760  90 87 00 04 */	stw r4, 4(r7)
/* 80057864 00052764  90 87 00 08 */	stw r4, 8(r7)
/* 80057868 00052768  90 87 00 0C */	stw r4, 0xc(r7)
/* 8005786C 0005276C  90 87 00 10 */	stw r4, 0x10(r7)
/* 80057870 00052770  90 87 00 14 */	stw r4, 0x14(r7)
/* 80057874 00052774  90 87 00 18 */	stw r4, 0x18(r7)
/* 80057878 00052778  90 87 00 1C */	stw r4, 0x1c(r7)
/* 8005787C 0005277C  38 E7 00 20 */	addi r7, r7, 0x20
/* 80057880 00052780  42 00 FF D8 */	bdnz lbl_80057858
lbl_80057884:
/* 80057884 00052784  55 04 10 3A */	slwi r4, r8, 2
/* 80057888 00052788  7C 08 18 50 */	subf r0, r8, r3
/* 8005788C 0005278C  7C A6 22 14 */	add r5, r6, r4
/* 80057890 00052790  38 80 00 00 */	li r4, 0
/* 80057894 00052794  7C 09 03 A6 */	mtctr r0
/* 80057898 00052798  7C 08 18 00 */	cmpw r8, r3
/* 8005789C 0005279C  4C 80 00 20 */	bgelr 
lbl_800578A0:
/* 800578A0 000527A0  90 85 00 00 */	stw r4, 0(r5)
/* 800578A4 000527A4  38 A5 00 04 */	addi r5, r5, 4
/* 800578A8 000527A8  42 00 FF F8 */	bdnz lbl_800578A0
/* 800578AC 000527AC  4E 80 00 20 */	blr 
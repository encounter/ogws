.include "macros.inc"

.section .sbss, "wa"
.balign 0x8
__EUARTInitialized:
	.skip 0x4
__EUARTLastErrorCode:
	.skip 0x4
__EUARTSendStop:
	.skip 0x4
Enabled:
	.skip 0x4

.section .text, "ax"
.global EUARTInit
EUARTInit:
/* 800D77AC 000D26AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D77B0 000D26B0  7C 08 02 A6 */	mflr r0
/* 800D77B4 000D26B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800D77B8 000D26B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800D77BC 000D26BC  80 0D 9A A0 */	lwz r0, __EUARTInitialized-_SDA_BASE_(r13)
/* 800D77C0 000D26C0  2C 00 00 00 */	cmpwi r0, 0
/* 800D77C4 000D26C4  41 82 00 0C */	beq lbl_800D77D0
/* 800D77C8 000D26C8  38 60 00 01 */	li r3, 1
/* 800D77CC 000D26CC  48 00 00 C8 */	b lbl_800D7894
lbl_800D77D0:
/* 800D77D0 000D26D0  48 01 47 4D */	bl OSGetConsoleType
/* 800D77D4 000D26D4  54 60 00 C7 */	rlwinm. r0, r3, 0, 3, 3
/* 800D77D8 000D26D8  40 82 00 14 */	bne lbl_800D77EC
/* 800D77DC 000D26DC  38 00 00 02 */	li r0, 2
/* 800D77E0 000D26E0  38 60 00 00 */	li r3, 0
/* 800D77E4 000D26E4  90 0D 9A A4 */	stw r0, __EUARTLastErrorCode-_SDA_BASE_(r13)
/* 800D77E8 000D26E8  48 00 00 AC */	b lbl_800D7894
lbl_800D77EC:
/* 800D77EC 000D26EC  48 01 A0 D5 */	bl OSDisableInterrupts
/* 800D77F0 000D26F0  38 00 00 F2 */	li r0, 0xf2
/* 800D77F4 000D26F4  7C 7F 1B 78 */	mr r31, r3
/* 800D77F8 000D26F8  98 01 00 08 */	stb r0, 8(r1)
/* 800D77FC 000D26FC  38 C1 00 08 */	addi r6, r1, 8
/* 800D7800 000D2700  38 60 00 00 */	li r3, 0
/* 800D7804 000D2704  38 80 00 01 */	li r4, 1
/* 800D7808 000D2708  3C A0 B0 00 */	lis r5, 0xb000
/* 800D780C 000D270C  38 E0 00 01 */	li r7, 1
/* 800D7810 000D2710  48 00 1E D5 */	bl EXIWriteReg
/* 800D7814 000D2714  2C 03 00 00 */	cmpwi r3, 0
/* 800D7818 000D2718  40 82 00 1C */	bne lbl_800D7834
/* 800D781C 000D271C  38 00 00 05 */	li r0, 5
/* 800D7820 000D2720  7F E3 FB 78 */	mr r3, r31
/* 800D7824 000D2724  90 0D 9A A4 */	stw r0, __EUARTLastErrorCode-_SDA_BASE_(r13)
/* 800D7828 000D2728  48 01 A0 C1 */	bl OSRestoreInterrupts
/* 800D782C 000D272C  38 60 00 00 */	li r3, 0
/* 800D7830 000D2730  48 00 00 64 */	b lbl_800D7894
lbl_800D7834:
/* 800D7834 000D2734  38 00 00 F3 */	li r0, 0xf3
/* 800D7838 000D2738  38 C1 00 08 */	addi r6, r1, 8
/* 800D783C 000D273C  98 01 00 08 */	stb r0, 8(r1)
/* 800D7840 000D2740  38 60 00 00 */	li r3, 0
/* 800D7844 000D2744  38 80 00 01 */	li r4, 1
/* 800D7848 000D2748  3C A0 B0 00 */	lis r5, 0xb000
/* 800D784C 000D274C  38 E0 00 01 */	li r7, 1
/* 800D7850 000D2750  48 00 1E 95 */	bl EXIWriteReg
/* 800D7854 000D2754  2C 03 00 00 */	cmpwi r3, 0
/* 800D7858 000D2758  40 82 00 1C */	bne lbl_800D7874
/* 800D785C 000D275C  38 00 00 05 */	li r0, 5
/* 800D7860 000D2760  7F E3 FB 78 */	mr r3, r31
/* 800D7864 000D2764  90 0D 9A A4 */	stw r0, __EUARTLastErrorCode-_SDA_BASE_(r13)
/* 800D7868 000D2768  48 01 A0 81 */	bl OSRestoreInterrupts
/* 800D786C 000D276C  38 60 00 00 */	li r3, 0
/* 800D7870 000D2770  48 00 00 24 */	b lbl_800D7894
lbl_800D7874:
/* 800D7874 000D2774  7F E3 FB 78 */	mr r3, r31
/* 800D7878 000D2778  48 01 A0 71 */	bl OSRestoreInterrupts
/* 800D787C 000D277C  38 00 00 00 */	li r0, 0
/* 800D7880 000D2780  38 60 00 01 */	li r3, 1
/* 800D7884 000D2784  90 6D 9A A0 */	stw r3, __EUARTInitialized-_SDA_BASE_(r13)
/* 800D7888 000D2788  38 60 00 01 */	li r3, 1
/* 800D788C 000D278C  90 0D 9A A4 */	stw r0, __EUARTLastErrorCode-_SDA_BASE_(r13)
/* 800D7890 000D2790  90 0D 9A A8 */	stw r0, __EUARTSendStop-_SDA_BASE_(r13)
lbl_800D7894:
/* 800D7894 000D2794  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D7898 000D2798  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800D789C 000D279C  7C 08 03 A6 */	mtlr r0
/* 800D78A0 000D27A0  38 21 00 20 */	addi r1, r1, 0x20
/* 800D78A4 000D27A4  4E 80 00 20 */	blr 

.global InitializeUART
InitializeUART:
/* 800D78A8 000D27A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D78AC 000D27AC  7C 08 02 A6 */	mflr r0
/* 800D78B0 000D27B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D78B4 000D27B4  48 01 46 69 */	bl OSGetConsoleType
/* 800D78B8 000D27B8  54 60 00 C7 */	rlwinm. r0, r3, 0, 3, 3
/* 800D78BC 000D27BC  40 82 00 14 */	bne lbl_800D78D0
/* 800D78C0 000D27C0  38 00 00 00 */	li r0, 0
/* 800D78C4 000D27C4  38 60 00 02 */	li r3, 2
/* 800D78C8 000D27C8  90 0D 9A AC */	stw r0, Enabled-_SDA_BASE_(r13)
/* 800D78CC 000D27CC  48 00 00 14 */	b lbl_800D78E0
lbl_800D78D0:
/* 800D78D0 000D27D0  3C 80 A5 FF */	lis r4, 0xA5FF005A@ha
/* 800D78D4 000D27D4  38 60 00 00 */	li r3, 0
/* 800D78D8 000D27D8  38 04 00 5A */	addi r0, r4, 0xA5FF005A@l
/* 800D78DC 000D27DC  90 0D 9A AC */	stw r0, Enabled-_SDA_BASE_(r13)
lbl_800D78E0:
/* 800D78E0 000D27E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D78E4 000D27E4  7C 08 03 A6 */	mtlr r0
/* 800D78E8 000D27E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800D78EC 000D27EC  4E 80 00 20 */	blr 

.global WriteUARTN
WriteUARTN:
/* 800D78F0 000D27F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800D78F4 000D27F4  7C 08 02 A6 */	mflr r0
/* 800D78F8 000D27F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 800D78FC 000D27FC  39 61 00 30 */	addi r11, r1, 0x30
/* 800D7900 000D2800  4B FD A4 41 */	bl _savegpr_26
/* 800D7904 000D2804  80 AD 9A AC */	lwz r5, Enabled-_SDA_BASE_(r13)
/* 800D7908 000D2808  7C 7E 1B 78 */	mr r30, r3
/* 800D790C 000D280C  7C 9F 23 78 */	mr r31, r4
/* 800D7910 000D2810  3C 05 5A 01 */	addis r0, r5, 0x5a01
/* 800D7914 000D2814  28 00 00 5A */	cmplwi r0, 0x5a
/* 800D7918 000D2818  41 82 00 0C */	beq lbl_800D7924
/* 800D791C 000D281C  38 60 00 02 */	li r3, 2
/* 800D7920 000D2820  48 00 01 E4 */	b lbl_800D7B04
lbl_800D7924:
/* 800D7924 000D2824  80 0D 9A A0 */	lwz r0, __EUARTInitialized-_SDA_BASE_(r13)
/* 800D7928 000D2828  2C 00 00 00 */	cmpwi r0, 0
/* 800D792C 000D282C  40 82 00 18 */	bne lbl_800D7944
/* 800D7930 000D2830  4B FF FE 7D */	bl EUARTInit
/* 800D7934 000D2834  2C 03 00 00 */	cmpwi r3, 0
/* 800D7938 000D2838  40 82 00 0C */	bne lbl_800D7944
/* 800D793C 000D283C  38 60 00 02 */	li r3, 2
/* 800D7940 000D2840  48 00 01 C4 */	b lbl_800D7B04
lbl_800D7944:
/* 800D7944 000D2844  80 0D 9A A0 */	lwz r0, __EUARTInitialized-_SDA_BASE_(r13)
/* 800D7948 000D2848  2C 00 00 00 */	cmpwi r0, 0
/* 800D794C 000D284C  40 82 00 14 */	bne lbl_800D7960
/* 800D7950 000D2850  38 00 00 01 */	li r0, 1
/* 800D7954 000D2854  38 60 00 02 */	li r3, 2
/* 800D7958 000D2858  90 0D 9A A4 */	stw r0, __EUARTLastErrorCode-_SDA_BASE_(r13)
/* 800D795C 000D285C  48 00 01 A8 */	b lbl_800D7B04
lbl_800D7960:
/* 800D7960 000D2860  38 60 00 00 */	li r3, 0
/* 800D7964 000D2864  38 80 00 01 */	li r4, 1
/* 800D7968 000D2868  38 A0 00 00 */	li r5, 0
/* 800D796C 000D286C  48 00 14 9D */	bl EXILock
/* 800D7970 000D2870  2C 03 00 00 */	cmpwi r3, 0
/* 800D7974 000D2874  40 82 00 0C */	bne lbl_800D7980
/* 800D7978 000D2878  38 60 00 00 */	li r3, 0
/* 800D797C 000D287C  48 00 01 88 */	b lbl_800D7B04
lbl_800D7980:
/* 800D7980 000D2880  7F C4 F3 78 */	mr r4, r30
/* 800D7984 000D2884  38 60 00 0D */	li r3, 0xd
/* 800D7988 000D2888  48 00 00 18 */	b lbl_800D79A0
lbl_800D798C:
/* 800D798C 000D288C  88 04 00 00 */	lbz r0, 0(r4)
/* 800D7990 000D2890  2C 00 00 0A */	cmpwi r0, 0xa
/* 800D7994 000D2894  40 82 00 08 */	bne lbl_800D799C
/* 800D7998 000D2898  98 64 00 00 */	stb r3, 0(r4)
lbl_800D799C:
/* 800D799C 000D289C  38 84 00 01 */	addi r4, r4, 1
lbl_800D79A0:
/* 800D79A0 000D28A0  7C 1E 20 50 */	subf r0, r30, r4
/* 800D79A4 000D28A4  7C 00 F8 40 */	cmplw r0, r31
/* 800D79A8 000D28A8  41 80 FF E4 */	blt lbl_800D798C
/* 800D79AC 000D28AC  3C 60 B0 00 */	lis r3, 0xB0000100@ha
/* 800D79B0 000D28B0  83 82 96 40 */	lwz r28, __EXIFreq-_SDA2_BASE_(r2)
/* 800D79B4 000D28B4  38 03 01 00 */	addi r0, r3, 0xB0000100@l
/* 800D79B8 000D28B8  3B 40 00 00 */	li r26, 0
/* 800D79BC 000D28BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D79C0 000D28C0  3F A0 30 00 */	lis r29, 0x3000
/* 800D79C4 000D28C4  48 00 01 2C */	b lbl_800D7AF0
lbl_800D79C8:
/* 800D79C8 000D28C8  7F 85 E3 78 */	mr r5, r28
/* 800D79CC 000D28CC  38 60 00 00 */	li r3, 0
/* 800D79D0 000D28D0  38 80 00 01 */	li r4, 1
/* 800D79D4 000D28D4  48 00 0C A1 */	bl EXISelect
/* 800D79D8 000D28D8  2C 03 00 00 */	cmpwi r3, 0
/* 800D79DC 000D28DC  40 82 00 0C */	bne lbl_800D79E8
/* 800D79E0 000D28E0  3B 60 FF FF */	li r27, -1
/* 800D79E4 000D28E4  48 00 00 60 */	b lbl_800D7A44
lbl_800D79E8:
/* 800D79E8 000D28E8  38 1D 01 00 */	addi r0, r29, 0x100
/* 800D79EC 000D28EC  38 81 00 08 */	addi r4, r1, 8
/* 800D79F0 000D28F0  90 01 00 08 */	stw r0, 8(r1)
/* 800D79F4 000D28F4  38 60 00 00 */	li r3, 0
/* 800D79F8 000D28F8  38 A0 00 04 */	li r5, 4
/* 800D79FC 000D28FC  38 C0 00 01 */	li r6, 1
/* 800D7A00 000D2900  38 E0 00 00 */	li r7, 0
/* 800D7A04 000D2904  48 00 02 09 */	bl EXIImm
/* 800D7A08 000D2908  38 60 00 00 */	li r3, 0
/* 800D7A0C 000D290C  48 00 06 19 */	bl EXISync
/* 800D7A10 000D2910  38 81 00 0C */	addi r4, r1, 0xc
/* 800D7A14 000D2914  38 60 00 00 */	li r3, 0
/* 800D7A18 000D2918  38 A0 00 04 */	li r5, 4
/* 800D7A1C 000D291C  38 C0 00 00 */	li r6, 0
/* 800D7A20 000D2920  38 E0 00 00 */	li r7, 0
/* 800D7A24 000D2924  48 00 01 E9 */	bl EXIImm
/* 800D7A28 000D2928  38 60 00 00 */	li r3, 0
/* 800D7A2C 000D292C  48 00 05 F9 */	bl EXISync
/* 800D7A30 000D2930  38 60 00 00 */	li r3, 0
/* 800D7A34 000D2934  48 00 0D 71 */	bl EXIDeselect
/* 800D7A38 000D2938  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800D7A3C 000D293C  54 00 46 BE */	rlwinm r0, r0, 8, 0x1a, 0x1f
/* 800D7A40 000D2940  23 60 00 20 */	subfic r27, r0, 0x20
lbl_800D7A44:
/* 800D7A44 000D2944  2C 1B 00 00 */	cmpwi r27, 0
/* 800D7A48 000D2948  40 80 00 0C */	bge lbl_800D7A54
/* 800D7A4C 000D294C  3B 40 00 03 */	li r26, 3
/* 800D7A50 000D2950  48 00 00 A8 */	b lbl_800D7AF8
lbl_800D7A54:
/* 800D7A54 000D2954  2C 1B 00 20 */	cmpwi r27, 0x20
/* 800D7A58 000D2958  40 82 00 98 */	bne lbl_800D7AF0
/* 800D7A5C 000D295C  7F 85 E3 78 */	mr r5, r28
/* 800D7A60 000D2960  38 60 00 00 */	li r3, 0
/* 800D7A64 000D2964  38 80 00 01 */	li r4, 1
/* 800D7A68 000D2968  48 00 0C 0D */	bl EXISelect
/* 800D7A6C 000D296C  2C 03 00 00 */	cmpwi r3, 0
/* 800D7A70 000D2970  40 82 00 0C */	bne lbl_800D7A7C
/* 800D7A74 000D2974  3B 40 00 03 */	li r26, 3
/* 800D7A78 000D2978  48 00 00 80 */	b lbl_800D7AF8
lbl_800D7A7C:
/* 800D7A7C 000D297C  38 81 00 14 */	addi r4, r1, 0x14
/* 800D7A80 000D2980  38 60 00 00 */	li r3, 0
/* 800D7A84 000D2984  38 A0 00 04 */	li r5, 4
/* 800D7A88 000D2988  38 C0 00 01 */	li r6, 1
/* 800D7A8C 000D298C  38 E0 00 00 */	li r7, 0
/* 800D7A90 000D2990  48 00 01 7D */	bl EXIImm
/* 800D7A94 000D2994  38 60 00 00 */	li r3, 0
/* 800D7A98 000D2998  48 00 05 8D */	bl EXISync
/* 800D7A9C 000D299C  48 00 00 3C */	b lbl_800D7AD8
lbl_800D7AA0:
/* 800D7AA0 000D29A0  88 1E 00 00 */	lbz r0, 0(r30)
/* 800D7AA4 000D29A4  38 81 00 10 */	addi r4, r1, 0x10
/* 800D7AA8 000D29A8  38 60 00 00 */	li r3, 0
/* 800D7AAC 000D29AC  38 A0 00 04 */	li r5, 4
/* 800D7AB0 000D29B0  54 00 C0 0E */	slwi r0, r0, 0x18
/* 800D7AB4 000D29B4  38 C0 00 01 */	li r6, 1
/* 800D7AB8 000D29B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 800D7ABC 000D29BC  38 E0 00 00 */	li r7, 0
/* 800D7AC0 000D29C0  48 00 01 4D */	bl EXIImm
/* 800D7AC4 000D29C4  38 60 00 00 */	li r3, 0
/* 800D7AC8 000D29C8  48 00 05 5D */	bl EXISync
/* 800D7ACC 000D29CC  3B DE 00 01 */	addi r30, r30, 1
/* 800D7AD0 000D29D0  3B 7B FF FF */	addi r27, r27, -1
/* 800D7AD4 000D29D4  3B FF FF FF */	addi r31, r31, -1
lbl_800D7AD8:
/* 800D7AD8 000D29D8  2C 1B 00 00 */	cmpwi r27, 0
/* 800D7ADC 000D29DC  40 81 00 0C */	ble lbl_800D7AE8
/* 800D7AE0 000D29E0  2C 1F 00 00 */	cmpwi r31, 0
/* 800D7AE4 000D29E4  40 82 FF BC */	bne lbl_800D7AA0
lbl_800D7AE8:
/* 800D7AE8 000D29E8  38 60 00 00 */	li r3, 0
/* 800D7AEC 000D29EC  48 00 0C B9 */	bl EXIDeselect
lbl_800D7AF0:
/* 800D7AF0 000D29F0  2C 1F 00 00 */	cmpwi r31, 0
/* 800D7AF4 000D29F4  40 82 FE D4 */	bne lbl_800D79C8
lbl_800D7AF8:
/* 800D7AF8 000D29F8  38 60 00 00 */	li r3, 0
/* 800D7AFC 000D29FC  48 00 14 09 */	bl EXIUnlock
/* 800D7B00 000D2A00  7F 43 D3 78 */	mr r3, r26
lbl_800D7B04:
/* 800D7B04 000D2A04  39 61 00 30 */	addi r11, r1, 0x30
/* 800D7B08 000D2A08  4B FD A2 85 */	bl _restgpr_26
/* 800D7B0C 000D2A0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800D7B10 000D2A10  7C 08 03 A6 */	mtlr r0
/* 800D7B14 000D2A14  38 21 00 30 */	addi r1, r1, 0x30
/* 800D7B18 000D2A18  4E 80 00 20 */	blr 
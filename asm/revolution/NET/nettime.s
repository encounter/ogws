.include "macros.inc"

.section .sbss, "wa"
.balign 0x8
whenCached$690:
	.skip 0x8

.section .text, "ax"
.global NETGetUniversalCalendar
NETGetUniversalCalendar:
/* 80141D1C 0013CC1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80141D20 0013CC20  7C 08 02 A6 */	mflr r0
/* 80141D24 0013CC24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80141D28 0013CC28  80 0D A0 70 */	lwz r0, whenCached$690-_SDA_BASE_(r13)
/* 80141D2C 0013CC2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80141D30 0013CC30  7C 7F 1B 78 */	mr r31, r3
/* 80141D34 0013CC34  80 6D A0 74 */	lwz r3, (whenCached$690+0x4)-_SDA_BASE_(r13)
/* 80141D38 0013CC38  7C 60 03 79 */	or. r0, r3, r0
/* 80141D3C 0013CC3C  41 82 00 48 */	beq lbl_80141D84
/* 80141D40 0013CC40  4B FB 38 E5 */	bl __OSGetSystemTime
/* 80141D44 0013CC44  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 80141D48 0013CC48  81 0D A0 74 */	lwz r8, (whenCached$690+0x4)-_SDA_BASE_(r13)
/* 80141D4C 0013CC4C  80 C5 00 F8 */	lwz r6, 0x800000F8@l(r5)
/* 80141D50 0013CC50  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 80141D54 0013CC54  80 ED A0 70 */	lwz r7, whenCached$690-_SDA_BASE_(r13)
/* 80141D58 0013CC58  38 00 00 00 */	li r0, 0
/* 80141D5C 0013CC5C  54 C3 F0 BE */	srwi r3, r6, 2
/* 80141D60 0013CC60  1C 63 00 3C */	mulli r3, r3, 0x3c
/* 80141D64 0013CC64  7C 68 18 14 */	addc r3, r8, r3
/* 80141D68 0013CC68  7C 07 01 14 */	adde r0, r7, r0
/* 80141D6C 0013CC6C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80141D70 0013CC70  7C 64 18 10 */	subfc r3, r4, r3
/* 80141D74 0013CC74  7C A5 01 10 */	subfe r5, r5, r0
/* 80141D78 0013CC78  7C A0 01 10 */	subfe r5, r0, r0
/* 80141D7C 0013CC7C  7C A5 00 D1 */	neg. r5, r5
/* 80141D80 0013CC80  41 82 00 18 */	beq lbl_80141D98
lbl_80141D84:
/* 80141D84 0013CC84  38 60 00 00 */	li r3, 0
/* 80141D88 0013CC88  48 00 88 11 */	bl NWC24iSynchronizeRtcCounter
/* 80141D8C 0013CC8C  4B FB 38 99 */	bl __OSGetSystemTime
/* 80141D90 0013CC90  90 8D A0 74 */	stw r4, (whenCached$690+0x4)-_SDA_BASE_(r13)
/* 80141D94 0013CC94  90 6D A0 70 */	stw r3, whenCached$690-_SDA_BASE_(r13)
lbl_80141D98:
/* 80141D98 0013CC98  38 61 00 08 */	addi r3, r1, 8
/* 80141D9C 0013CC9C  48 00 84 01 */	bl NWC24iGetUniversalTime
/* 80141DA0 0013CCA0  2C 03 00 00 */	cmpwi r3, 0
/* 80141DA4 0013CCA4  41 80 00 38 */	blt lbl_80141DDC
/* 80141DA8 0013CCA8  80 A1 00 08 */	lwz r5, 8(r1)
/* 80141DAC 0013CCAC  38 61 00 10 */	addi r3, r1, 0x10
/* 80141DB0 0013CCB0  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80141DB4 0013CCB4  48 00 7B 91 */	bl NWC24iEpochSecondsToDate
/* 80141DB8 0013CCB8  2C 03 00 00 */	cmpwi r3, 0
/* 80141DBC 0013CCBC  41 80 00 20 */	blt lbl_80141DDC
/* 80141DC0 0013CCC0  7F E3 FB 78 */	mr r3, r31
/* 80141DC4 0013CCC4  38 81 00 10 */	addi r4, r1, 0x10
/* 80141DC8 0013CCC8  48 00 7C B9 */	bl NWC24iDateToOSCalendarTime
/* 80141DCC 0013CCCC  2C 03 00 00 */	cmpwi r3, 0
/* 80141DD0 0013CCD0  41 80 00 0C */	blt lbl_80141DDC
/* 80141DD4 0013CCD4  38 60 00 01 */	li r3, 1
/* 80141DD8 0013CCD8  48 00 00 14 */	b lbl_80141DEC
lbl_80141DDC:
/* 80141DDC 0013CCDC  4B FB 38 29 */	bl OSGetTime
/* 80141DE0 0013CCE0  7F E5 FB 78 */	mr r5, r31
/* 80141DE4 0013CCE4  4B FB 3A 6D */	bl OSTicksToCalendarTime
/* 80141DE8 0013CCE8  38 60 00 00 */	li r3, 0
lbl_80141DEC:
/* 80141DEC 0013CCEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80141DF0 0013CCF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80141DF4 0013CCF4  7C 08 03 A6 */	mtlr r0
/* 80141DF8 0013CCF8  38 21 00 20 */	addi r1, r1, 0x20
/* 80141DFC 0013CCFC  4E 80 00 20 */	blr 

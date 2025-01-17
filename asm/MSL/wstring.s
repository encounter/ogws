.include "macros.inc"

.section .text, "ax"

.global wcslen
wcslen:
/* 800BCF00 000B7E00  38 83 FF FE */	addi r4, r3, -2
/* 800BCF04 000B7E04  38 60 FF FF */	li r3, -1
lbl_800BCF08:
/* 800BCF08 000B7E08  A4 04 00 02 */	lhzu r0, 2(r4)
/* 800BCF0C 000B7E0C  38 63 00 01 */	addi r3, r3, 1
/* 800BCF10 000B7E10  2C 00 00 00 */	cmpwi r0, 0
/* 800BCF14 000B7E14  40 82 FF F4 */	bne lbl_800BCF08
/* 800BCF18 000B7E18  4E 80 00 20 */	blr 

.global wcscpy
wcscpy:
/* 800BCF1C 000B7E1C  38 84 FF FE */	addi r4, r4, -2
/* 800BCF20 000B7E20  38 A3 FF FE */	addi r5, r3, -2
lbl_800BCF24:
/* 800BCF24 000B7E24  A4 04 00 02 */	lhzu r0, 2(r4)
/* 800BCF28 000B7E28  2C 00 00 00 */	cmpwi r0, 0
/* 800BCF2C 000B7E2C  B4 05 00 02 */	sthu r0, 2(r5)
/* 800BCF30 000B7E30  40 82 FF F4 */	bne lbl_800BCF24
/* 800BCF34 000B7E34  4E 80 00 20 */	blr 

.global wcsncpy
wcsncpy:
/* 800BCF38 000B7E38  38 84 FF FE */	addi r4, r4, -2
/* 800BCF3C 000B7E3C  38 C3 FF FE */	addi r6, r3, -2
/* 800BCF40 000B7E40  38 A5 00 01 */	addi r5, r5, 1
/* 800BCF44 000B7E44  48 00 00 2C */	b lbl_800BCF70
lbl_800BCF48:
/* 800BCF48 000B7E48  A4 04 00 02 */	lhzu r0, 2(r4)
/* 800BCF4C 000B7E4C  2C 00 00 00 */	cmpwi r0, 0
/* 800BCF50 000B7E50  B4 06 00 02 */	sthu r0, 2(r6)
/* 800BCF54 000B7E54  40 82 00 1C */	bne lbl_800BCF70
/* 800BCF58 000B7E58  38 00 00 00 */	li r0, 0
/* 800BCF5C 000B7E5C  48 00 00 08 */	b lbl_800BCF64
lbl_800BCF60:
/* 800BCF60 000B7E60  B4 06 00 02 */	sthu r0, 2(r6)
lbl_800BCF64:
/* 800BCF64 000B7E64  34 A5 FF FF */	addic. r5, r5, -1
/* 800BCF68 000B7E68  40 82 FF F8 */	bne lbl_800BCF60
/* 800BCF6C 000B7E6C  4E 80 00 20 */	blr 
lbl_800BCF70:
/* 800BCF70 000B7E70  34 A5 FF FF */	addic. r5, r5, -1
/* 800BCF74 000B7E74  40 82 FF D4 */	bne lbl_800BCF48
/* 800BCF78 000B7E78  4E 80 00 20 */	blr 

.global wcscat
wcscat:
/* 800BCF7C 000B7E7C  38 84 FF FE */	addi r4, r4, -2
/* 800BCF80 000B7E80  38 A3 FF FE */	addi r5, r3, -2
lbl_800BCF84:
/* 800BCF84 000B7E84  A4 05 00 02 */	lhzu r0, 2(r5)
/* 800BCF88 000B7E88  2C 00 00 00 */	cmpwi r0, 0
/* 800BCF8C 000B7E8C  40 82 FF F8 */	bne lbl_800BCF84
/* 800BCF90 000B7E90  38 A5 FF FE */	addi r5, r5, -2
lbl_800BCF94:
/* 800BCF94 000B7E94  A4 04 00 02 */	lhzu r0, 2(r4)
/* 800BCF98 000B7E98  2C 00 00 00 */	cmpwi r0, 0
/* 800BCF9C 000B7E9C  B4 05 00 02 */	sthu r0, 2(r5)
/* 800BCFA0 000B7EA0  40 82 FF F4 */	bne lbl_800BCF94
/* 800BCFA4 000B7EA4  4E 80 00 20 */	blr 

.global wcscmp
wcscmp:
/* 800BCFA8 000B7EA8  38 A3 FF FE */	addi r5, r3, -2
/* 800BCFAC 000B7EAC  38 84 FF FE */	addi r4, r4, -2
/* 800BCFB0 000B7EB0  48 00 00 14 */	b lbl_800BCFC4
lbl_800BCFB4:
/* 800BCFB4 000B7EB4  2C 03 00 00 */	cmpwi r3, 0
/* 800BCFB8 000B7EB8  40 82 00 0C */	bne lbl_800BCFC4
/* 800BCFBC 000B7EBC  38 60 00 00 */	li r3, 0
/* 800BCFC0 000B7EC0  4E 80 00 20 */	blr 
lbl_800BCFC4:
/* 800BCFC4 000B7EC4  A4 65 00 02 */	lhzu r3, 2(r5)
/* 800BCFC8 000B7EC8  A4 04 00 02 */	lhzu r0, 2(r4)
/* 800BCFCC 000B7ECC  7C 03 00 40 */	cmplw r3, r0
/* 800BCFD0 000B7ED0  41 82 FF E4 */	beq lbl_800BCFB4
/* 800BCFD4 000B7ED4  7C 60 18 50 */	subf r3, r0, r3
/* 800BCFD8 000B7ED8  4E 80 00 20 */	blr 

.global wcschr
wcschr:
/* 800BCFDC 000B7EDC  38 63 FF FE */	addi r3, r3, -2
/* 800BCFE0 000B7EE0  48 00 00 0C */	b lbl_800BCFEC
lbl_800BCFE4:
/* 800BCFE4 000B7EE4  7C 00 20 40 */	cmplw r0, r4
/* 800BCFE8 000B7EE8  4D 82 00 20 */	beqlr 
lbl_800BCFEC:
/* 800BCFEC 000B7EEC  A4 03 00 02 */	lhzu r0, 2(r3)
/* 800BCFF0 000B7EF0  2C 00 00 00 */	cmpwi r0, 0
/* 800BCFF4 000B7EF4  40 82 FF F0 */	bne lbl_800BCFE4
/* 800BCFF8 000B7EF8  2C 04 00 00 */	cmpwi r4, 0
/* 800BCFFC 000B7EFC  4D 82 00 20 */	beqlr 
/* 800BD000 000B7F00  38 60 00 00 */	li r3, 0
/* 800BD004 000B7F04  4E 80 00 20 */	blr 

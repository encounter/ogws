.include "macros.inc"

.section .data, "wa"
.balign 0x8
TEVCOpTableST0:
    .incbin "baserom.dol", 0x397880, 0x14
TEVCOpTableST1:
    .incbin "baserom.dol", 0x397894, 0x14
TEVAOpTableST0:
    .incbin "baserom.dol", 0x3978A8, 0x14
TEVAOpTableST1:
    .incbin "baserom.dol", 0x3978BC, 0x14
# @LOCAL@GXSetTevOrder__F13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID@c2r
.global lbl_8039B7D0
lbl_8039B7D0:
	.incbin "baserom.dol", 0x3978D0, 0x28

.section .text, "ax"
.global GXSetTevOp
GXSetTevOp:
/* 800E1584 000DC484  2C 03 00 00 */	cmpwi r3, 0
/* 800E1588 000DC488  3C A0 80 3A */	lis r5, TEVCOpTableST0@ha
/* 800E158C 000DC48C  38 A5 B7 80 */	addi r5, r5, TEVCOpTableST0@l
/* 800E1590 000DC490  40 82 00 1C */	bne lbl_800E15AC
/* 800E1594 000DC494  54 86 10 3A */	slwi r6, r4, 2
/* 800E1598 000DC498  38 85 00 00 */	addi r4, r5, 0
/* 800E159C 000DC49C  38 05 00 28 */	addi r0, r5, 0x28
/* 800E15A0 000DC4A0  7D 04 32 14 */	add r8, r4, r6
/* 800E15A4 000DC4A4  7D 20 32 14 */	add r9, r0, r6
/* 800E15A8 000DC4A8  48 00 00 18 */	b lbl_800E15C0
lbl_800E15AC:
/* 800E15AC 000DC4AC  54 86 10 3A */	slwi r6, r4, 2
/* 800E15B0 000DC4B0  38 85 00 14 */	addi r4, r5, 0x14
/* 800E15B4 000DC4B4  38 05 00 3C */	addi r0, r5, 0x3c
/* 800E15B8 000DC4B8  7D 04 32 14 */	add r8, r4, r6
/* 800E15BC 000DC4BC  7D 20 32 14 */	add r9, r0, r6
lbl_800E15C0:
/* 800E15C0 000DC4C0  80 E2 96 48 */	lwz r7, __GXData-_SDA2_BASE_(r2)
/* 800E15C4 000DC4C4  54 60 10 3A */	slwi r0, r3, 2
/* 800E15C8 000DC4C8  80 68 00 00 */	lwz r3, 0(r8)
/* 800E15CC 000DC4CC  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800E15D0 000DC4D0  7C C7 02 14 */	add r6, r7, r0
/* 800E15D4 000DC4D4  38 A0 00 61 */	li r5, 0x61
/* 800E15D8 000DC4D8  81 06 01 80 */	lwz r8, 0x180(r6)
/* 800E15DC 000DC4DC  38 00 00 00 */	li r0, 0
/* 800E15E0 000DC4E0  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 800E15E4 000DC4E4  55 08 00 0E */	rlwinm r8, r8, 0, 0, 7
/* 800E15E8 000DC4E8  50 68 02 3E */	rlwimi r8, r3, 0, 8, 0x1f
/* 800E15EC 000DC4EC  91 04 80 00 */	stw r8, -0x8000(r4)
/* 800E15F0 000DC4F0  91 06 01 80 */	stw r8, 0x180(r6)
/* 800E15F4 000DC4F4  81 06 01 C0 */	lwz r8, 0x1c0(r6)
/* 800E15F8 000DC4F8  80 69 00 00 */	lwz r3, 0(r9)
/* 800E15FC 000DC4FC  55 08 07 0E */	rlwinm r8, r8, 0, 0x1c, 7
/* 800E1600 000DC500  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 800E1604 000DC504  50 68 02 36 */	rlwimi r8, r3, 0, 8, 0x1b
/* 800E1608 000DC508  91 04 80 00 */	stw r8, -0x8000(r4)
/* 800E160C 000DC50C  91 06 01 C0 */	stw r8, 0x1c0(r6)
/* 800E1610 000DC510  B0 07 00 02 */	sth r0, 2(r7)
/* 800E1614 000DC514  4E 80 00 20 */	blr 

.global GXSetTevColorIn
GXSetTevColorIn:
/* 800E1618 000DC518  81 62 96 48 */	lwz r11, __GXData-_SDA2_BASE_(r2)
/* 800E161C 000DC51C  54 60 10 3A */	slwi r0, r3, 2
/* 800E1620 000DC520  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800E1624 000DC524  39 00 00 61 */	li r8, 0x61
/* 800E1628 000DC528  7D 4B 02 14 */	add r10, r11, r0
/* 800E162C 000DC52C  38 00 00 00 */	li r0, 0
/* 800E1630 000DC530  81 2A 01 80 */	lwz r9, 0x180(r10)
/* 800E1634 000DC534  50 89 64 26 */	rlwimi r9, r4, 0xc, 0x10, 0x13
/* 800E1638 000DC538  50 A9 45 2E */	rlwimi r9, r5, 8, 0x14, 0x17
/* 800E163C 000DC53C  99 03 80 00 */	stb r8, 0xCC008000@l(r3)
/* 800E1640 000DC540  50 C9 26 36 */	rlwimi r9, r6, 4, 0x18, 0x1b
/* 800E1644 000DC544  50 E9 07 3E */	rlwimi r9, r7, 0, 0x1c, 0x1f
/* 800E1648 000DC548  91 23 80 00 */	stw r9, -0x8000(r3)
/* 800E164C 000DC54C  91 2A 01 80 */	stw r9, 0x180(r10)
/* 800E1650 000DC550  B0 0B 00 02 */	sth r0, 2(r11)
/* 800E1654 000DC554  4E 80 00 20 */	blr 

.global GXSetTevAlphaIn
GXSetTevAlphaIn:
/* 800E1658 000DC558  81 62 96 48 */	lwz r11, __GXData-_SDA2_BASE_(r2)
/* 800E165C 000DC55C  54 60 10 3A */	slwi r0, r3, 2
/* 800E1660 000DC560  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800E1664 000DC564  39 00 00 61 */	li r8, 0x61
/* 800E1668 000DC568  7D 4B 02 14 */	add r10, r11, r0
/* 800E166C 000DC56C  38 00 00 00 */	li r0, 0
/* 800E1670 000DC570  81 2A 01 C0 */	lwz r9, 0x1c0(r10)
/* 800E1674 000DC574  50 89 6C 24 */	rlwimi r9, r4, 0xd, 0x10, 0x12
/* 800E1678 000DC578  50 A9 54 EA */	rlwimi r9, r5, 0xa, 0x13, 0x15
/* 800E167C 000DC57C  99 03 80 00 */	stb r8, 0xCC008000@l(r3)
/* 800E1680 000DC580  50 C9 3D B0 */	rlwimi r9, r6, 7, 0x16, 0x18
/* 800E1684 000DC584  50 E9 26 76 */	rlwimi r9, r7, 4, 0x19, 0x1b
/* 800E1688 000DC588  91 23 80 00 */	stw r9, -0x8000(r3)
/* 800E168C 000DC58C  91 2A 01 C0 */	stw r9, 0x1c0(r10)
/* 800E1690 000DC590  B0 0B 00 02 */	sth r0, 2(r11)
/* 800E1694 000DC594  4E 80 00 20 */	blr 

.global GXSetTevColorOp
GXSetTevColorOp:
/* 800E1698 000DC598  81 42 96 48 */	lwz r10, __GXData-_SDA2_BASE_(r2)
/* 800E169C 000DC59C  54 60 10 3A */	slwi r0, r3, 2
/* 800E16A0 000DC5A0  2C 04 00 01 */	cmpwi r4, 1
/* 800E16A4 000DC5A4  7D 2A 02 14 */	add r9, r10, r0
/* 800E16A8 000DC5A8  81 69 01 80 */	lwz r11, 0x180(r9)
/* 800E16AC 000DC5AC  50 8B 93 5A */	rlwimi r11, r4, 0x12, 0xd, 0xd
/* 800E16B0 000DC5B0  41 81 00 10 */	bgt lbl_800E16C0
/* 800E16B4 000DC5B4  50 CB A2 96 */	rlwimi r11, r6, 0x14, 0xa, 0xb
/* 800E16B8 000DC5B8  50 AB 83 9E */	rlwimi r11, r5, 0x10, 0xe, 0xf
/* 800E16BC 000DC5BC  48 00 00 0C */	b lbl_800E16C8
lbl_800E16C0:
/* 800E16C0 000DC5C0  50 8B 9A 96 */	rlwimi r11, r4, 0x13, 0xa, 0xb
/* 800E16C4 000DC5C4  65 6B 00 03 */	oris r11, r11, 3
lbl_800E16C8:
/* 800E16C8 000DC5C8  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800E16CC 000DC5CC  38 00 00 61 */	li r0, 0x61
/* 800E16D0 000DC5D0  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800E16D4 000DC5D4  50 EB 9B 18 */	rlwimi r11, r7, 0x13, 0xc, 0xc
/* 800E16D8 000DC5D8  51 0B B2 12 */	rlwimi r11, r8, 0x16, 8, 9
/* 800E16DC 000DC5DC  38 00 00 00 */	li r0, 0
/* 800E16E0 000DC5E0  91 63 80 00 */	stw r11, -0x8000(r3)
/* 800E16E4 000DC5E4  91 69 01 80 */	stw r11, 0x180(r9)
/* 800E16E8 000DC5E8  B0 0A 00 02 */	sth r0, 2(r10)
/* 800E16EC 000DC5EC  4E 80 00 20 */	blr 

.global GXSetTevAlphaOp
GXSetTevAlphaOp:
/* 800E16F0 000DC5F0  81 42 96 48 */	lwz r10, __GXData-_SDA2_BASE_(r2)
/* 800E16F4 000DC5F4  54 60 10 3A */	slwi r0, r3, 2
/* 800E16F8 000DC5F8  2C 04 00 01 */	cmpwi r4, 1
/* 800E16FC 000DC5FC  7D 2A 02 14 */	add r9, r10, r0
/* 800E1700 000DC600  81 69 01 C0 */	lwz r11, 0x1c0(r9)
/* 800E1704 000DC604  50 8B 93 5A */	rlwimi r11, r4, 0x12, 0xd, 0xd
/* 800E1708 000DC608  41 81 00 10 */	bgt lbl_800E1718
/* 800E170C 000DC60C  50 CB A2 96 */	rlwimi r11, r6, 0x14, 0xa, 0xb
/* 800E1710 000DC610  50 AB 83 9E */	rlwimi r11, r5, 0x10, 0xe, 0xf
/* 800E1714 000DC614  48 00 00 0C */	b lbl_800E1720
lbl_800E1718:
/* 800E1718 000DC618  50 8B 9A 96 */	rlwimi r11, r4, 0x13, 0xa, 0xb
/* 800E171C 000DC61C  65 6B 00 03 */	oris r11, r11, 3
lbl_800E1720:
/* 800E1720 000DC620  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800E1724 000DC624  38 00 00 61 */	li r0, 0x61
/* 800E1728 000DC628  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800E172C 000DC62C  50 EB 9B 18 */	rlwimi r11, r7, 0x13, 0xc, 0xc
/* 800E1730 000DC630  51 0B B2 12 */	rlwimi r11, r8, 0x16, 8, 9
/* 800E1734 000DC634  38 00 00 00 */	li r0, 0
/* 800E1738 000DC638  91 63 80 00 */	stw r11, -0x8000(r3)
/* 800E173C 000DC63C  91 69 01 C0 */	stw r11, 0x1c0(r9)
/* 800E1740 000DC640  B0 0A 00 02 */	sth r0, 2(r10)
/* 800E1744 000DC644  4E 80 00 20 */	blr 

.global GXSetTevColor
GXSetTevColor:
/* 800E1748 000DC648  54 63 08 3C */	slwi r3, r3, 1
/* 800E174C 000DC64C  81 04 00 00 */	lwz r8, 0(r4)
/* 800E1750 000DC650  38 03 00 E0 */	addi r0, r3, 0xe0
/* 800E1754 000DC654  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800E1758 000DC658  54 07 C0 0E */	slwi r7, r0, 0x18
/* 800E175C 000DC65C  38 A0 00 61 */	li r5, 0x61
/* 800E1760 000DC660  51 07 46 3E */	rlwimi r7, r8, 8, 0x18, 0x1f
/* 800E1764 000DC664  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 800E1768 000DC668  51 07 63 26 */	rlwimi r7, r8, 0xc, 0xc, 0x13
/* 800E176C 000DC66C  38 03 00 E1 */	addi r0, r3, 0xe1
/* 800E1770 000DC670  90 E4 80 00 */	stw r7, -0x8000(r4)
/* 800E1774 000DC674  54 06 C0 0E */	slwi r6, r0, 0x18
/* 800E1778 000DC678  51 06 C6 3E */	rlwimi r6, r8, 0x18, 0x18, 0x1f
/* 800E177C 000DC67C  80 62 96 48 */	lwz r3, __GXData-_SDA2_BASE_(r2)
/* 800E1780 000DC680  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 800E1784 000DC684  51 06 E3 26 */	rlwimi r6, r8, 0x1c, 0xc, 0x13
/* 800E1788 000DC688  38 00 00 00 */	li r0, 0
/* 800E178C 000DC68C  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 800E1790 000DC690  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 800E1794 000DC694  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 800E1798 000DC698  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 800E179C 000DC69C  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 800E17A0 000DC6A0  B0 03 00 02 */	sth r0, 2(r3)
/* 800E17A4 000DC6A4  4E 80 00 20 */	blr 

.global GXSetTevColorS10
GXSetTevColorS10:
/* 800E17A8 000DC6A8  54 63 08 3C */	slwi r3, r3, 1
/* 800E17AC 000DC6AC  81 04 00 00 */	lwz r8, 0(r4)
/* 800E17B0 000DC6B0  38 03 00 E0 */	addi r0, r3, 0xe0
/* 800E17B4 000DC6B4  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800E17B8 000DC6B8  54 07 C0 0E */	slwi r7, r0, 0x18
/* 800E17BC 000DC6BC  38 C0 00 61 */	li r6, 0x61
/* 800E17C0 000DC6C0  81 24 00 04 */	lwz r9, 4(r4)
/* 800E17C4 000DC6C4  51 07 85 7E */	rlwimi r7, r8, 0x10, 0x15, 0x1f
/* 800E17C8 000DC6C8  98 C5 80 00 */	stb r6, 0xCC008000@l(r5)
/* 800E17CC 000DC6CC  38 03 00 E1 */	addi r0, r3, 0xe1
/* 800E17D0 000DC6D0  51 27 62 66 */	rlwimi r7, r9, 0xc, 9, 0x13
/* 800E17D4 000DC6D4  80 62 96 48 */	lwz r3, __GXData-_SDA2_BASE_(r2)
/* 800E17D8 000DC6D8  54 04 C0 0E */	slwi r4, r0, 0x18
/* 800E17DC 000DC6DC  90 E5 80 00 */	stw r7, -0x8000(r5)
/* 800E17E0 000DC6E0  51 24 85 7E */	rlwimi r4, r9, 0x10, 0x15, 0x1f
/* 800E17E4 000DC6E4  38 00 00 00 */	li r0, 0
/* 800E17E8 000DC6E8  98 C5 80 00 */	stb r6, -0x8000(r5)
/* 800E17EC 000DC6EC  51 04 62 66 */	rlwimi r4, r8, 0xc, 9, 0x13
/* 800E17F0 000DC6F0  90 85 80 00 */	stw r4, -0x8000(r5)
/* 800E17F4 000DC6F4  98 C5 80 00 */	stb r6, -0x8000(r5)
/* 800E17F8 000DC6F8  90 85 80 00 */	stw r4, -0x8000(r5)
/* 800E17FC 000DC6FC  98 C5 80 00 */	stb r6, -0x8000(r5)
/* 800E1800 000DC700  90 85 80 00 */	stw r4, -0x8000(r5)
/* 800E1804 000DC704  B0 03 00 02 */	sth r0, 2(r3)
/* 800E1808 000DC708  4E 80 00 20 */	blr 

.global GXSetTevKColor
GXSetTevKColor:
/* 800E180C 000DC70C  54 66 08 3C */	slwi r6, r3, 1
/* 800E1810 000DC710  81 24 00 00 */	lwz r9, 0(r4)
/* 800E1814 000DC714  38 66 00 E0 */	addi r3, r6, 0xe0
/* 800E1818 000DC718  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800E181C 000DC71C  54 68 C0 0E */	slwi r8, r3, 0x18
/* 800E1820 000DC720  38 A0 00 61 */	li r5, 0x61
/* 800E1824 000DC724  51 28 46 3E */	rlwimi r8, r9, 8, 0x18, 0x1f
/* 800E1828 000DC728  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 800E182C 000DC72C  38 E0 00 08 */	li r7, 8
/* 800E1830 000DC730  38 06 00 E1 */	addi r0, r6, 0xe1
/* 800E1834 000DC734  51 28 63 26 */	rlwimi r8, r9, 0xc, 0xc, 0x13
/* 800E1838 000DC738  80 62 96 48 */	lwz r3, __GXData-_SDA2_BASE_(r2)
/* 800E183C 000DC73C  54 06 C0 0E */	slwi r6, r0, 0x18
/* 800E1840 000DC740  38 00 00 00 */	li r0, 0
/* 800E1844 000DC744  50 E8 A2 16 */	rlwimi r8, r7, 0x14, 8, 0xb
/* 800E1848 000DC748  91 04 80 00 */	stw r8, -0x8000(r4)
/* 800E184C 000DC74C  51 26 C6 3E */	rlwimi r6, r9, 0x18, 0x18, 0x1f
/* 800E1850 000DC750  51 26 E3 26 */	rlwimi r6, r9, 0x1c, 0xc, 0x13
/* 800E1854 000DC754  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 800E1858 000DC758  50 E6 A2 16 */	rlwimi r6, r7, 0x14, 8, 0xb
/* 800E185C 000DC75C  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 800E1860 000DC760  B0 03 00 02 */	sth r0, 2(r3)
/* 800E1864 000DC764  4E 80 00 20 */	blr 

.global GXSetTevKColorSel
GXSetTevKColorSel:
/* 800E1868 000DC768  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800E186C 000DC76C  80 A2 96 48 */	lwz r5, __GXData-_SDA2_BASE_(r2)
/* 800E1870 000DC770  54 60 08 3A */	rlwinm r0, r3, 1, 0, 0x1d
/* 800E1874 000DC774  7C 65 02 14 */	add r3, r5, r0
/* 800E1878 000DC778  41 82 00 14 */	beq lbl_800E188C
/* 800E187C 000DC77C  80 03 02 00 */	lwz r0, 0x200(r3)
/* 800E1880 000DC780  50 80 73 62 */	rlwimi r0, r4, 0xe, 0xd, 0x11
/* 800E1884 000DC784  90 03 02 00 */	stw r0, 0x200(r3)
/* 800E1888 000DC788  48 00 00 10 */	b lbl_800E1898
lbl_800E188C:
/* 800E188C 000DC78C  80 03 02 00 */	lwz r0, 0x200(r3)
/* 800E1890 000DC790  50 80 25 F6 */	rlwimi r0, r4, 4, 0x17, 0x1b
/* 800E1894 000DC794  90 03 02 00 */	stw r0, 0x200(r3)
lbl_800E1898:
/* 800E1898 000DC798  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800E189C 000DC79C  38 00 00 61 */	li r0, 0x61
/* 800E18A0 000DC7A0  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 800E18A4 000DC7A4  38 00 00 00 */	li r0, 0
/* 800E18A8 000DC7A8  80 63 02 00 */	lwz r3, 0x200(r3)
/* 800E18AC 000DC7AC  90 64 80 00 */	stw r3, -0x8000(r4)
/* 800E18B0 000DC7B0  B0 05 00 02 */	sth r0, 2(r5)
/* 800E18B4 000DC7B4  4E 80 00 20 */	blr 

.global GXSetTevKAlphaSel
GXSetTevKAlphaSel:
/* 800E18B8 000DC7B8  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800E18BC 000DC7BC  80 A2 96 48 */	lwz r5, __GXData-_SDA2_BASE_(r2)
/* 800E18C0 000DC7C0  54 60 08 3A */	rlwinm r0, r3, 1, 0, 0x1d
/* 800E18C4 000DC7C4  7C 65 02 14 */	add r3, r5, r0
/* 800E18C8 000DC7C8  41 82 00 14 */	beq lbl_800E18DC
/* 800E18CC 000DC7CC  80 03 02 00 */	lwz r0, 0x200(r3)
/* 800E18D0 000DC7D0  50 80 9A 18 */	rlwimi r0, r4, 0x13, 8, 0xc
/* 800E18D4 000DC7D4  90 03 02 00 */	stw r0, 0x200(r3)
/* 800E18D8 000DC7D8  48 00 00 10 */	b lbl_800E18E8
lbl_800E18DC:
/* 800E18DC 000DC7DC  80 03 02 00 */	lwz r0, 0x200(r3)
/* 800E18E0 000DC7E0  50 80 4C AC */	rlwimi r0, r4, 9, 0x12, 0x16
/* 800E18E4 000DC7E4  90 03 02 00 */	stw r0, 0x200(r3)
lbl_800E18E8:
/* 800E18E8 000DC7E8  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800E18EC 000DC7EC  38 00 00 61 */	li r0, 0x61
/* 800E18F0 000DC7F0  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 800E18F4 000DC7F4  38 00 00 00 */	li r0, 0
/* 800E18F8 000DC7F8  80 63 02 00 */	lwz r3, 0x200(r3)
/* 800E18FC 000DC7FC  90 64 80 00 */	stw r3, -0x8000(r4)
/* 800E1900 000DC800  B0 05 00 02 */	sth r0, 2(r5)
/* 800E1904 000DC804  4E 80 00 20 */	blr 

.global GXSetTevSwapMode
GXSetTevSwapMode:
/* 800E1908 000DC808  81 22 96 48 */	lwz r9, __GXData-_SDA2_BASE_(r2)
/* 800E190C 000DC80C  54 60 10 3A */	slwi r0, r3, 2
/* 800E1910 000DC810  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 800E1914 000DC814  38 60 00 61 */	li r3, 0x61
/* 800E1918 000DC818  7D 09 02 14 */	add r8, r9, r0
/* 800E191C 000DC81C  38 00 00 00 */	li r0, 0
/* 800E1920 000DC820  80 E8 01 C0 */	lwz r7, 0x1c0(r8)
/* 800E1924 000DC824  50 87 07 BE */	rlwimi r7, r4, 0, 0x1e, 0x1f
/* 800E1928 000DC828  50 A7 17 3A */	rlwimi r7, r5, 2, 0x1c, 0x1d
/* 800E192C 000DC82C  90 E8 01 C0 */	stw r7, 0x1c0(r8)
/* 800E1930 000DC830  98 66 80 00 */	stb r3, 0xCC008000@l(r6)
/* 800E1934 000DC834  80 68 01 C0 */	lwz r3, 0x1c0(r8)
/* 800E1938 000DC838  90 66 80 00 */	stw r3, -0x8000(r6)
/* 800E193C 000DC83C  B0 09 00 02 */	sth r0, 2(r9)
/* 800E1940 000DC840  4E 80 00 20 */	blr 

.global GXSetTevSwapModeTable
GXSetTevSwapModeTable:
/* 800E1944 000DC844  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E1948 000DC848  54 6B 18 38 */	slwi r11, r3, 3
/* 800E194C 000DC84C  54 6C 08 3C */	slwi r12, r3, 1
/* 800E1950 000DC850  3D 00 CC 01 */	lis r8, 0xCC008000@ha
/* 800E1954 000DC854  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E1958 000DC858  39 20 00 61 */	li r9, 0x61
/* 800E195C 000DC85C  38 6C 00 01 */	addi r3, r12, 1
/* 800E1960 000DC860  38 00 00 00 */	li r0, 0
/* 800E1964 000DC864  93 C1 00 08 */	stw r30, 8(r1)
/* 800E1968 000DC868  83 C2 96 48 */	lwz r30, __GXData-_SDA2_BASE_(r2)
/* 800E196C 000DC86C  3B FE 02 00 */	addi r31, r30, 0x200
/* 800E1970 000DC870  7D 5F 58 2E */	lwzx r10, r31, r11
/* 800E1974 000DC874  50 8A 07 BE */	rlwimi r10, r4, 0, 0x1e, 0x1f
/* 800E1978 000DC878  50 AA 17 3A */	rlwimi r10, r5, 2, 0x1c, 0x1d
/* 800E197C 000DC87C  54 64 10 3A */	slwi r4, r3, 2
/* 800E1980 000DC880  7D 5F 59 2E */	stwx r10, r31, r11
/* 800E1984 000DC884  99 28 80 00 */	stb r9, 0xCC008000@l(r8)
/* 800E1988 000DC888  7C 7F 58 2E */	lwzx r3, r31, r11
/* 800E198C 000DC88C  90 68 80 00 */	stw r3, -0x8000(r8)
/* 800E1990 000DC890  7C 7F 20 2E */	lwzx r3, r31, r4
/* 800E1994 000DC894  50 C3 07 BE */	rlwimi r3, r6, 0, 0x1e, 0x1f
/* 800E1998 000DC898  50 E3 17 3A */	rlwimi r3, r7, 2, 0x1c, 0x1d
/* 800E199C 000DC89C  7C 7F 21 2E */	stwx r3, r31, r4
/* 800E19A0 000DC8A0  99 28 80 00 */	stb r9, -0x8000(r8)
/* 800E19A4 000DC8A4  7C 7F 20 2E */	lwzx r3, r31, r4
/* 800E19A8 000DC8A8  90 68 80 00 */	stw r3, -0x8000(r8)
/* 800E19AC 000DC8AC  B0 1E 00 02 */	sth r0, 2(r30)
/* 800E19B0 000DC8B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E19B4 000DC8B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E19B8 000DC8B8  38 21 00 10 */	addi r1, r1, 0x10
/* 800E19BC 000DC8BC  4E 80 00 20 */	blr 

.global GXSetAlphaCompare
GXSetAlphaCompare:
/* 800E19C0 000DC8C0  3D 00 CC 01 */	lis r8, 0xCC008000@ha
/* 800E19C4 000DC8C4  38 00 00 61 */	li r0, 0x61
/* 800E19C8 000DC8C8  98 08 80 00 */	stb r0, 0xCC008000@l(r8)
/* 800E19CC 000DC8CC  3D 20 F3 00 */	lis r9, 0xf300
/* 800E19D0 000DC8D0  50 89 06 3E */	rlwimi r9, r4, 0, 0x18, 0x1f
/* 800E19D4 000DC8D4  80 82 96 48 */	lwz r4, __GXData-_SDA2_BASE_(r2)
/* 800E19D8 000DC8D8  50 E9 44 2E */	rlwimi r9, r7, 8, 0x10, 0x17
/* 800E19DC 000DC8DC  38 00 00 00 */	li r0, 0
/* 800E19E0 000DC8E0  50 69 83 5E */	rlwimi r9, r3, 0x10, 0xd, 0xf
/* 800E19E4 000DC8E4  50 C9 9A 98 */	rlwimi r9, r6, 0x13, 0xa, 0xc
/* 800E19E8 000DC8E8  50 A9 B2 12 */	rlwimi r9, r5, 0x16, 8, 9
/* 800E19EC 000DC8EC  91 28 80 00 */	stw r9, -0x8000(r8)
/* 800E19F0 000DC8F0  B0 04 00 02 */	sth r0, 2(r4)
/* 800E19F4 000DC8F4  4E 80 00 20 */	blr 

.global GXSetZTexture
GXSetZTexture:
/* 800E19F8 000DC8F8  2C 04 00 13 */	cmpwi r4, 0x13
/* 800E19FC 000DC8FC  38 E0 00 00 */	li r7, 0
/* 800E1A00 000DC900  38 00 00 F4 */	li r0, 0xf4
/* 800E1A04 000DC904  50 A7 02 3E */	rlwimi r7, r5, 0, 8, 0x1f
/* 800E1A08 000DC908  50 07 C0 0E */	rlwimi r7, r0, 0x18, 0, 7
/* 800E1A0C 000DC90C  41 82 00 28 */	beq lbl_800E1A34
/* 800E1A10 000DC910  40 80 00 10 */	bge lbl_800E1A20
/* 800E1A14 000DC914  2C 04 00 11 */	cmpwi r4, 0x11
/* 800E1A18 000DC918  41 82 00 14 */	beq lbl_800E1A2C
/* 800E1A1C 000DC91C  48 00 00 28 */	b lbl_800E1A44
lbl_800E1A20:
/* 800E1A20 000DC920  2C 04 00 16 */	cmpwi r4, 0x16
/* 800E1A24 000DC924  41 82 00 18 */	beq lbl_800E1A3C
/* 800E1A28 000DC928  48 00 00 1C */	b lbl_800E1A44
lbl_800E1A2C:
/* 800E1A2C 000DC92C  38 A0 00 00 */	li r5, 0
/* 800E1A30 000DC930  48 00 00 18 */	b lbl_800E1A48
lbl_800E1A34:
/* 800E1A34 000DC934  38 A0 00 01 */	li r5, 1
/* 800E1A38 000DC938  48 00 00 10 */	b lbl_800E1A48
lbl_800E1A3C:
/* 800E1A3C 000DC93C  38 A0 00 02 */	li r5, 2
/* 800E1A40 000DC940  48 00 00 08 */	b lbl_800E1A48
lbl_800E1A44:
/* 800E1A44 000DC944  38 A0 00 02 */	li r5, 2
lbl_800E1A48:
/* 800E1A48 000DC948  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800E1A4C 000DC94C  38 00 00 61 */	li r0, 0x61
/* 800E1A50 000DC950  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 800E1A54 000DC954  38 C0 00 00 */	li r6, 0
/* 800E1A58 000DC958  50 A6 07 BE */	rlwimi r6, r5, 0, 0x1e, 0x1f
/* 800E1A5C 000DC95C  38 A0 00 F5 */	li r5, 0xf5
/* 800E1A60 000DC960  90 E4 80 00 */	stw r7, -0x8000(r4)
/* 800E1A64 000DC964  50 66 17 3A */	rlwimi r6, r3, 2, 0x1c, 0x1d
/* 800E1A68 000DC968  50 A6 C0 0E */	rlwimi r6, r5, 0x18, 0, 7
/* 800E1A6C 000DC96C  80 62 96 48 */	lwz r3, __GXData-_SDA2_BASE_(r2)
/* 800E1A70 000DC970  98 04 80 00 */	stb r0, -0x8000(r4)
/* 800E1A74 000DC974  38 00 00 00 */	li r0, 0
/* 800E1A78 000DC978  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 800E1A7C 000DC97C  B0 03 00 02 */	sth r0, 2(r3)
/* 800E1A80 000DC980  4E 80 00 20 */	blr 

.global GXSetTevOrder
GXSetTevOrder:
/* 800E1A84 000DC984  54 AB 06 2C */	rlwinm r11, r5, 0, 0x18, 0x16
/* 800E1A88 000DC988  38 E0 00 08 */	li r7, 8
/* 800E1A8C 000DC98C  54 69 0F FE */	srwi r9, r3, 0x1f
/* 800E1A90 000DC990  81 42 96 48 */	lwz r10, __GXData-_SDA2_BASE_(r2)
/* 800E1A94 000DC994  7C 07 58 10 */	subfc r0, r7, r11
/* 800E1A98 000DC998  54 68 10 3A */	slwi r8, r3, 2
/* 800E1A9C 000DC99C  7C 07 01 94 */	addze r0, r7
/* 800E1AA0 000DC9A0  7D 29 1A 14 */	add r9, r9, r3
/* 800E1AA4 000DC9A4  7C EA 42 14 */	add r7, r10, r8
/* 800E1AA8 000DC9A8  2C 04 00 08 */	cmpwi r4, 8
/* 800E1AAC 000DC9AC  55 28 08 3A */	rlwinm r8, r9, 1, 0, 0x1d
/* 800E1AB0 000DC9B0  20 00 00 08 */	subfic r0, r0, 8
/* 800E1AB4 000DC9B4  90 A7 05 A4 */	stw r5, 0x5a4(r7)
/* 800E1AB8 000DC9B8  7C EA 42 14 */	add r7, r10, r8
/* 800E1ABC 000DC9BC  7D 69 00 78 */	andc r9, r11, r0
/* 800E1AC0 000DC9C0  41 80 00 20 */	blt lbl_800E1AE0
/* 800E1AC4 000DC9C4  38 00 00 01 */	li r0, 1
/* 800E1AC8 000DC9C8  81 0A 05 E8 */	lwz r8, 0x5e8(r10)
/* 800E1ACC 000DC9CC  7C 00 18 30 */	slw r0, r0, r3
/* 800E1AD0 000DC9D0  38 80 00 00 */	li r4, 0
/* 800E1AD4 000DC9D4  7D 00 00 78 */	andc r0, r8, r0
/* 800E1AD8 000DC9D8  90 0A 05 E8 */	stw r0, 0x5e8(r10)
/* 800E1ADC 000DC9DC  48 00 00 18 */	b lbl_800E1AF4
lbl_800E1AE0:
/* 800E1AE0 000DC9E0  38 00 00 01 */	li r0, 1
/* 800E1AE4 000DC9E4  81 0A 05 E8 */	lwz r8, 0x5e8(r10)
/* 800E1AE8 000DC9E8  7C 00 18 30 */	slw r0, r0, r3
/* 800E1AEC 000DC9EC  7D 00 03 78 */	or r0, r8, r0
/* 800E1AF0 000DC9F0  90 0A 05 E8 */	stw r0, 0x5e8(r10)
lbl_800E1AF4:
/* 800E1AF4 000DC9F4  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800E1AF8 000DC9F8  41 82 00 60 */	beq lbl_800E1B58
/* 800E1AFC 000DC9FC  81 07 01 50 */	lwz r8, 0x150(r7)
/* 800E1B00 000DCA00  51 28 64 66 */	rlwimi r8, r9, 0xc, 0x11, 0x13
/* 800E1B04 000DCA04  50 88 7B A0 */	rlwimi r8, r4, 0xf, 0xe, 0x10
/* 800E1B08 000DCA08  2C 06 00 FF */	cmpwi r6, 0xff
/* 800E1B0C 000DCA0C  91 07 01 50 */	stw r8, 0x150(r7)
/* 800E1B10 000DCA10  40 82 00 0C */	bne lbl_800E1B1C
/* 800E1B14 000DCA14  38 00 00 07 */	li r0, 7
/* 800E1B18 000DCA18  48 00 00 14 */	b lbl_800E1B2C
lbl_800E1B1C:
/* 800E1B1C 000DCA1C  3C 60 80 3A */	lis r3, lbl_8039B7D0@ha
/* 800E1B20 000DCA20  54 C0 10 3A */	slwi r0, r6, 2
/* 800E1B24 000DCA24  38 63 B7 D0 */	addi r3, r3, lbl_8039B7D0@l
/* 800E1B28 000DCA28  7C 03 00 2E */	lwzx r0, r3, r0
lbl_800E1B2C:
/* 800E1B2C 000DCA2C  50 08 9A 98 */	rlwimi r8, r0, 0x13, 0xa, 0xc
/* 800E1B30 000DCA30  2C 05 00 FF */	cmpwi r5, 0xff
/* 800E1B34 000DCA34  91 07 01 50 */	stw r8, 0x150(r7)
/* 800E1B38 000DCA38  38 60 00 00 */	li r3, 0
/* 800E1B3C 000DCA3C  41 82 00 10 */	beq lbl_800E1B4C
/* 800E1B40 000DCA40  54 A0 05 EF */	rlwinm. r0, r5, 0, 0x17, 0x17
/* 800E1B44 000DCA44  40 82 00 08 */	bne lbl_800E1B4C
/* 800E1B48 000DCA48  38 60 00 01 */	li r3, 1
lbl_800E1B4C:
/* 800E1B4C 000DCA4C  50 68 93 5A */	rlwimi r8, r3, 0x12, 0xd, 0xd
/* 800E1B50 000DCA50  91 07 01 50 */	stw r8, 0x150(r7)
/* 800E1B54 000DCA54  48 00 00 5C */	b lbl_800E1BB0
lbl_800E1B58:
/* 800E1B58 000DCA58  81 07 01 50 */	lwz r8, 0x150(r7)
/* 800E1B5C 000DCA5C  51 28 07 7E */	rlwimi r8, r9, 0, 0x1d, 0x1f
/* 800E1B60 000DCA60  50 88 1E B8 */	rlwimi r8, r4, 3, 0x1a, 0x1c
/* 800E1B64 000DCA64  2C 06 00 FF */	cmpwi r6, 0xff
/* 800E1B68 000DCA68  91 07 01 50 */	stw r8, 0x150(r7)
/* 800E1B6C 000DCA6C  40 82 00 0C */	bne lbl_800E1B78
/* 800E1B70 000DCA70  38 00 00 07 */	li r0, 7
/* 800E1B74 000DCA74  48 00 00 14 */	b lbl_800E1B88
lbl_800E1B78:
/* 800E1B78 000DCA78  3C 60 80 3A */	lis r3, lbl_8039B7D0@ha
/* 800E1B7C 000DCA7C  54 C0 10 3A */	slwi r0, r6, 2
/* 800E1B80 000DCA80  38 63 B7 D0 */	addi r3, r3, lbl_8039B7D0@l
/* 800E1B84 000DCA84  7C 03 00 2E */	lwzx r0, r3, r0
lbl_800E1B88:
/* 800E1B88 000DCA88  50 08 3D B0 */	rlwimi r8, r0, 7, 0x16, 0x18
/* 800E1B8C 000DCA8C  2C 05 00 FF */	cmpwi r5, 0xff
/* 800E1B90 000DCA90  91 07 01 50 */	stw r8, 0x150(r7)
/* 800E1B94 000DCA94  38 60 00 00 */	li r3, 0
/* 800E1B98 000DCA98  41 82 00 10 */	beq lbl_800E1BA8
/* 800E1B9C 000DCA9C  54 A0 05 EF */	rlwinm. r0, r5, 0, 0x17, 0x17
/* 800E1BA0 000DCAA0  40 82 00 08 */	bne lbl_800E1BA8
/* 800E1BA4 000DCAA4  38 60 00 01 */	li r3, 1
lbl_800E1BA8:
/* 800E1BA8 000DCAA8  50 68 36 72 */	rlwimi r8, r3, 6, 0x19, 0x19
/* 800E1BAC 000DCAAC  91 07 01 50 */	stw r8, 0x150(r7)
lbl_800E1BB0:
/* 800E1BB0 000DCAB0  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800E1BB4 000DCAB4  38 00 00 61 */	li r0, 0x61
/* 800E1BB8 000DCAB8  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 800E1BBC 000DCABC  38 00 00 00 */	li r0, 0
/* 800E1BC0 000DCAC0  80 A2 96 48 */	lwz r5, __GXData-_SDA2_BASE_(r2)
/* 800E1BC4 000DCAC4  80 67 01 50 */	lwz r3, 0x150(r7)
/* 800E1BC8 000DCAC8  90 64 80 00 */	stw r3, -0x8000(r4)
/* 800E1BCC 000DCACC  B0 05 00 02 */	sth r0, 2(r5)
/* 800E1BD0 000DCAD0  80 05 05 FC */	lwz r0, 0x5fc(r5)
/* 800E1BD4 000DCAD4  60 00 00 01 */	ori r0, r0, 1
/* 800E1BD8 000DCAD8  90 05 05 FC */	stw r0, 0x5fc(r5)
/* 800E1BDC 000DCADC  4E 80 00 20 */	blr 

.global GXSetNumTevStages
GXSetNumTevStages:
/* 800E1BE0 000DCAE0  80 82 96 48 */	lwz r4, __GXData-_SDA2_BASE_(r2)
/* 800E1BE4 000DCAE4  38 03 FF FF */	addi r0, r3, -1
/* 800E1BE8 000DCAE8  80 64 02 54 */	lwz r3, 0x254(r4)
/* 800E1BEC 000DCAEC  50 03 54 AA */	rlwimi r3, r0, 0xa, 0x12, 0x15
/* 800E1BF0 000DCAF0  90 64 02 54 */	stw r3, 0x254(r4)
/* 800E1BF4 000DCAF4  80 04 05 FC */	lwz r0, 0x5fc(r4)
/* 800E1BF8 000DCAF8  60 00 00 04 */	ori r0, r0, 4
/* 800E1BFC 000DCAFC  90 04 05 FC */	stw r0, 0x5fc(r4)
/* 800E1C00 000DCB00  4E 80 00 20 */	blr 

.include "macros.inc"

.section .text, "ax"  # 0x800076E0 - 0x80355080 

.global __ct__Q44nw4r3snd6detail18SoundArchiveLoaderFRCQ34nw4r3snd12SoundArchive
__ct__Q44nw4r3snd6detail18SoundArchiveLoaderFRCQ34nw4r3snd12SoundArchive:
/* 8004342C 0003E32C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80043430 0003E330  7C 08 02 A6 */	mflr r0
/* 80043434 0003E334  90 01 00 14 */	stw r0, 0x14(r1)
/* 80043438 0003E338  38 00 00 00 */	li r0, 0
/* 8004343C 0003E33C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80043440 0003E340  7C 7F 1B 78 */	mr r31, r3
/* 80043444 0003E344  90 83 00 18 */	stw r4, 0x18(r3)
/* 80043448 0003E348  90 03 02 1C */	stw r0, 0x21c(r3)
/* 8004344C 0003E34C  48 0A F6 F9 */	bl OSInitMutex
/* 80043450 0003E350  7F E3 FB 78 */	mr r3, r31
/* 80043454 0003E354  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80043458 0003E358  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004345C 0003E35C  7C 08 03 A6 */	mtlr r0
/* 80043460 0003E360  38 21 00 10 */	addi r1, r1, 0x10
/* 80043464 0003E364  4E 80 00 20 */	blr 

.global __dt__Q44nw4r3snd6detail18SoundArchiveLoaderFv
__dt__Q44nw4r3snd6detail18SoundArchiveLoaderFv:
/* 80043468 0003E368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004346C 0003E36C  7C 08 02 A6 */	mflr r0
/* 80043470 0003E370  2C 03 00 00 */	cmpwi r3, 0
/* 80043474 0003E374  90 01 00 14 */	stw r0, 0x14(r1)
/* 80043478 0003E378  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004347C 0003E37C  7C 7F 1B 78 */	mr r31, r3
/* 80043480 0003E380  41 82 00 10 */	beq lbl_80043490
/* 80043484 0003E384  2C 04 00 00 */	cmpwi r4, 0
/* 80043488 0003E388  40 81 00 08 */	ble lbl_80043490
/* 8004348C 0003E38C  48 05 FD F9 */	bl __dl__FPv
lbl_80043490:
/* 80043490 0003E390  7F E3 FB 78 */	mr r3, r31
/* 80043494 0003E394  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80043498 0003E398  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004349C 0003E39C  7C 08 03 A6 */	mtlr r0
/* 800434A0 0003E3A0  38 21 00 10 */	addi r1, r1, 0x10
/* 800434A4 0003E3A4  4E 80 00 20 */	blr 

.global LoadGroup__Q44nw4r3snd6detail18SoundArchiveLoaderFUlPQ34nw4r3snd22SoundMemoryAllocatablePPvUl
LoadGroup__Q44nw4r3snd6detail18SoundArchiveLoaderFUlPQ34nw4r3snd22SoundMemoryAllocatablePPvUl:
/* 800434A8 0003E3A8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800434AC 0003E3AC  7C 08 02 A6 */	mflr r0
/* 800434B0 0003E3B0  90 01 00 54 */	stw r0, 0x54(r1)
/* 800434B4 0003E3B4  39 61 00 50 */	addi r11, r1, 0x50
/* 800434B8 0003E3B8  48 06 E8 7D */	bl _savegpr_23
/* 800434BC 0003E3BC  7C 7F 1B 78 */	mr r31, r3
/* 800434C0 0003E3C0  7C 9A 23 78 */	mr r26, r4
/* 800434C4 0003E3C4  7C B9 2B 78 */	mr r25, r5
/* 800434C8 0003E3C8  7C D7 33 78 */	mr r23, r6
/* 800434CC 0003E3CC  7C F8 3B 78 */	mr r24, r7
/* 800434D0 0003E3D0  48 0A F6 AD */	bl OSLockMutex
/* 800434D4 0003E3D4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 800434D8 0003E3D8  7F 44 D3 78 */	mr r4, r26
/* 800434DC 0003E3DC  38 BF 00 1C */	addi r5, r31, 0x1c
/* 800434E0 0003E3E0  38 C0 02 00 */	li r6, 0x200
/* 800434E4 0003E3E4  4B FF EB A1 */	bl detail_OpenGroupStream__Q34nw4r3snd12SoundArchiveCFUlPvi
/* 800434E8 0003E3E8  2C 03 00 00 */	cmpwi r3, 0
/* 800434EC 0003E3EC  7C 7D 1B 78 */	mr r29, r3
/* 800434F0 0003E3F0  40 82 00 28 */	bne lbl_80043518
/* 800434F4 0003E3F4  41 82 00 14 */	beq lbl_80043508
/* 800434F8 0003E3F8  81 83 00 00 */	lwz r12, 0(r3)
/* 800434FC 0003E3FC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80043500 0003E400  7D 89 03 A6 */	mtctr r12
/* 80043504 0003E404  4E 80 04 21 */	bctrl 
lbl_80043508:
/* 80043508 0003E408  7F E3 FB 78 */	mr r3, r31
/* 8004350C 0003E40C  48 0A F7 4D */	bl OSUnlockMutex
/* 80043510 0003E410  38 60 00 00 */	li r3, 0
/* 80043514 0003E414  48 00 05 50 */	b lbl_80043A64
lbl_80043518:
/* 80043518 0003E418  81 83 00 00 */	lwz r12, 0(r3)
/* 8004351C 0003E41C  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80043520 0003E420  7D 89 03 A6 */	mtctr r12
/* 80043524 0003E424  4E 80 04 21 */	bctrl 
/* 80043528 0003E428  2C 03 00 00 */	cmpwi r3, 0
/* 8004352C 0003E42C  41 82 00 20 */	beq lbl_8004354C
/* 80043530 0003E430  81 9D 00 00 */	lwz r12, 0(r29)
/* 80043534 0003E434  7F A3 EB 78 */	mr r3, r29
/* 80043538 0003E438  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8004353C 0003E43C  7D 89 03 A6 */	mtctr r12
/* 80043540 0003E440  4E 80 04 21 */	bctrl 
/* 80043544 0003E444  2C 03 00 00 */	cmpwi r3, 0
/* 80043548 0003E448  40 82 00 30 */	bne lbl_80043578
lbl_8004354C:
/* 8004354C 0003E44C  2C 1D 00 00 */	cmpwi r29, 0
/* 80043550 0003E450  41 82 00 18 */	beq lbl_80043568
/* 80043554 0003E454  81 9D 00 00 */	lwz r12, 0(r29)
/* 80043558 0003E458  7F A3 EB 78 */	mr r3, r29
/* 8004355C 0003E45C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80043560 0003E460  7D 89 03 A6 */	mtctr r12
/* 80043564 0003E464  4E 80 04 21 */	bctrl 
lbl_80043568:
/* 80043568 0003E468  7F E3 FB 78 */	mr r3, r31
/* 8004356C 0003E46C  48 0A F6 ED */	bl OSUnlockMutex
/* 80043570 0003E470  38 60 00 00 */	li r3, 0
/* 80043574 0003E474  48 00 04 F0 */	b lbl_80043A64
lbl_80043578:
/* 80043578 0003E478  81 9D 00 00 */	lwz r12, 0(r29)
/* 8004357C 0003E47C  7F A3 EB 78 */	mr r3, r29
/* 80043580 0003E480  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80043584 0003E484  7D 89 03 A6 */	mtctr r12
/* 80043588 0003E488  4E 80 04 21 */	bctrl 
/* 8004358C 0003E48C  81 99 00 00 */	lwz r12, 0(r25)
/* 80043590 0003E490  7C 64 1B 78 */	mr r4, r3
/* 80043594 0003E494  7F 23 CB 78 */	mr r3, r25
/* 80043598 0003E498  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8004359C 0003E49C  7D 89 03 A6 */	mtctr r12
/* 800435A0 0003E4A0  4E 80 04 21 */	bctrl 
/* 800435A4 0003E4A4  2C 03 00 00 */	cmpwi r3, 0
/* 800435A8 0003E4A8  7C 7B 1B 78 */	mr r27, r3
/* 800435AC 0003E4AC  40 82 00 30 */	bne lbl_800435DC
/* 800435B0 0003E4B0  2C 1D 00 00 */	cmpwi r29, 0
/* 800435B4 0003E4B4  41 82 00 18 */	beq lbl_800435CC
/* 800435B8 0003E4B8  81 9D 00 00 */	lwz r12, 0(r29)
/* 800435BC 0003E4BC  7F A3 EB 78 */	mr r3, r29
/* 800435C0 0003E4C0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800435C4 0003E4C4  7D 89 03 A6 */	mtctr r12
/* 800435C8 0003E4C8  4E 80 04 21 */	bctrl 
lbl_800435CC:
/* 800435CC 0003E4CC  7F E3 FB 78 */	mr r3, r31
/* 800435D0 0003E4D0  48 0A F6 89 */	bl OSUnlockMutex
/* 800435D4 0003E4D4  38 60 00 00 */	li r3, 0
/* 800435D8 0003E4D8  48 00 04 8C */	b lbl_80043A64
lbl_800435DC:
/* 800435DC 0003E4DC  2C 18 00 00 */	cmpwi r24, 0
/* 800435E0 0003E4E0  93 BF 02 1C */	stw r29, 0x21c(r31)
/* 800435E4 0003E4E4  40 82 00 70 */	bne lbl_80043654
/* 800435E8 0003E4E8  81 9D 00 00 */	lwz r12, 0(r29)
/* 800435EC 0003E4EC  7F A3 EB 78 */	mr r3, r29
/* 800435F0 0003E4F0  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 800435F4 0003E4F4  7D 89 03 A6 */	mtctr r12
/* 800435F8 0003E4F8  4E 80 04 21 */	bctrl 
/* 800435FC 0003E4FC  81 9D 00 00 */	lwz r12, 0(r29)
/* 80043600 0003E500  7C 65 1B 78 */	mr r5, r3
/* 80043604 0003E504  7F A3 EB 78 */	mr r3, r29
/* 80043608 0003E508  7F 64 DB 78 */	mr r4, r27
/* 8004360C 0003E50C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80043610 0003E510  7D 89 03 A6 */	mtctr r12
/* 80043614 0003E514  4E 80 04 21 */	bctrl 
/* 80043618 0003E518  2C 03 00 00 */	cmpwi r3, 0
/* 8004361C 0003E51C  40 80 00 DC */	bge lbl_800436F8
/* 80043620 0003E520  38 00 00 00 */	li r0, 0
/* 80043624 0003E524  2C 1D 00 00 */	cmpwi r29, 0
/* 80043628 0003E528  90 1F 02 1C */	stw r0, 0x21c(r31)
/* 8004362C 0003E52C  41 82 00 18 */	beq lbl_80043644
/* 80043630 0003E530  81 9D 00 00 */	lwz r12, 0(r29)
/* 80043634 0003E534  7F A3 EB 78 */	mr r3, r29
/* 80043638 0003E538  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8004363C 0003E53C  7D 89 03 A6 */	mtctr r12
/* 80043640 0003E540  4E 80 04 21 */	bctrl 
lbl_80043644:
/* 80043644 0003E544  7F E3 FB 78 */	mr r3, r31
/* 80043648 0003E548  48 0A F6 11 */	bl OSUnlockMutex
/* 8004364C 0003E54C  38 60 00 00 */	li r3, 0
/* 80043650 0003E550  48 00 04 14 */	b lbl_80043A64
lbl_80043654:
/* 80043654 0003E554  81 9D 00 00 */	lwz r12, 0(r29)
/* 80043658 0003E558  7F A3 EB 78 */	mr r3, r29
/* 8004365C 0003E55C  7F 7C DB 78 */	mr r28, r27
/* 80043660 0003E560  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80043664 0003E564  7D 89 03 A6 */	mtctr r12
/* 80043668 0003E568  4E 80 04 21 */	bctrl 
/* 8004366C 0003E56C  7C 7E 1B 78 */	mr r30, r3
/* 80043670 0003E570  48 00 00 80 */	b lbl_800436F0
lbl_80043674:
/* 80043674 0003E574  7C 18 F0 40 */	cmplw r24, r30
/* 80043678 0003E578  7F A3 EB 78 */	mr r3, r29
/* 8004367C 0003E57C  7F 84 E3 78 */	mr r4, r28
/* 80043680 0003E580  7F 05 C3 78 */	mr r5, r24
/* 80043684 0003E584  40 81 00 08 */	ble lbl_8004368C
/* 80043688 0003E588  7F C5 F3 78 */	mr r5, r30
lbl_8004368C:
/* 8004368C 0003E58C  81 83 00 00 */	lwz r12, 0(r3)
/* 80043690 0003E590  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80043694 0003E594  7D 89 03 A6 */	mtctr r12
/* 80043698 0003E598  4E 80 04 21 */	bctrl 
/* 8004369C 0003E59C  2C 03 00 00 */	cmpwi r3, 0
/* 800436A0 0003E5A0  40 80 00 38 */	bge lbl_800436D8
/* 800436A4 0003E5A4  38 00 00 00 */	li r0, 0
/* 800436A8 0003E5A8  2C 1D 00 00 */	cmpwi r29, 0
/* 800436AC 0003E5AC  90 1F 02 1C */	stw r0, 0x21c(r31)
/* 800436B0 0003E5B0  41 82 00 18 */	beq lbl_800436C8
/* 800436B4 0003E5B4  81 9D 00 00 */	lwz r12, 0(r29)
/* 800436B8 0003E5B8  7F A3 EB 78 */	mr r3, r29
/* 800436BC 0003E5BC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800436C0 0003E5C0  7D 89 03 A6 */	mtctr r12
/* 800436C4 0003E5C4  4E 80 04 21 */	bctrl 
lbl_800436C8:
/* 800436C8 0003E5C8  7F E3 FB 78 */	mr r3, r31
/* 800436CC 0003E5CC  48 0A F5 8D */	bl OSUnlockMutex
/* 800436D0 0003E5D0  38 60 00 00 */	li r3, 0
/* 800436D4 0003E5D4  48 00 03 90 */	b lbl_80043A64
lbl_800436D8:
/* 800436D8 0003E5D8  7C 1E 18 40 */	cmplw r30, r3
/* 800436DC 0003E5DC  40 81 00 10 */	ble lbl_800436EC
/* 800436E0 0003E5E0  7F C3 F0 50 */	subf r30, r3, r30
/* 800436E4 0003E5E4  7F 9C 1A 14 */	add r28, r28, r3
/* 800436E8 0003E5E8  48 00 00 08 */	b lbl_800436F0
lbl_800436EC:
/* 800436EC 0003E5EC  3B C0 00 00 */	li r30, 0
lbl_800436F0:
/* 800436F0 0003E5F0  2C 1E 00 00 */	cmpwi r30, 0
/* 800436F4 0003E5F4  40 82 FF 80 */	bne lbl_80043674
lbl_800436F8:
/* 800436F8 0003E5F8  3B C0 00 00 */	li r30, 0
/* 800436FC 0003E5FC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80043700 0003E600  93 DF 02 1C */	stw r30, 0x21c(r31)
/* 80043704 0003E604  7F 44 D3 78 */	mr r4, r26
/* 80043708 0003E608  38 A1 00 08 */	addi r5, r1, 8
/* 8004370C 0003E60C  4B FF E7 35 */	bl detail_ReadGroupInfo__Q34nw4r3snd12SoundArchiveCFUlPQ44nw4r3snd12SoundArchive9GroupInfo
/* 80043710 0003E610  2C 03 00 00 */	cmpwi r3, 0
/* 80043714 0003E614  40 82 00 30 */	bne lbl_80043744
/* 80043718 0003E618  2C 1D 00 00 */	cmpwi r29, 0
/* 8004371C 0003E61C  41 82 00 18 */	beq lbl_80043734
/* 80043720 0003E620  81 9D 00 00 */	lwz r12, 0(r29)
/* 80043724 0003E624  7F A3 EB 78 */	mr r3, r29
/* 80043728 0003E628  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8004372C 0003E62C  7D 89 03 A6 */	mtctr r12
/* 80043730 0003E630  4E 80 04 21 */	bctrl 
lbl_80043734:
/* 80043734 0003E634  7F E3 FB 78 */	mr r3, r31
/* 80043738 0003E638  48 0A F5 21 */	bl OSUnlockMutex
/* 8004373C 0003E63C  38 60 00 00 */	li r3, 0
/* 80043740 0003E640  48 00 03 24 */	b lbl_80043A64
lbl_80043744:
/* 80043744 0003E644  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80043748 0003E648  2C 00 00 00 */	cmpwi r0, 0
/* 8004374C 0003E64C  41 82 02 E4 */	beq lbl_80043A30
/* 80043750 0003E650  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80043754 0003E654  7F 44 D3 78 */	mr r4, r26
/* 80043758 0003E658  38 BF 00 1C */	addi r5, r31, 0x1c
/* 8004375C 0003E65C  38 C0 02 00 */	li r6, 0x200
/* 80043760 0003E660  4B FF EA 3D */	bl detail_OpenGroupWaveDataStream__Q34nw4r3snd12SoundArchiveCFUlPvi
/* 80043764 0003E664  2C 03 00 00 */	cmpwi r3, 0
/* 80043768 0003E668  7C 7C 1B 78 */	mr r28, r3
/* 8004376C 0003E66C  40 82 00 44 */	bne lbl_800437B0
/* 80043770 0003E670  41 82 00 14 */	beq lbl_80043784
/* 80043774 0003E674  81 83 00 00 */	lwz r12, 0(r3)
/* 80043778 0003E678  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8004377C 0003E67C  7D 89 03 A6 */	mtctr r12
/* 80043780 0003E680  4E 80 04 21 */	bctrl 
lbl_80043784:
/* 80043784 0003E684  2C 1D 00 00 */	cmpwi r29, 0
/* 80043788 0003E688  41 82 00 18 */	beq lbl_800437A0
/* 8004378C 0003E68C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80043790 0003E690  7F A3 EB 78 */	mr r3, r29
/* 80043794 0003E694  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80043798 0003E698  7D 89 03 A6 */	mtctr r12
/* 8004379C 0003E69C  4E 80 04 21 */	bctrl 
lbl_800437A0:
/* 800437A0 0003E6A0  7F E3 FB 78 */	mr r3, r31
/* 800437A4 0003E6A4  48 0A F4 B5 */	bl OSUnlockMutex
/* 800437A8 0003E6A8  38 60 00 00 */	li r3, 0
/* 800437AC 0003E6AC  48 00 02 B8 */	b lbl_80043A64
lbl_800437B0:
/* 800437B0 0003E6B0  81 83 00 00 */	lwz r12, 0(r3)
/* 800437B4 0003E6B4  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 800437B8 0003E6B8  7D 89 03 A6 */	mtctr r12
/* 800437BC 0003E6BC  4E 80 04 21 */	bctrl 
/* 800437C0 0003E6C0  2C 03 00 00 */	cmpwi r3, 0
/* 800437C4 0003E6C4  41 82 00 20 */	beq lbl_800437E4
/* 800437C8 0003E6C8  81 9C 00 00 */	lwz r12, 0(r28)
/* 800437CC 0003E6CC  7F 83 E3 78 */	mr r3, r28
/* 800437D0 0003E6D0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 800437D4 0003E6D4  7D 89 03 A6 */	mtctr r12
/* 800437D8 0003E6D8  4E 80 04 21 */	bctrl 
/* 800437DC 0003E6DC  2C 03 00 00 */	cmpwi r3, 0
/* 800437E0 0003E6E0  40 82 00 4C */	bne lbl_8004382C
lbl_800437E4:
/* 800437E4 0003E6E4  2C 1C 00 00 */	cmpwi r28, 0
/* 800437E8 0003E6E8  41 82 00 18 */	beq lbl_80043800
/* 800437EC 0003E6EC  81 9C 00 00 */	lwz r12, 0(r28)
/* 800437F0 0003E6F0  7F 83 E3 78 */	mr r3, r28
/* 800437F4 0003E6F4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800437F8 0003E6F8  7D 89 03 A6 */	mtctr r12
/* 800437FC 0003E6FC  4E 80 04 21 */	bctrl 
lbl_80043800:
/* 80043800 0003E700  2C 1D 00 00 */	cmpwi r29, 0
/* 80043804 0003E704  41 82 00 18 */	beq lbl_8004381C
/* 80043808 0003E708  81 9D 00 00 */	lwz r12, 0(r29)
/* 8004380C 0003E70C  7F A3 EB 78 */	mr r3, r29
/* 80043810 0003E710  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80043814 0003E714  7D 89 03 A6 */	mtctr r12
/* 80043818 0003E718  4E 80 04 21 */	bctrl 
lbl_8004381C:
/* 8004381C 0003E71C  7F E3 FB 78 */	mr r3, r31
/* 80043820 0003E720  48 0A F4 39 */	bl OSUnlockMutex
/* 80043824 0003E724  38 60 00 00 */	li r3, 0
/* 80043828 0003E728  48 00 02 3C */	b lbl_80043A64
lbl_8004382C:
/* 8004382C 0003E72C  81 9C 00 00 */	lwz r12, 0(r28)
/* 80043830 0003E730  7F 83 E3 78 */	mr r3, r28
/* 80043834 0003E734  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80043838 0003E738  7D 89 03 A6 */	mtctr r12
/* 8004383C 0003E73C  4E 80 04 21 */	bctrl 
/* 80043840 0003E740  81 99 00 00 */	lwz r12, 0(r25)
/* 80043844 0003E744  7C 64 1B 78 */	mr r4, r3
/* 80043848 0003E748  7F 23 CB 78 */	mr r3, r25
/* 8004384C 0003E74C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80043850 0003E750  7D 89 03 A6 */	mtctr r12
/* 80043854 0003E754  4E 80 04 21 */	bctrl 
/* 80043858 0003E758  2C 03 00 00 */	cmpwi r3, 0
/* 8004385C 0003E75C  7C 7A 1B 78 */	mr r26, r3
/* 80043860 0003E760  40 82 00 4C */	bne lbl_800438AC
/* 80043864 0003E764  2C 1C 00 00 */	cmpwi r28, 0
/* 80043868 0003E768  41 82 00 18 */	beq lbl_80043880
/* 8004386C 0003E76C  81 9C 00 00 */	lwz r12, 0(r28)
/* 80043870 0003E770  7F 83 E3 78 */	mr r3, r28
/* 80043874 0003E774  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80043878 0003E778  7D 89 03 A6 */	mtctr r12
/* 8004387C 0003E77C  4E 80 04 21 */	bctrl 
lbl_80043880:
/* 80043880 0003E780  2C 1D 00 00 */	cmpwi r29, 0
/* 80043884 0003E784  41 82 00 18 */	beq lbl_8004389C
/* 80043888 0003E788  81 9D 00 00 */	lwz r12, 0(r29)
/* 8004388C 0003E78C  7F A3 EB 78 */	mr r3, r29
/* 80043890 0003E790  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80043894 0003E794  7D 89 03 A6 */	mtctr r12
/* 80043898 0003E798  4E 80 04 21 */	bctrl 
lbl_8004389C:
/* 8004389C 0003E79C  7F E3 FB 78 */	mr r3, r31
/* 800438A0 0003E7A0  48 0A F3 B9 */	bl OSUnlockMutex
/* 800438A4 0003E7A4  38 60 00 00 */	li r3, 0
/* 800438A8 0003E7A8  48 00 01 BC */	b lbl_80043A64
lbl_800438AC:
/* 800438AC 0003E7AC  2C 18 00 00 */	cmpwi r24, 0
/* 800438B0 0003E7B0  93 9F 02 1C */	stw r28, 0x21c(r31)
/* 800438B4 0003E7B4  40 82 00 88 */	bne lbl_8004393C
/* 800438B8 0003E7B8  81 9C 00 00 */	lwz r12, 0(r28)
/* 800438BC 0003E7BC  7F 83 E3 78 */	mr r3, r28
/* 800438C0 0003E7C0  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 800438C4 0003E7C4  7D 89 03 A6 */	mtctr r12
/* 800438C8 0003E7C8  4E 80 04 21 */	bctrl 
/* 800438CC 0003E7CC  81 9C 00 00 */	lwz r12, 0(r28)
/* 800438D0 0003E7D0  7C 65 1B 78 */	mr r5, r3
/* 800438D4 0003E7D4  7F 83 E3 78 */	mr r3, r28
/* 800438D8 0003E7D8  7F 44 D3 78 */	mr r4, r26
/* 800438DC 0003E7DC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800438E0 0003E7E0  7D 89 03 A6 */	mtctr r12
/* 800438E4 0003E7E4  4E 80 04 21 */	bctrl 
/* 800438E8 0003E7E8  2C 03 00 00 */	cmpwi r3, 0
/* 800438EC 0003E7EC  40 80 01 10 */	bge lbl_800439FC
/* 800438F0 0003E7F0  2C 1C 00 00 */	cmpwi r28, 0
/* 800438F4 0003E7F4  93 DF 02 1C */	stw r30, 0x21c(r31)
/* 800438F8 0003E7F8  41 82 00 18 */	beq lbl_80043910
/* 800438FC 0003E7FC  81 9C 00 00 */	lwz r12, 0(r28)
/* 80043900 0003E800  7F 83 E3 78 */	mr r3, r28
/* 80043904 0003E804  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80043908 0003E808  7D 89 03 A6 */	mtctr r12
/* 8004390C 0003E80C  4E 80 04 21 */	bctrl 
lbl_80043910:
/* 80043910 0003E810  2C 1D 00 00 */	cmpwi r29, 0
/* 80043914 0003E814  41 82 00 18 */	beq lbl_8004392C
/* 80043918 0003E818  81 9D 00 00 */	lwz r12, 0(r29)
/* 8004391C 0003E81C  7F A3 EB 78 */	mr r3, r29
/* 80043920 0003E820  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80043924 0003E824  7D 89 03 A6 */	mtctr r12
/* 80043928 0003E828  4E 80 04 21 */	bctrl 
lbl_8004392C:
/* 8004392C 0003E82C  7F E3 FB 78 */	mr r3, r31
/* 80043930 0003E830  48 0A F3 29 */	bl OSUnlockMutex
/* 80043934 0003E834  38 60 00 00 */	li r3, 0
/* 80043938 0003E838  48 00 01 2C */	b lbl_80043A64
lbl_8004393C:
/* 8004393C 0003E83C  81 9C 00 00 */	lwz r12, 0(r28)
/* 80043940 0003E840  7F 83 E3 78 */	mr r3, r28
/* 80043944 0003E844  7F 5E D3 78 */	mr r30, r26
/* 80043948 0003E848  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8004394C 0003E84C  7D 89 03 A6 */	mtctr r12
/* 80043950 0003E850  4E 80 04 21 */	bctrl 
/* 80043954 0003E854  7C 79 1B 78 */	mr r25, r3
/* 80043958 0003E858  48 00 00 9C */	b lbl_800439F4
lbl_8004395C:
/* 8004395C 0003E85C  7C 18 C8 40 */	cmplw r24, r25
/* 80043960 0003E860  7F 83 E3 78 */	mr r3, r28
/* 80043964 0003E864  7F C4 F3 78 */	mr r4, r30
/* 80043968 0003E868  7F 05 C3 78 */	mr r5, r24
/* 8004396C 0003E86C  40 81 00 08 */	ble lbl_80043974
/* 80043970 0003E870  7F 25 CB 78 */	mr r5, r25
lbl_80043974:
/* 80043974 0003E874  81 83 00 00 */	lwz r12, 0(r3)
/* 80043978 0003E878  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8004397C 0003E87C  7D 89 03 A6 */	mtctr r12
/* 80043980 0003E880  4E 80 04 21 */	bctrl 
/* 80043984 0003E884  2C 03 00 00 */	cmpwi r3, 0
/* 80043988 0003E888  40 80 00 54 */	bge lbl_800439DC
/* 8004398C 0003E88C  38 00 00 00 */	li r0, 0
/* 80043990 0003E890  2C 1C 00 00 */	cmpwi r28, 0
/* 80043994 0003E894  90 1F 02 1C */	stw r0, 0x21c(r31)
/* 80043998 0003E898  41 82 00 18 */	beq lbl_800439B0
/* 8004399C 0003E89C  81 9C 00 00 */	lwz r12, 0(r28)
/* 800439A0 0003E8A0  7F 83 E3 78 */	mr r3, r28
/* 800439A4 0003E8A4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800439A8 0003E8A8  7D 89 03 A6 */	mtctr r12
/* 800439AC 0003E8AC  4E 80 04 21 */	bctrl 
lbl_800439B0:
/* 800439B0 0003E8B0  2C 1D 00 00 */	cmpwi r29, 0
/* 800439B4 0003E8B4  41 82 00 18 */	beq lbl_800439CC
/* 800439B8 0003E8B8  81 9D 00 00 */	lwz r12, 0(r29)
/* 800439BC 0003E8BC  7F A3 EB 78 */	mr r3, r29
/* 800439C0 0003E8C0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800439C4 0003E8C4  7D 89 03 A6 */	mtctr r12
/* 800439C8 0003E8C8  4E 80 04 21 */	bctrl 
lbl_800439CC:
/* 800439CC 0003E8CC  7F E3 FB 78 */	mr r3, r31
/* 800439D0 0003E8D0  48 0A F2 89 */	bl OSUnlockMutex
/* 800439D4 0003E8D4  38 60 00 00 */	li r3, 0
/* 800439D8 0003E8D8  48 00 00 8C */	b lbl_80043A64
lbl_800439DC:
/* 800439DC 0003E8DC  7C 19 18 40 */	cmplw r25, r3
/* 800439E0 0003E8E0  40 81 00 10 */	ble lbl_800439F0
/* 800439E4 0003E8E4  7F 23 C8 50 */	subf r25, r3, r25
/* 800439E8 0003E8E8  7F DE 1A 14 */	add r30, r30, r3
/* 800439EC 0003E8EC  48 00 00 08 */	b lbl_800439F4
lbl_800439F0:
/* 800439F0 0003E8F0  3B 20 00 00 */	li r25, 0
lbl_800439F4:
/* 800439F4 0003E8F4  2C 19 00 00 */	cmpwi r25, 0
/* 800439F8 0003E8F8  40 82 FF 64 */	bne lbl_8004395C
lbl_800439FC:
/* 800439FC 0003E8FC  38 00 00 00 */	li r0, 0
/* 80043A00 0003E900  2C 17 00 00 */	cmpwi r23, 0
/* 80043A04 0003E904  90 1F 02 1C */	stw r0, 0x21c(r31)
/* 80043A08 0003E908  41 82 00 08 */	beq lbl_80043A10
/* 80043A0C 0003E90C  93 57 00 00 */	stw r26, 0(r23)
lbl_80043A10:
/* 80043A10 0003E910  2C 1C 00 00 */	cmpwi r28, 0
/* 80043A14 0003E914  41 82 00 28 */	beq lbl_80043A3C
/* 80043A18 0003E918  81 9C 00 00 */	lwz r12, 0(r28)
/* 80043A1C 0003E91C  7F 83 E3 78 */	mr r3, r28
/* 80043A20 0003E920  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80043A24 0003E924  7D 89 03 A6 */	mtctr r12
/* 80043A28 0003E928  4E 80 04 21 */	bctrl 
/* 80043A2C 0003E92C  48 00 00 10 */	b lbl_80043A3C
lbl_80043A30:
/* 80043A30 0003E930  2C 17 00 00 */	cmpwi r23, 0
/* 80043A34 0003E934  41 82 00 08 */	beq lbl_80043A3C
/* 80043A38 0003E938  93 D7 00 00 */	stw r30, 0(r23)
lbl_80043A3C:
/* 80043A3C 0003E93C  2C 1D 00 00 */	cmpwi r29, 0
/* 80043A40 0003E940  41 82 00 18 */	beq lbl_80043A58
/* 80043A44 0003E944  81 9D 00 00 */	lwz r12, 0(r29)
/* 80043A48 0003E948  7F A3 EB 78 */	mr r3, r29
/* 80043A4C 0003E94C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80043A50 0003E950  7D 89 03 A6 */	mtctr r12
/* 80043A54 0003E954  4E 80 04 21 */	bctrl 
lbl_80043A58:
/* 80043A58 0003E958  7F E3 FB 78 */	mr r3, r31
/* 80043A5C 0003E95C  48 0A F1 FD */	bl OSUnlockMutex
/* 80043A60 0003E960  7F 63 DB 78 */	mr r3, r27
lbl_80043A64:
/* 80043A64 0003E964  39 61 00 50 */	addi r11, r1, 0x50
/* 80043A68 0003E968  48 06 E3 19 */	bl _restgpr_23
/* 80043A6C 0003E96C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80043A70 0003E970  7C 08 03 A6 */	mtlr r0
/* 80043A74 0003E974  38 21 00 50 */	addi r1, r1, 0x50
/* 80043A78 0003E978  4E 80 00 20 */	blr 
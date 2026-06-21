#This file is provided only as a reference for manually recoding functions.

#This function is called from Behavior  bhvMessagePanel
#It has virtual address 0x803839CC and rom address 0x13E9CC
 load_object_collision_model:
#This function is called from Behavior  bhvBobombBuddy
#It has virtual address 0x802E76AC and rom address 0xA26AC
 bhv_bobomb_buddy_init:
	lui	$at, 0x4020
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	mtc1	$at, $f4
	nop	
	swc1	$f4, 0xe4($t6)
	lui	$at, 0x8034
	lui	$t7, 0x8036
	lw	$t7, 0x1160($t7)
	lwc1	$f6, -0x7b14($at)
	swc1	$f6, 0x170($t7)
	lui	$at, 0x8034
	lui	$t8, 0x8036
	lw	$t8, 0x1160($t8)
	lwc1	$f8, -0x7b10($at)
	swc1	$f8, 0x174($t8)
	lui	$t0, 0x8036
	lw	$t0, 0x1160($t0)
	addiu	$t9, $zero, 0x4000
	sw	$t9, 0x190($t0)
	jr	$ra
	nop	
#This function is called from Behavior  bhvBobombBuddy
#It has virtual address 0x802E7C4C and rom address 0xA2C4C
 bhv_bobomb_buddy_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	jal	 bobomb_buddy_actions
	nop	
	lui	$a0, 0x8036
	lw	$a0, 0x1160($a0)
	jal	 curr_obj_random_blink
	addiu	$a0, $a0, 0xf4
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	sw	$zero, 0x134($t6)
	b	0x34
	nop	
	lw	$ra, 0x14($sp)
	addiu	$sp, $sp, 0x18
	jr	$ra
	nop	
#This function is called from Behavior  bhvWarp
#It has virtual address 0x802AAA60 and rom address 0x65A60
 bhv_warp_loop:
	addiu	$sp, $sp, -8
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lw	$t7, 0x154($t6)
	bnez	$t7, 0xd8
	nop	
	lui	$t8, 0x8036
	lw	$t8, 0x1160($t8)
	lw	$t9, 0x188($t8)
	sra	$t0, $t9, 0x18
	andi	$t1, $t0, 0xff
	sh	$t1, 6($sp)
	lhu	$t2, 6($sp)
	bnez	$t2, 0x54
	nop	
	lui	$at, 0x4248
	lui	$t3, 0x8036
#This function is called from Behavior  bhvSpring_MOP
#It has virtual address 0x802A6DC4 and rom address 0x61DC4
 Func_Custom_0x802a6dc4:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$a0, 0x8036
	lw	$a1, 0x1158($a0)
	jal	 obj_check_if_collided_with_object
	lw	$a0, 0x1160($a0)
	beq	$zero, $v0, 0x68
	lui	$a0, 0x8036
	lw	$a1, 0x1160($a0)
	lui	$a0, 0x8033
	ori	$a0, $a0, 0xb170
	lui	$t1, 0x300
	ori	$t1, $t1, 0x881
	sw	$t1, 0xc($a0)
	lh	$t1, 0xd6($a1)
	sh	$t1, 0x2e($a0)
	lw	$a2, 0x144($a1)
#This function is called from Behavior  bhvDoor
#It has virtual address 0x802ACC3C and rom address 0x67C3C
 bhv_door_init:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x14($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lwc1	$f4, 0xa0($t6)
	swc1	$f4, 0x24($sp)
	lui	$t7, 0x8036
	lw	$t7, 0x1160($t7)
	lwc1	$f6, 0xa8($t7)
	swc1	$f6, 0x20($sp)
	lui	$t8, 0x8036
	lw	$t8, 0x1160($t8)
	lwc1	$f12, 0x24($sp)
	lw	$a2, 0x20($sp)
	addiu	$a3, $sp, 0x1c
	jal	 find_floor
	lwc1	$f14, 0xa4($t8)
#This function is called from Behavior  bhvDoor
#It has virtual address 0x802ACAC8 and rom address 0x67AC8
 bhv_door_loop:
	addiu	$sp, $sp, -0x20
	sw	$ra, 0x14($sp)
	sw	$zero, 0x1c($sp)
	lw	$t6, 0x1c($sp)
	lui	$t8, 0x8033
	addiu	$at, $zero, -1
	sll	$t7, $t6, 3
	addu	$t8, $t8, $t7
	lw	$t8, 0x260($t8)
	beq	$t8, $at, 0x98
	nop	
	lw	$t9, 0x1c($sp)
	lui	$a0, 0x8033
	sll	$t0, $t9, 3
	addu	$a0, $a0, $t0
	jal	 cur_obj_clear_interact_status_flag
	lw	$a0, 0x260($a0)
#This function is called from Behavior  bhvCannonClosed
#It has virtual address 0x802E7C90 and rom address 0xA2C90
 bhv_cannon_closed_init:
	addiu	$sp, $sp, -0x20
	sw	$ra, 0x14($sp)
	jal	 save_file_is_cannon_unlocked
	nop	
	addiu	$at, $zero, 1
	bne	$v0, $at, 0xa4
	nop	
	lui	$a0, 0x8036
	lui	$a2, 0x1300
	addiu	$a2, $a2, 0x4a8
	lw	$a0, 0x1160($a0)
	jal	 spawn_object
	addiu	$a1, $zero, 0x80
	sw	$v0, 0x1c($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lw	$t8, 0x1c($sp)
#This function is called from Behavior  bhvCannonClosed
#It has virtual address 0x802E7E54 and rom address 0xA2E54
 bhv_cannon_closed_loop:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lw	$s0, 0x14c($t6)
	beqz	$s0, 0x40
	nop	
	addiu	$at, $zero, 1
	beq	$s0, $at, 0xac
	nop	
	addiu	$at, $zero, 2
	beq	$s0, $at, 0xf0
	nop	
	b	0x100
	nop	
	lui	$t7, 0x8036
#This function is called from Behavior  bhvFadingWarp
#It has virtual address 0x802AAB54 and rom address 0x65B54
 bhv_fading_warp_loop:
	addiu	$sp, $sp, -8
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lw	$t7, 0x154($t6)
	bnez	$t7, 0xd8
	nop	
	lui	$t8, 0x8036
	lw	$t8, 0x1160($t8)
	lw	$t9, 0x188($t8)
	sra	$t0, $t9, 0x18
	andi	$t1, $t0, 0xff
	sh	$t1, 6($sp)
	lhu	$t2, 6($sp)
	bnez	$t2, 0x54
	nop	
	lui	$at, 0x42aa
	lui	$t3, 0x8036
#This function is called from Behavior  bhvCheckpoint_Flag_MOP
#It has virtual address 0x806069E0 and rom address 0x14069E0
 Func_Custom_0x806069e0:
	addi	$a3, $v0, 0x2849
	addi	$t1, $v0, 0x2849
	slti	$t1, $v0, 0x2047
	slti	$t1, $v0, 0x288b
	addi	$t3, $a0, 0x20c9
	j	0xc4114
	slti	$t1, $s6, 0x444f
#This function is called from Behavior  bhvToadMessage
#It has virtual address 0x802A4120 and rom address 0x5F120
 bhv_init_room:
	addiu	$sp, $sp, -0x20
	sw	$ra, 0x14($sp)
	lui	$a0, 0x8033
	lui	$a1, 0x8033
	addiu	$a1, $a1, 0x14
	jal	 is_item_in_array
	lh	$a0, -0x2208($a0)
#This function is called from Behavior  bhvToadMessage
#It has virtual address 0x80276910 and rom address 0x31910
 bhv_toad_message_init:
	addiu	$sp, $sp, -0x38
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	jal	 save_file_get_flags
	nop	
	sw	$v0, 0x34($sp)
	lui	$a0, 0x8033
#This function is called from Behavior  bhvToadMessage
#It has virtual address 0x8027684C and rom address 0x3184C
 bhv_toad_message_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lh	$t7, 2($t6)
	andi	$t8, $t7, 1
	beqz	$t8, 0xac
#This function is called from Behavior  bhvRedCoin
#It has virtual address 0x802F2E6C and rom address 0xADE6C
 bhv_red_coin_init:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x14($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	addiu	$a3, $sp, 0x24
	lwc1	$f12, 0xa0($t6)
	lwc1	$f14, 0xa4($t6)
#This function is called from Behavior  bhvRedCoin
#It has virtual address 0x802F2F2C and rom address 0xADF2C
 bhv_red_coin_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lw	$t7, 0x134($t6)
	andi	$t8, $t7, 0x8000
	beqz	$t8, 0xd0
#This function is called from Behavior  bhvBowserCourseRedCoinStar
#It has virtual address 0x802F328C and rom address 0xAE28C
 bhv_bowser_course_red_coin_star_loop:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lui	$at, 0x8036
	lw	$t7, 0xf4($t6)
#This function is called from Behavior  bhvExclamationBox
#It has virtual address 0x802C19C0 and rom address 0x7C9C0
 bhv_exclamation_box_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$at, 0x4000
	mtc1	$at, $f12
	jal	 cur_obj_scale
	nop	
	lui	$a0, 0x8033
#This function is called from Behavior  Bhv_Custom_0x13000920
#It has virtual address 0x802AB650 and rom address 0x66650
 bhv_yellow_coin_init:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$a0, 0x1300
	jal	 cur_obj_set_behavior
	addiu	$a0, $a0, 0x91c
	lui	$a0, 0x8036
	lui	$a1, 0x8033
#This function is called from Behavior  Bhv_Custom_0x13000920
#It has virtual address 0x802AB70C and rom address 0x6670C
 bhv_yellow_coin_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	jal	 bhv_coin_sparkles_init
	nop	
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lw	$t7, 0xf0($t6)
#This function is called from Behavior  bhv1Up
#It has virtual address 0x802F3D30 and rom address 0xAED30
 bhv_1up_init:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	jal	 bhv_1up_common_init
	nop	
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	addiu	$at, $zero, 1
#This function is called from Behavior  bhv1Up
#It has virtual address 0x802F45B8 and rom address 0xAF5B8
 bhv_1up_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	jal	 bhv_1up_interact
	nop	
	lui	$a0, 0x8036
	lw	$a0, 0x1160($a0)
	jal	 set_object_visibility
#This function is called from Behavior  RM_Scroll_Texture
#It has virtual address 0x80401718 and rom address 0x1201718
 Func_Custom_0x80401718:
	addiu	$sp, $sp, -0x30
	sdc1	$f20, 0x28($sp)
	sw	$ra, 0x24($sp)
	sw	$s3, 0x20($sp)
	sw	$s2, 0x1c($sp)
	sw	$s1, 0x18($sp)
	sw	$s0, 0x14($sp)
#This function is called from Behavior  bhvNoteblock_MOP
#It has virtual address 0x802A6CF4 and rom address 0x61CF4
 bhv_thi_huge_island_top_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	jal	 cur_obj_is_mario_on_platform
	lui	$t9, 0x8036
	lui	$t2, 0x8034
	beq	$zero, $v0, 0x9c
	lw	$v1, 0x1160($t9)
#This function is called from Behavior  Bhv_Custom_0x13005770
#It has virtual address 0x8040610C and rom address 0x120610C
 Func_Custom_0x8040610c:
	lui	$t8, 0x8036
	lw	$t8, 0x1160($t8)
	lbu	$t7, 0x18a($t8)
	lui	$t6, 0x8034
	lhu	$t6, -0x4de6($t6)
	slt	$at, $t6, $t7
	bnel	$at, $zero, 0x24
#This function is called from Behavior  Bhv_Custom_0x13005770
#It has virtual address 0x80406138 and rom address 0x1206138
 Func_Custom_0x80406138:
	addiu	$sp, $sp, -0x20
	sw	$ra, 0x14($sp)
	sw	$s5, 0x18($sp)
	lui	$s5, 0x8036
	lw	$s5, 0x1160($s5)
	lwc1	$f4, 0x15c($s5)
	lwc1	$f6, 0xf4($s5)
#This function is called from Behavior  Bhv_Custom_0x13001488
#It has virtual address 0x802B1278 and rom address 0x6C278
 bhv_purple_switch_loop:
	addiu	$sp, $sp, -0x20
	sw	$ra, 0x14($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lw	$t7, 0x14c($t6)
	sltiu	$at, $t7, 5
	beqz	$at, 0x264
#This function is called from Behavior  bhvHiddenObject
#It has virtual address 0x802B1AE0 and rom address 0x6CAE0
 bhv_hidden_object_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lw	$t7, 0x144($t6)
	bnez	$t7, 0x2c
	nop	
#This function is called from Behavior  bhvStar
#It has virtual address 0x802F24F4 and rom address 0xAD4F4
 bhv_collect_star_init:
	addiu	$sp, $sp, -0x20
	sw	$ra, 0x14($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lw	$t7, 0x188($t6)
	sra	$t8, $t7, 0x18
	andi	$t9, $t8, 0xff
#This function is called from Behavior  bhvStar
#It has virtual address 0x802F25B0 and rom address 0xAD5B0
 bhv_collect_star_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lw	$t7, 0xd4($t6)
	addiu	$t8, $t7, 0x800
	sw	$t8, 0xd4($t6)
#This function is called from Behavior  bhvLllBowserPuzzlePiece
#It has virtual address 0x802BEC34 and rom address 0x79C34
 bhv_lll_bowser_puzzle_piece_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$t0, 0x8033
	lh	$t0, -0x220c($t0)
	addi	$t0, $t0, -1
	ori	$t1, $zero, 0x70
	mult	$t0, $t1
#This function is called from Behavior  bhvRecoveryHeart
#It has virtual address 0x80309B64 and rom address 0xC4B64
 bhv_recovery_heart_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$a0, 0x8036
	lui	$a1, 0x8033
	addiu	$a1, $a1, 0x2bf0
	jal	 obj_set_hitbox
	lw	$a0, 0x1160($a0)
#This function is called from Behavior  bhvCoinFormation
#It has virtual address 0x802ABEE4 and rom address 0x66EE4
 bhv_coin_formation_init:
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lw	$t7, 0x188($t6)
	sra	$t8, $t7, 8
	andi	$t9, $t8, 0xff
	sw	$t9, 0xf4($t6)
	jr	$ra
	nop	
#This function is called from Behavior  bhvCoinFormation
#It has virtual address 0x802ABF0C and rom address 0x66F0C
 bhv_coin_formation_loop:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lw	$s0, 0x14c($t6)
	beqz	$s0, 0x40
	nop	
#This function is called from Behavior  bhvHiddenStar
#It has virtual address 0x802F3014 and rom address 0xAE014
 bhv_hidden_star_init:
	addiu	$sp, $sp, -0x38
	sw	$ra, 0x2c($sp)
	lui	$a0, 0x1300
	jal	 count_objects_with_behavior
	addiu	$a0, $a0, 0x3f1c
	sh	$v0, 0x36($sp)
	lh	$t6, 0x36($sp)
	bnez	$t6, 0xac
#This function is called from Behavior  bhvHiddenStar
#It has virtual address 0x802F30F0 and rom address 0xAE0F0
 bhv_hidden_star_loop:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lw	$s0, 0x14c($t6)
	beqz	$s0, 0x34
	nop	
#This function is called from Behavior  bhvGoombaTripletSpawner
#It has virtual address 0x802FF214 and rom address 0xBA214
 bhv_goomba_triplet_spawner_update:
	addiu	$sp, $sp, -0x40
	sw	$ra, 0x24($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lw	$t7, 0x14c($t6)
	bnez	$t7, 0x1ac
	nop	
	lui	$t8, 0x8036
#This function is called from Behavior  bhvChuckya
#It has virtual address 0x802AA0AC and rom address 0x650AC
 bhv_chuckya_loop:
	addiu	$sp, $sp, -0x30
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$at, 0x41a0
	mtc1	$at, $f4
	nop	
	swc1	$f4, 0x2c($sp)
	lui	$at, 0x4248
#This function is called from Behavior  bhvBobomb
#It has virtual address 0x802E6A2C and rom address 0xA1A2C
 bhv_bobomb_init:
	lui	$at, 0x4020
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	mtc1	$at, $f4
	nop	
	swc1	$f4, 0xe4($t6)
	lui	$at, 0x8034
	lui	$t7, 0x8036
#This function is called from Behavior  bhvBobomb
#It has virtual address 0x802E742C and rom address 0xA242C
 bhv_bobomb_loop:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	addiu	$a3, $zero, 0xfa0
	lwc1	$f12, 0xa0($t6)
	lwc1	$f14, 0xa4($t6)
#This function is called from Behavior  bhvCirclingAmp
#It has virtual address 0x802E8AE4 and rom address 0xA3AE4
 bhv_circling_amp_init:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lwc1	$f4, 0xa0($t6)
	swc1	$f4, 0x164($t6)
	lui	$t7, 0x8036
#This function is called from Behavior  bhvCirclingAmp
#It has virtual address 0x802E8ECC and rom address 0xA3ECC
 bhv_circling_amp_loop:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	addiu	$at, $zero, 2
	lw	$s0, 0x14c($t6)
	beq	$s0, $at, 0x38
#This function is called from Behavior  bhvThwomp
#It has virtual address 0x802AD34C and rom address 0x6834C
 bhv_grindel_thwomp_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$a0, 0x8033
	jal	 cur_obj_call_action_function
	addiu	$a0, $a0, 0x298
	b	0x1c
	nop	
	lw	$ra, 0x14($sp)
#This function is called from Behavior  bhvHomingAmp
#It has virtual address 0x802E8388 and rom address 0xA3388
 bhv_homing_amp_init:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lwc1	$f4, 0xa0($t6)
	swc1	$f4, 0x164($t6)
	lui	$t7, 0x8036
	lw	$t7, 0x1160($t7)
#This function is called from Behavior  bhvHomingAmp
#It has virtual address 0x802E89D4 and rom address 0xA39D4
 bhv_homing_amp_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lw	$t7, 0x14c($t6)
	sltiu	$at, $t7, 5
	beqz	$at, 0xdc
	nop	
#This function is called from Behavior  bhvFireSpitter
#It has virtual address 0x8030D598 and rom address 0xC8598
 bhv_fire_spitter_update:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	jal	 cur_obj_scale
	lwc1	$f12, 0x2c($t6)
	lui	$at, 0x4220
#This function is called from Behavior  bhvHiddenStarTrigger
#It has virtual address 0x802F31BC and rom address 0xAE1BC
 bhv_hidden_star_trigger_loop:
	addiu	$sp, $sp, -0x20
	sw	$ra, 0x14($sp)
	lui	$a0, 0x8036
	lui	$a1, 0x8036
	lw	$a1, 0x1158($a1)
	jal	 obj_check_if_collided_with_object
	lw	$a0, 0x1160($a0)
	addiu	$at, $zero, 1
#This function is called from Behavior  bhvHiddenRedCoinStar
#It has virtual address 0x802F2C84 and rom address 0xADC84
 bhv_hidden_red_coin_star_init:
	addiu	$sp, $sp, -0x38
	sw	$ra, 0x2c($sp)
	lui	$t6, 0x8034
	lh	$t6, -0x453a($t6)
	addiu	$at, $zero, 3
	beq	$t6, $at, 0x34
	nop	
	lui	$a0, 0x8036
#This function is called from Behavior  bhvHiddenRedCoinStar
#It has virtual address 0x802F2D8C and rom address 0xADD8C
 bhv_hidden_red_coin_star_loop:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lui	$at, 0x8036
	lw	$t7, 0xf4($t6)
	sb	$t7, 0x13fe($at)
#This function is called from Behavior  bhvGoomba
#It has virtual address 0x802FF408 and rom address 0xBA408
 bhv_goomba_init:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lw	$t7, 0x144($t6)
	andi	$t8, $t7, 3
	sw	$t8, 0xf4($t6)
	lui	$t9, 0x8036
#This function is called from Behavior  bhvGoomba
#It has virtual address 0x802FF96C and rom address 0xBA96C
 bhv_goomba_update:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	jal	0x802fb87c
	lwc1	$f12, 0xf8($t6)
	beqz	$v0, 0x1a0
#This function is called from Behavior  bhvSwitchblock_MOP
#It has virtual address 0x803094F8 and rom address 0xC44F8
 bhv_animates_on_floor_switch_press_init:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$v1, 0x8036
	lw	$v1, 0x1160($v1)
	lw	$t3, 0x14c($v1)
	bnez	$t3, 0x30
	nop	
	addiu	$at, $zero, 1
#This function is called from Behavior  bhvSwitchblock_Switch_MOP
#It has virtual address 0x802EF63C and rom address 0xAA63C
 bhv_rr_cruiser_wing_init:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	jal	 cur_obj_is_mario_on_platform
	nop	
	lw	$t2, 0x144($t8)
	sw	$t2, 0xf0($t8)
	beqz	$v0, 0x50
	nop	
#This function is called from Behavior  bhvFlipswitch_Panel_StarSpawn_MOP
#It has virtual address 0x802A82BC and rom address 0x632BC
 Func_Custom_0x802a82bc:
	addiu	$sp, $sp, -0x20
	sw	$ra, 0x14($sp)
	lui	$t0, 0x8034
	addiu	$t0, $t0, -0x2b78
	sw	$t0, 0x18($sp)
	lui	$a0, 0x1300
	jal	 segmented_to_virtual
	ori	$a0, $a0, 0x5d8
#This function is called from Behavior  bhvFlipswitch_Panel_MOP
#It has virtual address 0x802A8238 and rom address 0x63238
 Func_Custom_0x802a8238:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$t0, 0x8036
	lw	$t0, 0x1160($t0)
	lw	$t3, 0x14c($t0)
	addiu	$at, $zero, 2
	beq	$at, $t3, 0x70
	nop	
#This function is called from Behavior  bhvLllSinkingRockBlock
#It has virtual address 0x802BC22C and rom address 0x7722C
 bhv_lll_sinking_rock_block_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	addiu	$a2, $zero, 0x7c
	addiu	$a3, $zero, -0x6e
	addiu	$a0, $t6, 0x104
	jal	 lll_octagonal_mesh_find_y_offset
#This function is called from Behavior  bhvBeta_Blarrg_MOP
#It has virtual address 0x802C1CD4 and rom address 0x7CCD4
 bhv_ship_part_3_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$t1, 0x8036
	lw	$v1, 0x1160($t1)
	lui	$t2, 0x500
	ori	$a0, $t2, 0x6154
	lui	$at, 0x43fa
	mtc1	$at, $f6
#This function is called from Behavior  bhvShrink_Platform_MOP
#It has virtual address 0x802AA830 and rom address 0x65830
 bhv_rotating_platform_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$v1, 0x8036
	lw	$v1, 0x1160($v1)
	lw	$t0, 0x14c($v1)
	bnez	$t0, 0x54
	nop	
	lw	$t0, 0x154($v1)
#This function is called from Behavior  bhvHeaveHo
#It has virtual address 0x802B2278 and rom address 0x6D278
 bhv_heave_ho_loop:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$at, 0x4000
	mtc1	$at, $f12
	jal	 cur_obj_scale
	nop	
	lui	$t6, 0x8036
#This function is called from Behavior  bhvButterfly
#It has virtual address 0x802E8F68 and rom address 0xA3F68
 bhv_butterfly_init:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	jal	 cur_obj_init_animation
	addiu	$a0, $zero, 1
	jal	 random_float
	nop	
	lui	$at, 0x42c8
	mtc1	$at, $f4
#This function is called from Behavior  bhvButterfly
#It has virtual address 0x802E96C8 and rom address 0xA46C8
 bhv_butterfly_loop:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lw	$s0, 0x14c($t6)
	beqz	$s0, 0x40
	nop	
#This function is called from Behavior  bhvScuttlebug
#It has virtual address 0x802C65C0 and rom address 0x815C0
 bhv_scuttlebug_loop:
	addiu	$sp, $sp, -0x20
	sw	$ra, 0x14($sp)
	jal	 cur_obj_update_floor_and_walls
	nop	
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lw	$t7, 0x150($t6)
	beqz	$t7, 0x54
#This function is called from Behavior  bhvSnufit
#It has virtual address 0x8030DC70 and rom address 0xC8C70
 bhv_snufit_loop:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lh	$t7, 0x74($t6)
	andi	$t8, $t7, 8
	bnez	$t8, 0x338
#This function is called from Behavior  bhvSwoop
#It has virtual address 0x802FE8B4 and rom address 0xB98B4
 bhv_swoop_update:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lh	$t7, 0x74($t6)
	andi	$t8, $t7, 8
	bnez	$t8, 0xb8
#This function is called from Behavior  bhvMrI
#It has virtual address 0x802A6B7C and rom address 0x61B7C
 bhv_mr_i_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$a0, 0x8036
	lui	$a1, 0x8033
	addiu	$a1, $a1, 0x84
	jal	 obj_set_hitbox
	lw	$a0, 0x1160($a0)
	lui	$a0, 0x8033
#This function is called from Behavior  bhvSandBlock_MOP
#It has virtual address 0x802AA1B8 and rom address 0x651B8
 bhv_wf_breakable_wall_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	j	0x2ef760
	nop	
#This function is called from Behavior  bhvBreakableBox
#It has virtual address 0x802B1B2C and rom address 0x6CB2C
 bhv_breakable_box_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$a0, 0x8036
	lui	$a1, 0x8033
#This function is called from Behavior  bhvMrBlizzard
#It has virtual address 0x8030803C and rom address 0xC303C
 bhv_mr_blizzard_init:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
#This function is called from Behavior  bhvMrBlizzard
#It has virtual address 0x80308D6C and rom address 0xC3D6C
 bhv_mr_blizzard_update:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sdc1	$f20, 0x10($sp)
	jal	 cur_obj_update_floor_and_walls
#This function is called from Behavior  bhvFlipswap_Platform_MOP
#It has virtual address 0x802ADDF8 and rom address 0x68DF8
 bhv_elevator_init:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$t0, 0x8036
	lw	$a0, 0x1160($t0)
#This function is called from Behavior  bhvSkeeter
#It has virtual address 0x80313110 and rom address 0xCE110
 bhv_skeeter_update:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$t7, 0x8036
#This function is called from Behavior  bhvJumpingBox
#It has virtual address 0x802B288C and rom address 0x6D88C
 bhv_jumping_box_loop:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$t6, 0x8036
#This function is called from Behavior  bhvPoleGrabbing
#It has virtual address 0x802A6C20 and rom address 0x61C20
 bhv_pole_init:
	addiu	$sp, $sp, -8
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lw	$t7, 0x188($t6)
#This function is called from Behavior  bhvPoleGrabbing
#It has virtual address 0x802C63E8 and rom address 0x813E8
 bhv_pole_base_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
#This function is called from Behavior  bhvHiddenBlueCoin
#It has virtual address 0x802C22B8 and rom address 0x7D2B8
 bhv_hidden_blue_coin_loop:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$t6, 0x8036
#This function is called from Behavior  bhvEnemyLakitu
#It has virtual address 0x80303028 and rom address 0xBE028
 bhv_enemy_lakitu_update:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$at, 0x44fa
#This function is called from Behavior  bhvFlamethrower
#It has virtual address 0x802AF1E8 and rom address 0x6A1E8
 bhv_flamethrower_loop:
	addiu	$sp, $sp, -0x40
	sw	$ra, 0x24($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
#This function is called from Behavior  bhvPushableMetalBox
#It has virtual address 0x802B15E8 and rom address 0x6C5E8
 bhv_pushable_loop:
	addiu	$sp, $sp, -0x20
	sw	$ra, 0x14($sp)
	lui	$a0, 0x8036
	lui	$a1, 0x8033
#This function is called from Behavior  bhvPokey
#It has virtual address 0x802FE3B0 and rom address 0xB93B0
 bhv_pokey_update:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$t7, 0x8036
#This function is called from Behavior  bhvTTCMovingBar
#It has virtual address 0x803071B8 and rom address 0xC21B8
 bhv_ttc_moving_bar_init:
	addiu	$sp, $sp, -8
	lui	$t6, 0x8036
	lh	$t6, 0x1258($t6)
	lui	$a0, 0x8033
#This function is called from Behavior  bhvTTCMovingBar
#It has virtual address 0x80307670 and rom address 0xC2670
 bhv_ttc_moving_bar_update:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$t6, 0x8036
#This function is called from Behavior  bhvTTCRotatingSolid
#It has virtual address 0x8030699C and rom address 0xC199C
 bhv_ttc_rotating_solid_init:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
#This function is called from Behavior  bhvTTCRotatingSolid
#It has virtual address 0x80306A38 and rom address 0xC1A38
 bhv_ttc_rotating_solid_update:
	addiu	$sp, $sp, -0x30
	sw	$ra, 0x1c($sp)
	sdc1	$f20, 0x10($sp)
	lui	$t6, 0x8036
#This function is called from Behavior  bhvTTCCog
#It has virtual address 0x80307760 and rom address 0xC2760
 bhv_ttc_cog_init:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
#This function is called from Behavior  bhvTTCCog
#It has virtual address 0x803077E0 and rom address 0xC27E0
 bhv_ttc_cog_update:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s1, 0x18($sp)
	sw	$s0, 0x14($sp)
#This function is called from Behavior  bhvTTCElevator
#It has virtual address 0x80307AE4 and rom address 0xC2AE4
 bhv_ttc_elevator_init:
	addiu	$sp, $sp, -8
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lw	$t7, 0x188($t6)
#This function is called from Behavior  bhvTTCElevator
#It has virtual address 0x80307B58 and rom address 0xC2B58
 bhv_ttc_elevator_update:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$t7, 0x8036
	lh	$t7, 0x1258($t7)
#This function is called from Behavior  bhvPiranhaPlant
#It has virtual address 0x802BE5A0 and rom address 0x795A0
 bhv_piranha_plant_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$a0, 0x8033
	jal	 cur_obj_call_action_function
#This function is called from Behavior  bhvSmallWhomp
#It has virtual address 0x802C79D8 and rom address 0x829D8
 bhv_whomp_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	jal	 cur_obj_update_floor_and_walls
	nop	
#This function is called from Behavior  bhvKoopa
#It has virtual address 0x802FBC4C and rom address 0xB6C4C
 bhv_koopa_init:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$t6, 0x8036
#This function is called from Behavior  bhvKoopa
#It has virtual address 0x802FD7F8 and rom address 0xB87F8
 bhv_koopa_update:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$t7, 0x8036
#This function is called from Behavior  bhvGhostHuntBoo
#It has virtual address 0x802C3440 and rom address 0x7E440
 bhv_boo_init:
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lw	$t7, 0xc8($t6)
	sw	$t7, 0x110($t6)
#This function is called from Behavior  bhvGhostHuntBoo
#It has virtual address 0x802C4824 and rom address 0x7F824
 bhv_boo_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	jal	 cur_obj_update_floor_and_walls
	nop	
#This function is called from Behavior  bhvGhostHuntBigBoo
#It has virtual address 0x802C4F30 and rom address 0x7FF30
 bhv_big_boo_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$a0, 0x8036
	lui	$a1, 0x8033
#This function is called from Behavior  bhvChainChomp
#It has virtual address 0x80300E40 and rom address 0xBBE40
 bhv_chain_chomp_update:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$t6, 0x8036
#This function is called from Behavior  bhvOpenableGrill
#It has virtual address 0x802C26F8 and rom address 0x7D6F8
 bhv_openable_grill_loop:
	addiu	$sp, $sp, -0x40
	sw	$ra, 0x2c($sp)
	sw	$s0, 0x28($sp)
	lui	$t6, 0x8036
#This function is called from Behavior  bhvEyerokBoss
#It has virtual address 0x8030EA9C and rom address 0xC9A9C
 bhv_eyerok_boss_loop:
	addiu	$sp, $sp, -0x18
	sw	$ra, 0x14($sp)
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
#This function is called from Behavior  Bhv_Custom_0x13005748
#It has virtual address 0x804060E0 and rom address 0x12060E0
 Func_Custom_0x804060e0:
	lui	$t8, 0x8036
	lw	$t8, 0x1160($t8)
	lbu	$t7, 0x18a($t8)
	lui	$t6, 0x8034
#This function is called from Behavior  bhvWigglerHead
#It has virtual address 0x80302154 and rom address 0xBD154
 bhv_wiggler_update:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$t6, 0x8036
#This function is called from Behavior  bhvBobBowlingBallSpawner
#It has virtual address 0x802EEEB4 and rom address 0xA9EB4
 bhv_generic_bowling_ball_spawner_init:
	addiu	$sp, $sp, -8
	lui	$t6, 0x8036
	lw	$t6, 0x1160($t6)
	lw	$a0, 0x144($t6)
#This function is called from Behavior  bhvBobBowlingBallSpawner
#It has virtual address 0x802EEF9C and rom address 0xA9F9C
 bhv_generic_bowling_ball_spawner_loop:
	addiu	$sp, $sp, -0x28
	sw	$ra, 0x1c($sp)
	sdc1	$f20, 0x10($sp)
	lui	$t6, 0x8036
#This function is called from Behavior  bhvKingBobomb
#It has virtual address 0x802A8064 and rom address 0x63064
 bhv_king_bobomb_loop:
	addiu	$sp, $sp, -0x38
	sw	$ra, 0x1c($sp)
	sw	$s0, 0x18($sp)
	lui	$at, 0x41a0
#This function is called from Behavior  bhvCheckpoint_Flag_MOP
#It has virtual address 0x800C4114 and rom address 0xC4114
Func_Custom_0x800c4114:
	jal	 mr_blizzard_spawn_white_particles
	addiu	$a3, $zero, 0xa
	lui	$a0, 0x303c
	jal	 create_sound_spawner
#This function is called from Behavior  bhvSandBlock_MOP
#It has virtual address 0x800AA760 and rom address 0xAA760
Func_Custom_0x800aa760:
	lui	$v1, 0x8036
	lw	$v1, 0x1160($v1)
	lw	$t0, 0x154($v1)
	lw	$t1, 0x180($v1)

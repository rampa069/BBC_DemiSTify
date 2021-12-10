	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.global	_LBA2MSF
_LBA2MSF:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r2

						//../DeMiSTify/firmware/cue_parser.c, line 70
						//Call division routine
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 64
						// reg r3 - only match against tmp
	//mt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	75
	mr	r2
	.lipcrel	_div_s32bys32
	add	r7
	mt	r0
	mr	r2
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 70
						//Call division routine
	//mt
	stdec	r6
						// (obj to tmp) flags 4a type 3
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	60
	mr	r2
	.lipcrel	_div_s32bys32
	add	r7
	mt	r0
	mr	r1
	ldinc	r6
	mr	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 70
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// deref
						// var FIXME - deref?
						// reg - auto
	.liconst	8
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 4a type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 71
						//Call division routine
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 74
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	60
	mr	r2
	.lipcrel	_div_s32bys32
	add	r7
	mt	r1
	mr	r2
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 71
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// var, auto|reg
	.liconst	8
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 71
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r1
						// allocreg r2

						//../DeMiSTify/firmware/cue_parser.c, line 72
						// Q1 disposable
						//Call division routine
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 74
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	75
	mr	r2
	.lipcrel	_div_s32bys32
	add	r7
	mt	r1
	mr	r2
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 72
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type a
						// var, auto|reg
	.liconst	8
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 72
						// Q1 disposable
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r1
						// freereg r3
	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1
	.global	_MSF2LBA
_MSF2LBA:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type 101
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 76
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 64
						// var, auto|reg
						// matchobj comparing flags 1 with 64
	.liconst	8
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 76
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	75
	mul	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/cue_parser.c, line 76
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	12
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 76
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 2
						// reg r2 - only match against tmp
	//mt
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/cue_parser.c, line 76
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 66 with 74
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 76
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	4500
	mul	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 76
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/cue_parser.c, line 76
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	150
	sub	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 76
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// freereg r1
						// freereg r3
	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.2
l6:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-4
	add	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type a
						// matchobj comparing flags 64 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r2

						//../DeMiSTify/firmware/cue_parser.c, line 82
						// (test)
						// (obj to tmp) flags 62 type 301
						// matchobj comparing flags 98 with 64
						// deref 
	byt
	ld	r3

						//../DeMiSTify/firmware/cue_parser.c, line 82
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l10
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 82
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 62 type 301
						// matchobj comparing flags 98 with 98

			// required value found in tmp
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 82
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 98 with 98
						// deref 
	//nop
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	48
	sgn
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 82
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l10
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 82
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 98 with 1
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	57
	sgn
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 82
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l10
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 82
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r3
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 82
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type 3
						// matchobj comparing flags 98 with 1
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	48
	sub	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 82
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	10
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 82
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// deref
						// var FIXME - deref?
						// reg - auto
	.liconst	20
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 4a type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 82
						//pcreltotemp
	.lipcrel	l13
	add	r7
l10: # 

						//../DeMiSTify/firmware/cue_parser.c, line 82
						//setreturn
						// (obj to r0) flags 1 type 101
						// const
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/cue_parser.c, line 83
						//pcreltotemp
	.lipcrel	l7
	add	r7
l13: # 

						//../DeMiSTify/firmware/cue_parser.c, line 83
						// (test)
						// (obj to tmp) flags 62 type 301
						// deref 
	byt
	ld	r3

						//../DeMiSTify/firmware/cue_parser.c, line 83
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l15
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 83
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 62 type 301
						// matchobj comparing flags 98 with 98

			// required value found in tmp
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 83
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 98 with 98
						// deref 
	//nop
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	48
	sgn
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 83
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l15
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 83
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 98 with 1
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	57
	sgn
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 83
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l15
		add	r7
						// freereg r2

						//../DeMiSTify/firmware/cue_parser.c, line 83
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r3
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 83
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type 3
						// matchobj comparing flags 98 with 1
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	48
	sub	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/cue_parser.c, line 83
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 22 type 101
						// matchobj comparing flags 34 with 1
						// deref 
						// (prepobj tmp)
 						// matchobj comparing flags 162 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 1
	.liconst	20
	ldidx	r6
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 83
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 34
						// reg r2 - only match against tmp
	//mt
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/cue_parser.c, line 83
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// matchobj comparing flags 162 with 74
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 74
	.liconst	20
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 4a type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 83
						//pcreltotemp
	.lipcrel	l18
	add	r7
l15: # 
						// allocreg r2

						//../DeMiSTify/firmware/cue_parser.c, line 83
						//setreturn
						// (obj to r0) flags 1 type 101
						// const
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/cue_parser.c, line 84
						//pcreltotemp
	.lipcrel	l7
	add	r7
l18: # 

						//../DeMiSTify/firmware/cue_parser.c, line 84
						// (test)
						// (obj to tmp) flags 62 type 301
						// deref 
	byt
	ld	r3

						//../DeMiSTify/firmware/cue_parser.c, line 84
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l20
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 84
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 301
						// matchobj comparing flags 98 with 98

			// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 84
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	58
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 84
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l20
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 84
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 84
						//pcreltotemp
	.lipcrel	l22
	add	r7
l20: # 

						//../DeMiSTify/firmware/cue_parser.c, line 84
						//setreturn
						// (obj to r0) flags 1 type 101
						// const
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/cue_parser.c, line 85
						//pcreltotemp
	.lipcrel	l7
	add	r7
l22: # 

						//../DeMiSTify/firmware/cue_parser.c, line 85
						// (test)
						// (obj to tmp) flags 62 type 301
						// deref 
	byt
	ld	r3

						//../DeMiSTify/firmware/cue_parser.c, line 85
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l24
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 85
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 62 type 301
						// matchobj comparing flags 98 with 98

			// required value found in tmp
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 85
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 98 with 98
						// deref 
	//nop
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	48
	sgn
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 85
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l24
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 85
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 98 with 1
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	57
	sgn
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 85
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l24
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 85
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r3
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 85
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type 3
						// matchobj comparing flags 98 with 1
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	48
	sub	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 85
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	10
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 85
						// (bitwise/arithmetic) 	//ops: 0, 0, 5
						// (obj to r4) flags 2 type a
						// var, auto|reg
	.liconst	20
	ldidx	r6
	mr	r4
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r4
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 85
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 85
						//pcreltotemp
	.lipcrel	l27
	add	r7
l24: # 

						//../DeMiSTify/firmware/cue_parser.c, line 85
						//setreturn
						// (obj to r0) flags 1 type 101
						// const
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/cue_parser.c, line 86
						//pcreltotemp
	.lipcrel	l7
	add	r7
l27: # 

						//../DeMiSTify/firmware/cue_parser.c, line 86
						// (test)
						// (obj to tmp) flags 62 type 301
						// deref 
	byt
	ld	r3

						//../DeMiSTify/firmware/cue_parser.c, line 86
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l29
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 86
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 62 type 301
						// matchobj comparing flags 98 with 98

			// required value found in tmp
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 86
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 98 with 98
						// deref 
	//nop
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	48
	sgn
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 86
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l29
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 86
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 98 with 1
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	57
	sgn
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 86
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l29
		add	r7
						// freereg r2

						//../DeMiSTify/firmware/cue_parser.c, line 86
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r3
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 86
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type 3
						// matchobj comparing flags 98 with 1
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	48
	sub	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/cue_parser.c, line 86
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 98 with 1
						// deref 
	byt
	ld	r4
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 86
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 98
						// reg r2 - only match against tmp
	//mt
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/cue_parser.c, line 86
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 74
						// reg r1 - only match against tmp
						// (save temp)store type 1
	byt
	st	r4
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 86
						//pcreltotemp
	.lipcrel	l32
	add	r7
l29: # 
						// allocreg r2

						//../DeMiSTify/firmware/cue_parser.c, line 86
						//setreturn
						// (obj to r0) flags 1 type 101
						// const
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/cue_parser.c, line 87
						//pcreltotemp
	.lipcrel	l7
	add	r7
l32: # 

						//../DeMiSTify/firmware/cue_parser.c, line 87
						// (test)
						// (obj to tmp) flags 62 type 301
						// deref 
	byt
	ld	r3

						//../DeMiSTify/firmware/cue_parser.c, line 87
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l34
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 87
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 301
						// matchobj comparing flags 98 with 98

			// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 87
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	58
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 87
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l34
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 87
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 87
						//pcreltotemp
	.lipcrel	l36
	add	r7
l34: # 

						//../DeMiSTify/firmware/cue_parser.c, line 87
						//setreturn
						// (obj to r0) flags 1 type 101
						// const
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/cue_parser.c, line 88
						//pcreltotemp
	.lipcrel	l7
	add	r7
l36: # 

						//../DeMiSTify/firmware/cue_parser.c, line 88
						// (test)
						// (obj to tmp) flags 62 type 301
						// deref 
	byt
	ld	r3

						//../DeMiSTify/firmware/cue_parser.c, line 88
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l38
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 88
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 62 type 301
						// matchobj comparing flags 98 with 98

			// required value found in tmp
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 88
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	48
	sgn
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 88
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l38
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 88
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	57
	sgn
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 88
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l38
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 88
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r3
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 88
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 66 with 1
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	48
	sub	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 88
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	10
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 88
						// (bitwise/arithmetic) 	//ops: 0, 0, 6
						// (obj to r5) flags 2 type a
						// var, auto|reg
	.liconst	20
	ldidx	r6
	mr	r5
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	add	r5
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 88
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 88
						//pcreltotemp
	.lipcrel	l41
	add	r7
l38: # 

						//../DeMiSTify/firmware/cue_parser.c, line 88
						//setreturn
						// (obj to r0) flags 1 type 101
						// const
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/cue_parser.c, line 89
						//pcreltotemp
	.lipcrel	l7
	add	r7
l41: # 

						//../DeMiSTify/firmware/cue_parser.c, line 89
						// (test)
						// (obj to tmp) flags 62 type 301
						// deref 
	byt
	ld	r3

						//../DeMiSTify/firmware/cue_parser.c, line 89
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l43
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 89
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 62 type 301
						// matchobj comparing flags 98 with 98

			// required value found in tmp
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 89
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 98 with 98
						// deref 
	//nop
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	48
	sgn
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 89
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l43
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 89
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 98 with 1
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	57
	sgn
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 89
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l43
		add	r7
						// freereg r2

						//../DeMiSTify/firmware/cue_parser.c, line 89
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r3
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 89
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type 3
						// matchobj comparing flags 98 with 1
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	48
	sub	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/cue_parser.c, line 89
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 98 with 1
						// deref 
	byt
	ld	r5
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 89
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 98
						// reg r2 - only match against tmp
	//mt
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/cue_parser.c, line 89
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 74
						// reg r1 - only match against tmp
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 89
						//pcreltotemp
	.lipcrel	l46
	add	r7
l43: # 
						// allocreg r2

						//../DeMiSTify/firmware/cue_parser.c, line 89
						//setreturn
						// (obj to r0) flags 1 type 101
						// const
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/cue_parser.c, line 90
						//pcreltotemp
	.lipcrel	l7
	add	r7
l46: # 

						//../DeMiSTify/firmware/cue_parser.c, line 90
						// (test)
						// (obj to tmp) flags 62 type 301
						// deref 
	byt
	ld	r3

						//../DeMiSTify/firmware/cue_parser.c, line 90
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l48
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 90
						//setreturn
						// (obj to r0) flags 1 type 101
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/cue_parser.c, line 91
						//pcreltotemp
	.lipcrel	l7
	add	r7
l48: # 

						//../DeMiSTify/firmware/cue_parser.c, line 91
						//setreturn
						// (obj to r0) flags 1 type 101
						// const
	.liconst	1
	mr	r0
l7: # 
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	.liconst	-4
	sub	r6
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.3
l49:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-8
	add	r6
						// allocreg r5
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 40 type a
						// matchobj comparing flags 64 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
						// allocreg r4
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 98
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 64
						// const
						// matchobj comparing flags 1 with 64
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 99
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

			// required value found in tmp
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
l94: # 
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 102
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_cue_file
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 102
						//call
						//pcreltotemp
	.lipcrel	_FileGetCh
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 102
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r2

						//../DeMiSTify/firmware/cue_parser.c, line 104
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	0
	sgn
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 104
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l95
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 104
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	10
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 104
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l95
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 104
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	32
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 104
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l59
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 104
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	9
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 104
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l59
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 104
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	13
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 104
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l59
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 104
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	10
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 104
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l56
		add	r7
l59: # 

						//../DeMiSTify/firmware/cue_parser.c, line 104
						// (test)
						// (obj to tmp) flags 42 type 101
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//../DeMiSTify/firmware/cue_parser.c, line 104
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l95
		add	r7
l56: # 

						//../DeMiSTify/firmware/cue_parser.c, line 105
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	34
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 105
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l65
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 105
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 66 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 105
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	1
	xor	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 105
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
						//Saving to reg r4
						// (save temp)isreg
	mr	r4
						//save_temp done
						// matchobj comparing flags 1 with 74
	.liconst	255
	and	r4
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 106
						//pcreltotemp
	.lipcrel	l94
	add	r7
l65: # 
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 106
						// (test)
						// (obj to tmp) flags 42 type 101
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//../DeMiSTify/firmware/cue_parser.c, line 106
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l69
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 106
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	97
	sgn
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 106
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l73
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 106
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	122
	sgn
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 106
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l69
		add	r7
l73: # 

						//../DeMiSTify/firmware/cue_parser.c, line 106
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	65
	sgn
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 106
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l72
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 106
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	90
	sgn
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 106
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l69
		add	r7
l72: # 

						//../DeMiSTify/firmware/cue_parser.c, line 106
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	48
	sgn
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 106
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l71
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 106
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	57
	sgn
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 106
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l69
		add	r7
l71: # 

						//../DeMiSTify/firmware/cue_parser.c, line 106
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	91
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 106
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l69
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 106
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	93
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 106
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l69
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 106
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	45
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 106
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l69
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 106
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	95
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 106
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l69
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 106
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	44
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 106
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l69
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 106
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	61
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 106
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l69
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 106
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	126
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 106
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l69
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 106
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	58
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 106
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l69
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 106
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	47
	cmp	r2

						//../DeMiSTify/firmware/cue_parser.c, line 106
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l94
		add	r7
l69: # 

						//../DeMiSTify/firmware/cue_parser.c, line 106
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	63
	sgn
	cmp	r3

						//../DeMiSTify/firmware/cue_parser.c, line 106
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l94
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 106
						// (bitwise/arithmetic) 	//ops: 6, 4, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 1
						// reg r5 - only match against tmp
	mt	r5
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 106
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	1
	add	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 106
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 101
						//pcreltotemp
	.lipcrel	l94
	add	r7
l95: # 
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 108
						// (bitwise/arithmetic) 	//ops: 6, 4, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// reg r5 - only match against tmp
	mt	r5
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 108
						// Z disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 109
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 1
						// reg r2 - only match against tmp
	mt	r2
				// flags 42
	and	r2

						//../DeMiSTify/firmware/cue_parser.c, line 109
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l86
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 109
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	4
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 109
						//pcreltotemp
	.lipcrel	l87
	add	r7
l86: # 

						//../DeMiSTify/firmware/cue_parser.c, line 109
						// (test)
						// (obj to tmp) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
				// flags 42
	and	r3

						//../DeMiSTify/firmware/cue_parser.c, line 109
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l89
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 109
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 138 with 66
						// var, auto|reg
						// matchobj comparing flags 1 with 66
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 138
						// matchobj comparing flags 1 with 138
						// const
						// matchobj comparing flags 1 with 138
						// matchobj comparing flags 1 with 138
	.liconst	3
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 109
						//pcreltotemp
	.lipcrel	l90
	add	r7
l89: # 

						//../DeMiSTify/firmware/cue_parser.c, line 109
						// (test)
						// (obj to tmp) flags 42 type 101
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//../DeMiSTify/firmware/cue_parser.c, line 109
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l92
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 109
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	1
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 109
						//pcreltotemp
	.lipcrel	l93
	add	r7
l92: # 

						//../DeMiSTify/firmware/cue_parser.c, line 109
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)store type 3
	st	r6
						//save_temp done
l93: # 

						//../DeMiSTify/firmware/cue_parser.c, line 109
						// (a/p assign)
						// (prepobj r0)
 						// var, auto|reg
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 106 with 138
						// matchobj comparing flags 106 with 138
						// deref 
	ld	r6
						// (save temp)store type 3
	st	r0
						//save_temp done
l90: # 

						//../DeMiSTify/firmware/cue_parser.c, line 109
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags a type 3
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r6
						//save_temp done
l87: # 

						//../DeMiSTify/firmware/cue_parser.c, line 109
						//setreturn
						// (obj to r0) flags 6a type 3
						// deref 
	ld	r6
	mr	r0
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 106
						// matchobj comparing flags 1 with 106
	.liconst	-8
	sub	r6
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.4
	.global	_cue_open
_cue_open:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
						// allocreg r5
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
						// allocreg r4
						// allocreg r3

						//../DeMiSTify/firmware/cue_parser.c, line 117
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 64
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 64
						// extern (offset 0)
	.liabs	_toc
						// extern pe is varadr
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//../DeMiSTify/firmware/cue_parser.c, line 117
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 117
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	56
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 117
						//call
						//pcreltotemp
	.lipcrel	___memset
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r3
						// freereg r2
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 122
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type a
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 122
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 66
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 66
						// extern (offset 0)
	.liabs	_cue_file
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 122
						//call
						//pcreltotemp
	.lipcrel	_FileOpen
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 122
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 74 with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 122
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l99
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 124
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	1
						// (save temp)isreg
	mr	r4
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 126
						//pcreltotemp
	.lipcrel	l105
	add	r7
						// freereg r1
l99: # 
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 127
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 127
						//call
						//pcreltotemp
	.lipcrel	_cue_parse
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 127
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//../DeMiSTify/firmware/cue_parser.c, line 128
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 66
						// reg r4 - only match against tmp
				// flags 42
	and	r4

						//../DeMiSTify/firmware/cue_parser.c, line 128
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l102
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 129
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 66
						// extern
	.liabs	_toc, 4
						//extern deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 129
						//call
						//pcreltotemp
	.lipcrel	_cue_parse
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 129
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4
l102: # 
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 130
						// (test)
						// (obj to tmp) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//../DeMiSTify/firmware/cue_parser.c, line 130
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l104
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 131
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 66
						// extern (offset 0)
	.liabs	_toc
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 130
						// extern
	.liabs	_toc, 20
						//extern deref
						//sizemod based on type 0x3
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 133
						//pcreltotemp
	.lipcrel	l105
	add	r7
l104: # 

						//../DeMiSTify/firmware/cue_parser.c, line 133
						// (a/p assign)
						// (prepobj r0)
 						// extern (offset 4)
	.liabs	_toc, 4
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
l105: # 

						//../DeMiSTify/firmware/cue_parser.c, line 135
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
	mr	r0
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.5
	.global	_cue_parse
_cue_parse:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-52
	add	r6
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	44
	addt	r6
						//sizemod based on type 0x3
	stmpdec	r1
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 146
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 101
						// const
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 146
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1

			// required value found in tmp
						// (save temp)isreg
	mr	r4
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 146
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1

			// required value found in tmp
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 146
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	1
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 146
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						//auto: flags: 82, comparing 2, 0 with 1, 1
						//Fuzzy match found, offset: 0 (varadr: 1)
	.liconst	0
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1

			// required value found in tmp
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 147
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						//auto: flags: 82, comparing 4, 0 with 2, 1
						//Fuzzy match found, offset: 1 (varadr: 1)
	.liconst	1
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 147
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						//auto: flags: 82, comparing 8, 0 with 4, 0
						//Fuzzy match found, offset: 4 (varadr: 1)
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 149
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						//auto: flags: 82, comparing 12, 0 with 8, 0
						//Fuzzy match found, offset: 4 (varadr: 1)
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 150
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						//auto: flags: 82, comparing 16, 0 with 12, 0
						//Fuzzy match found, offset: 4 (varadr: 1)
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 150
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						//auto: flags: 82, comparing 20, 0 with 16, 0
						//Fuzzy match found, offset: 4 (varadr: 1)
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 154
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 130
						// extern
	.liabs	_cue_file, 8
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../DeMiSTify/firmware/cue_parser.c, line 154
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l109
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 155
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 130
	.liconst	1
	mr	r0

						//../DeMiSTify/firmware/cue_parser.c, line 163
						//pcreltotemp
	.lipcrel	l106
	add	r7
l109: # 

						//../DeMiSTify/firmware/cue_parser.c, line 163
						// (a/p assign)
						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_cue_file
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 163
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						//extern: comparing 16 with 0
						//Fuzzy match found, offset: 16 (varadr: 1)
	.liconst	16
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 163
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						//extern: comparing 4 with 16
						//Fuzzy match found, offset: -12 (varadr: 1)
	.liconst	-12
	add	r0

						// required value found in r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 130
						// extern
	.liabs	_cue_file, 12
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 165
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 2
						// matchobj comparing flags 130 with 130
						// static
	.liabs	l1,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 167
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						// extern (offset 20)
	.liabs	_toc, 20
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l218: # 
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 172
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_cueword
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 172
						//call
						//pcreltotemp
	.lipcrel	l49
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 172
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// var, auto|reg
	.liconst	28
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/cue_parser.c, line 173
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 2

			// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
	.liconst	3
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 173
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l115
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 175
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 66 with 1
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r3
						//save_temp done
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 66
						// reg r3 - only match against tmp
	//mt
				// flags 4a
	and	r3
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l116
		add	r7
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	1
	sub	r3
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l132
		add	r7
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

			// required value found in tmp
	sub	r3
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l147
		add	r7
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

			// required value found in tmp
	sub	r3
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l172
		add	r7
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

			// required value found in tmp
	sub	r3
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l176
		add	r7
						//pcreltotemp
	.lipcrel	l115
	add	r7
						// freereg r1
						// freereg r2
l116: # 

						//../DeMiSTify/firmware/cue_parser.c, line 177
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 101
						// const
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r2

						//../DeMiSTify/firmware/cue_parser.c, line 178
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 1
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 1
						// extern (offset 0)
	.liabs	_cueword
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 178
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 130
						// static
	.liabs	l119,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 178
						//call
						//pcreltotemp
	.lipcrel	___strcmp
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 178
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 178
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l118
		add	r7
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 178
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	1
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 179
						//pcreltotemp
	.lipcrel	l115
	add	r7
						// freereg r1
						// freereg r2
l118: # 
						// allocreg r2

						//../DeMiSTify/firmware/cue_parser.c, line 179
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_cueword
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 179
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 130
						// static
	.liabs	l123,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 179
						//call
						//pcreltotemp
	.lipcrel	___strcmp
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 179
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 179
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l122
		add	r7
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 179
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	2
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 180
						//pcreltotemp
	.lipcrel	l115
	add	r7
						// freereg r1
						// freereg r2
l122: # 
						// allocreg r2

						//../DeMiSTify/firmware/cue_parser.c, line 180
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_cueword
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 180
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 130
						// static
	.liabs	l127,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 180
						//call
						//pcreltotemp
	.lipcrel	___strcmp
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 180
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 180
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l126
		add	r7
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 180
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	3
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 181
						//pcreltotemp
	.lipcrel	l115
	add	r7
						// freereg r1
						// freereg r2
l126: # 
						// allocreg r2

						//../DeMiSTify/firmware/cue_parser.c, line 181
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_cueword
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 181
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 130
						// static
	.liabs	l131,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 181
						//call
						//pcreltotemp
	.lipcrel	___strcmp
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 181
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 181
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l115
		add	r7
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 181
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	4
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 182
						//pcreltotemp
	.lipcrel	l115
	add	r7
l132: # 

						//../DeMiSTify/firmware/cue_parser.c, line 184
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 42 type 101
						// reg r4 - only match against tmp
	mt	r4
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
	.liconst	32
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/cue_parser.c, line 184
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 2

			// required value found in r0
	mt	r0
				//return 0
				// flags 2
	//mr
	and	r0

						//../DeMiSTify/firmware/cue_parser.c, line 184
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l134
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 185
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 2
						// matchobj comparing flags 130 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 187
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 130
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
	.liconst	2
						//sizemod based on type 0x101
	byt
	ldidx	r6

						//../DeMiSTify/firmware/cue_parser.c, line 187
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l146
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 197
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 130
						// extern
	.liabs	_toc, 44
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../DeMiSTify/firmware/cue_parser.c, line 197
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l139
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 198
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 2
						// matchobj comparing flags 130 with 130
						//auto: flags: 82, comparing 2, 0 with 8, 0
						//Fuzzy match found, offset: -6 (varadr: 1)
	.liconst	-6
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
	.liconst	1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 200
						//pcreltotemp
	.lipcrel	l146
	add	r7
						// freereg r1
l139: # 

						//../DeMiSTify/firmware/cue_parser.c, line 201
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_cueword
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 201
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 130
						//extern: comparing 36 with 0
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 130
						//extern: comparing 36 with 0
						// extern (offset 36)
	.liabs	_toc, 36
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 201
						//call
						//pcreltotemp
	.lipcrel	_FileOpen
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 201
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 74 with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 201
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l142
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 202
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 74
						// var, auto|reg
						// matchobj comparing flags 1 with 74
	.liconst	2
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 204
						//pcreltotemp
	.lipcrel	l143
	add	r7
l142: # 

						//../DeMiSTify/firmware/cue_parser.c, line 204
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 101
						// const
	.liconst	4
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done
						// freereg r1
l143: # 

						//../DeMiSTify/firmware/cue_parser.c, line 206
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 206
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 130
						//extern: comparing 0 with 0
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 130
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_cue_file
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 206
						//call
						//pcreltotemp
	.lipcrel	_FileReadSector
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 210
						//pcreltotemp
	.lipcrel	l146
	add	r7
l134: # 
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 210
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	28
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 210
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l146
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 212
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done
l146: # 

						//../DeMiSTify/firmware/cue_parser.c, line 214
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 101
						// const
	.liconst	1
	add	r4
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 215
						//pcreltotemp
	.lipcrel	l115
	add	r7
l147: # 

						//../DeMiSTify/firmware/cue_parser.c, line 217
						// (a/p assign)
						// (prepobj r0)
 						// var, auto|reg
	.liconst	20
	addt	r6
	mr	r0

						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 130
						// var, auto|reg
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	32
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 218
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 42 type 101
						// matchobj comparing flags 66 with 2
						// matchobj comparing flags 66 with 130
						// reg r4 - only match against tmp
	mt	r4
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
	.liconst	32
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/cue_parser.c, line 218
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 2

			// required value found in r0
	mt	r0
				//return 0
				// flags 2
	//mr
	and	r0

						//../DeMiSTify/firmware/cue_parser.c, line 218
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l149
		add	r7
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 219
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	10
	stdec	r6

						//../DeMiSTify/firmware/cue_parser.c, line 219
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
	.liconst	0
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 219
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 2
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 2
						// extern (offset 0)
	.liabs	_cueword
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 219
						//call
						//pcreltotemp
	.lipcrel	_strtol
	add	r7
						// Flow control - popping 8 + 0 bytes
						// matchobj comparing flags 1 with 2
	.liconst	8
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 219
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x4, flags 0x2
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	32
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//../DeMiSTify/firmware/cue_parser.c, line 221
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 130
						// var, auto|reg
						// matchobj comparing flags 1 with 130
	.liconst	28
						//sizemod based on type 0x3
	ldidx	r6

						//../DeMiSTify/firmware/cue_parser.c, line 221
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l150
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 221
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 2

			// required value found in tmp
	mr	r0
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	99
	sgn
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 221
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l150
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 221
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 221
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	28
						//sizemod based on type 0x3
	ldidx	r6
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 221
	cond	EQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l151
		add	r7
l150: # 
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 221
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 101
						// const
	.liconst	2
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 221
						//pcreltotemp
	.lipcrel	l157
	add	r7
l151: # 

						//../DeMiSTify/firmware/cue_parser.c, line 221
						// (a/p assign)
						// (prepobj r0)
 						// var, auto|reg
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 130
						// var, auto|reg
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	28
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 222
						//pcreltotemp
	.lipcrel	l157
	add	r7
l149: # 

						//../DeMiSTify/firmware/cue_parser.c, line 222
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	28
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 222
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l157
		add	r7
						// freereg r1
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/cue_parser.c, line 224
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 1
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 1
						// extern (offset 0)
	.liabs	_cueword
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 224
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 130
						// static
	.liabs	l160,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 224
						//call
						//pcreltotemp
	.lipcrel	___strcmp
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 224
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 224
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l159
		add	r7
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 226
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 74
						// var, auto|reg
						// matchobj comparing flags 1 with 74
	.liconst	32
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	2352
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 227
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						//auto: flags: 82, comparing 36, 0 with 32, 0
						//Fuzzy match found, offset: 4 (varadr: 1)
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 231
						//pcreltotemp
	.lipcrel	l169
	add	r7
						// freereg r1
						// freereg r2
l159: # 
						// allocreg r2

						//../DeMiSTify/firmware/cue_parser.c, line 231
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_cueword
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 231
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 130
						// static
	.liabs	l164,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 231
						//call
						//pcreltotemp
	.lipcrel	___strcmp
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 231
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 231
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l163
		add	r7
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 233
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 74
						// var, auto|reg
						// matchobj comparing flags 1 with 74
	.liconst	32
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	2352
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 234
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						//auto: flags: 82, comparing 36, 0 with 32, 0
						//Fuzzy match found, offset: 4 (varadr: 1)
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 238
						//pcreltotemp
	.lipcrel	l169
	add	r7
						// freereg r1
						// freereg r2
l163: # 
						// allocreg r2

						//../DeMiSTify/firmware/cue_parser.c, line 238
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_cueword
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 238
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 130
						// static
	.liabs	l168,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 238
						//call
						//pcreltotemp
	.lipcrel	___strcmp
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 238
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 238
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l167
		add	r7
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 240
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 74
						// var, auto|reg
						// matchobj comparing flags 1 with 74
	.liconst	32
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	2048
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 241
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						//auto: flags: 82, comparing 36, 0 with 32, 0
						//Fuzzy match found, offset: 4 (varadr: 1)
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 245
						//pcreltotemp
	.lipcrel	l169
	add	r7
l167: # 

						//../DeMiSTify/firmware/cue_parser.c, line 246
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 101
						// const
	.liconst	2
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done
l169: # 

						//../DeMiSTify/firmware/cue_parser.c, line 248
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	40
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 248
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l171
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 250
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 2
						// extern (offset 28)
	.liabs	_toc, 28
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 130
						// var, auto|reg
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	32
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 251
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 2
						// matchobj comparing flags 130 with 130
						//extern: comparing 24 with 28
						//Fuzzy match found, offset: -4 (varadr: 1)
	.liconst	-4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 130
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
	.liconst	36
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done
l171: # 

						//../DeMiSTify/firmware/cue_parser.c, line 254
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 101
						// const
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done
l157: # 

						//../DeMiSTify/firmware/cue_parser.c, line 256
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 101
						// const
	.liconst	1
	add	r4
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 257
						//pcreltotemp
	.lipcrel	l115
	add	r7
						// freereg r1
l172: # 
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 260
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// var, auto|reg
	.liconst	44
	addt	r6
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 260
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 130
						// extern (offset 0)
	.liabs	_cueword
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 260
						//call
						//pcreltotemp
	.lipcrel	l6
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 260
						// (test)
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 74 with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 260
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l174
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 261
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	2
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 262
						//pcreltotemp
	.lipcrel	l175
	add	r7
						// freereg r1
l174: # 
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 263
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	46
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 263
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 263
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 74
						// var, auto|reg
						// matchobj comparing flags 1 with 74
	.liconst	49
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 263
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 263
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 74
						// var, auto|reg
						// matchobj comparing flags 1 with 74
	.liconst	52
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 263
						//call
						//pcreltotemp
	.lipcrel	_MSF2LBA
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 263
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/cue_parser.c, line 263
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	150
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 263
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 74
						// matchobj comparing flags 2 with 74
						// var, auto|reg
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	12
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1
l175: # 
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 265
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 101
						// const
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 266
						//pcreltotemp
	.lipcrel	l115
	add	r7
l176: # 

						//../DeMiSTify/firmware/cue_parser.c, line 268
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 42 type 101
						// reg r4 - only match against tmp
	mt	r4
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
	.liconst	32
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/cue_parser.c, line 268
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 2

			// required value found in r0
	mt	r0
				//return 0
				// flags 2
	//mr
	and	r0

						//../DeMiSTify/firmware/cue_parser.c, line 268
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l178
		add	r7
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 270
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	10
	stdec	r6

						//../DeMiSTify/firmware/cue_parser.c, line 270
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
	.liconst	0
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 270
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 2
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 2
						// extern (offset 0)
	.liabs	_cueword
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 270
						//call
						//pcreltotemp
	.lipcrel	_strtol
	add	r7
						// Flow control - popping 8 + 0 bytes
						// matchobj comparing flags 1 with 2
	.liconst	8
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 270
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/cue_parser.c, line 270
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 4 to 101
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 74
	.liconst	5
	addt	r6
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 271
						//pcreltotemp
	.lipcrel	l181
	add	r7
l178: # 
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 271
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	28
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 271
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l181
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 272
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 1
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	44
	addt	r6
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 272
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 130
						// extern (offset 0)
	.liabs	_cueword
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 272
						//call
						//pcreltotemp
	.lipcrel	l6
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 272
						// (test)
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 74 with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 272
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l183
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 273
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	2
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 274
						//pcreltotemp
	.lipcrel	l192
	add	r7
						// freereg r1
l183: # 
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 275
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	46
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 275
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 275
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 74
						// var, auto|reg
						// matchobj comparing flags 1 with 74
	.liconst	49
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 275
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 275
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 74
						// var, auto|reg
						// matchobj comparing flags 1 with 74
	.liconst	52
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 275
						//call
						//pcreltotemp
	.lipcrel	_MSF2LBA
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 275
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	32
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/cue_parser.c, line 276
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 101
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 2
	.liconst	1
						//sizemod based on type 0x101
	byt
	ldidx	r6
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	52
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/cue_parser.c, line 276
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 2

			// required value found in r0
	mt	r0
				//return 0
				// flags 2
	//mr
	and	r0

						//../DeMiSTify/firmware/cue_parser.c, line 276
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l186
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 278
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	40
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 278
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 278
	cond	NEQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l192
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 278
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_toc, 20
						//extern deref
						//sizemod based on type 0x3
	ldt

						//../DeMiSTify/firmware/cue_parser.c, line 278
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l192
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 280
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	28
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	150
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 280
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// matchobj comparing flags 74 with 2
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 74
						// matchobj comparing flags 2 with 74
						// var, auto|reg
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// extern (offset 20)
	.liabs	_toc, 24
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 286
						//pcreltotemp
	.lipcrel	l192
	add	r7
l186: # 
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 286
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	48
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 286
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l192
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 288
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	40
						//sizemod based on type 0x3
	ldidx	r6
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 288
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l194
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 289
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	28
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	150
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 289
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 74
						// matchobj comparing flags 2 with 74
						// var, auto|reg
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// extern (offset 16)
	.liabs	_toc, 20
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1
l194: # 
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 293
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	sgn
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 293
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l196
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 294
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	28
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	12
						//sizemod based on type 0x3
	ldidx	r6
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	52
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/cue_parser.c, line 297
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 2
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	40
						//sizemod based on type 0x3
	ldidx	r6
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 297
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l198
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 300
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	48
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	20
						//sizemod based on type 0x3
	ldidx	r6
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 300
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 74
						// matchobj comparing flags 2 with 74
						// var, auto|reg
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
	.liconst	16
						//sizemod based on type 0x3
	ldidx	r6
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// extern (offset 12)
	.liabs	_toc, 16
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1
l198: # 
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 302
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// var, auto|reg
	.liconst	40
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 302
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 302
	cond	NEQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l200
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 302
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_toc, 20
						//extern deref
						//sizemod based on type 0x3
	ldt

						//../DeMiSTify/firmware/cue_parser.c, line 302
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l200
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 303
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	28
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	150
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 303
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 303
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 74 with 2
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
	.liconst	1
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// extern (offset 20)
	.liabs	_toc, 24
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1
l200: # 
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 306
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// var, auto|reg
	.liconst	48
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	20
						//sizemod based on type 0x3
	ldidx	r6
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 306
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 74
						// matchobj comparing flags 2 with 74
						// var, auto|reg
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
	.liconst	16
						//sizemod based on type 0x3
	ldidx	r6
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	20
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 309
						//pcreltotemp
	.lipcrel	l204
	add	r7
l196: # 
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 310
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// var, auto|reg
	.liconst	28
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	150
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 310
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
						//sizemod based on type 0x3
	ldidx	r6
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 310
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 74
						// matchobj comparing flags 2 with 74
						// var, auto|reg
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
	.liconst	16
						//sizemod based on type 0x3
	ldidx	r6
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	20
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 314
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 2
	.liconst	40
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 314
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l204
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 315
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// extern (offset 12)
	.liabs	_toc, 12
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 130
						// var, auto|reg
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	16
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done
l204: # 

						//../DeMiSTify/firmware/cue_parser.c, line 317
						// (a/p assign)
						// (prepobj r0)
 						// var, auto|reg
	.liconst	12
	addt	r6
	mr	r0

						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 130
						// var, auto|reg
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	28
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done
l192: # 

						//../DeMiSTify/firmware/cue_parser.c, line 321
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 101
						// const
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done
l181: # 

						//../DeMiSTify/firmware/cue_parser.c, line 323
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 101
						// const
	.liconst	1
	add	r4
						// (save result) // isreg
l115: # 

						//../DeMiSTify/firmware/cue_parser.c, line 328
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	24
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 328
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l219
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 328
						// (test)
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 98 with 1
						// deref 
	byt
	ld	r6

						//../DeMiSTify/firmware/cue_parser.c, line 328
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l218
		add	r7
						// freereg r1
l219: # 
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 337
						// (test)
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	2
						//sizemod based on type 0x101
	byt
	ldidx	r6

						//../DeMiSTify/firmware/cue_parser.c, line 337
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l209
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 338
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 341
						//pcreltotemp
	.lipcrel	l212
	add	r7
l209: # 

						//../DeMiSTify/firmware/cue_parser.c, line 342
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	40
						//sizemod based on type 0x3
	ldidx	r6
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 342
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l212
		add	r7
						// freereg r1
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/cue_parser.c, line 343
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_toc, 12
						//extern deref
						//sizemod based on type 0x3
	ldt
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						//No need to mask - same size

						//../DeMiSTify/firmware/cue_parser.c, line 343
						// (bitwise/arithmetic) 	//ops: 0, 3, 3
						// WARNING - evading q2 and target collision - check code for correctness.
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_toc, 44
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r0
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 74 with 2
						// matchobj comparing flags 74 with 2
						// reg r2 - only match against tmp
	mt	r2
	sub	r0
						// (save result) // isreg
	mt	r0
	mr	r2
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 343
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 74
						// extern
	.liabs	_toc, 28
						//extern deref
						//sizemod based on type 0x3
	ldt
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//../DeMiSTify/firmware/cue_parser.c, line 343
						// Q1 disposable
						//Call division routine
	mt	r2
	stdec	r6
						// (obj to tmp) flags 4a type 103
						// reg r2 - only match against tmp
	mt	r2
	exg	r1
	mr	r2
	.lipcrel	_div_u32byu32
	add	r7
	mt	r0
	mr	r1
	ldinc	r6
	mr	r2
						// (save result) // isreg
						// freereg r2

						//../DeMiSTify/firmware/cue_parser.c, line 344
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 2 type 3
						// extern
	.liabs	_toc, 16
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 2
						// matchobj comparing flags 74 with 2
						// reg r1 - only match against tmp
	mt	r1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// extern (offset 20)
	.liabs	_toc, 24
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1
l212: # 
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 349
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	40
						//sizemod based on type 0x3
	ldidx	r6
	sgn
	cmp	r0

						//../DeMiSTify/firmware/cue_parser.c, line 349
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l214
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 350
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done
l214: # 

						//../DeMiSTify/firmware/cue_parser.c, line 352
						// (test)
						// (obj to tmp) flags 62 type 101
						// deref 
	byt
	ld	r6

						//../DeMiSTify/firmware/cue_parser.c, line 352
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l216
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 353
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 98
						// extern (offset 4)
	.liabs	_toc, 4
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 354
						//pcreltotemp
	.lipcrel	l217
	add	r7
l216: # 

						//../DeMiSTify/firmware/cue_parser.c, line 355
						// (a/p assign)
						// (prepobj r0)
 						// extern (offset 4)
	.liabs	_toc, 4
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 130
						// var, auto|reg
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l217: # 
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 359
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// var, auto|reg
	.liconst	44
	addt	r6
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 359
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 130
						// extern
	.liabs	_toc, 16
						//extern deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 359
						//call
						//pcreltotemp
	.lipcrel	_LBA2MSF
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 366
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// extern (offset 32)
	.liabs	_toc, 32
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 130
						// var, auto|reg
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	40
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 368
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 101
						// matchobj comparing flags 98 with 2
						// matchobj comparing flags 98 with 130
						// deref 
	byt
	ld	r6
						// (save temp)isreg
	mr	r0
						//save_temp done
						// freereg r1
l106: # 
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	.liconst	-52
	sub	r6
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata.6
	.align	4
l160:
	.byte	65
	.byte	85
	.byte	68
	.byte	73
	.byte	79
	.byte	0
	.section	.rodata.7
	.align	4
l164:
	.byte	77
	.byte	79
	.byte	68
	.byte	69
	.byte	49
	.byte	47
	.byte	50
	.byte	51
	.byte	53
	.byte	50
	.byte	0
	.section	.rodata.8
	.align	4
l168:
	.byte	77
	.byte	79
	.byte	68
	.byte	69
	.byte	49
	.byte	47
	.byte	50
	.byte	48
	.byte	52
	.byte	56
	.byte	0
	.section	.rodata.9
	.align	4
l119:
	.byte	70
	.byte	73
	.byte	76
	.byte	69
	.byte	0
	.section	.rodata.a
	.align	4
l123:
	.byte	84
	.byte	82
	.byte	65
	.byte	67
	.byte	75
	.byte	0
	.section	.rodata.b
	.align	4
l127:
	.byte	80
	.byte	82
	.byte	69
	.byte	71
	.byte	65
	.byte	80
	.byte	0
	.section	.rodata.c
	.align	4
l131:
	.byte	73
	.byte	78
	.byte	68
	.byte	69
	.byte	88
	.byte	0
	//registers used:
		//r1: yes
		//r2: no
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.d
	.global	_cue_gettrackbylba
_cue_gettrackbylba:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r4
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
						// allocreg r3
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 375
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 64
						// const
						// matchobj comparing flags 1 with 64
	.liconst	1
						// (save temp)isreg
	mr	r3
						//save_temp done
l228: # 

						//../DeMiSTify/firmware/cue_parser.c, line 378
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// extern
	.liabs	_toc, 16
						//extern deref
						//sizemod based on type 0x3
	ldt
	sgn
	cmp	r4

						//../DeMiSTify/firmware/cue_parser.c, line 378
	cond	SLT
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l226
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 378
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_toc, 20
						//extern deref
						//sizemod based on type 0x3
	ldt
	sgn
	cmp	r4

						//../DeMiSTify/firmware/cue_parser.c, line 378
	cond	SGT
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l226
		add	r7

						//../DeMiSTify/firmware/cue_parser.c, line 379
						//setreturn
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_toc, 32
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r0

						//../DeMiSTify/firmware/cue_parser.c, line 380
						//pcreltotemp
	.lipcrel	l220
	add	r7
						// freereg r1
l226: # 
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 380
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/cue_parser.c, line 380
						//call
						//pcreltotemp
	.lipcrel	_cue_parse
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/cue_parser.c, line 381
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	add	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/cue_parser.c, line 381
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_toc, 4
						//extern deref
						//sizemod based on type 0x3
	ldt
	sgn
	cmp	r3

						//../DeMiSTify/firmware/cue_parser.c, line 381
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l228
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/cue_parser.c, line 382
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	-1
	mr	r0
l220: # 
						// freereg r1
						// freereg r3
						// freereg r4
	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.data.e
	.align	4
	.global	_cueword
_cueword:
	.byte	0
	.space	63
	.section	.bss.f
	.align	4
	.global	_toc
	.comm	_toc,56
	.section	.bss.10
	.align	4
	.global	_cue_file
	.comm	_cue_file,20
	.section	.data.11
	.align	4
l1:
	.int	0

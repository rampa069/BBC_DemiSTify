	//registers used:
		//r1: no
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
l1:
	stdec	r6
	.liconst	-4
	add	r6

						//../DeMiSTify/firmware/interrupts.c, line 24
						//call
						//pcreltotemp
	.lipcrel	_GetInterrupts
	add	r7
						// Deferred popping of 0 bytes (0 in total)

						//../DeMiSTify/firmware/interrupts.c, line 24
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x403, flags 0x6a
	mt	r0
	st	r6
						// matchobj comparing flags 1 with 106
						// matchobj comparing flags 1 with 106
	.liconst	-4
	sub	r6
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1
	.global	_SetIntHandler
_SetIntHandler:
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/interrupts.c, line 30
						// (a/p assign)
						// (prepobj r0)
 						// deref
						// const to r0
	.liconst	-80
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/interrupts.c, line 31
						// Q1 disposable
						// (a/p assign)
						// (prepobj tmp)
 						// matchobj comparing flags 161 with 1
						// matchobj comparing flags 161 with 1
						// deref
						// const to tmp
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	13
	exg	r1
						//sizemod based on type 0xa
	st	r1
	exg	r1
						// freereg r1
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.ctor .ctor.100.interrupts
	.ref	_intconstructor
	.section	.text.2
	.global	_intconstructor
_intconstructor:
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/interrupts.c, line 38
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// static
	.liabs	l1,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/interrupts.c, line 38
						//call
						//pcreltotemp
	.lipcrel	_SetIntHandler
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
	ldinc	r6
	mr	r7

	//registers used:
		//r1: no
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.3
	.global	_GetInterrupts
_GetInterrupts:
	stdec	r6

						//../DeMiSTify/firmware/interrupts.c, line 44
						//setreturn
						// (obj to r0) flags 21 type 403
						// const/deref
						// (prepobj tmp)
 						// deref
						// const to tmp
	.liconst	-80
						//sizemod based on type 0x403
	ldt
	mr	r0
	ldinc	r6
	mr	r7

	//registers used:
		//r1: no
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.4
	.global	_EnableInterrupts
_EnableInterrupts:
	stdec	r6

						//../DeMiSTify/firmware/interrupts.c, line 50
						// (a/p assign)
						// (prepobj r0)
 						// deref
						// const to r0
	.liconst	-80
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done
	ldinc	r6
	mr	r7

	//registers used:
		//r1: no
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.5
	.global	_DisableInterrupts
_DisableInterrupts:
	stdec	r6

						//../DeMiSTify/firmware/interrupts.c, line 56
						// (a/p assign)
						// (prepobj r0)
 						// deref
						// const to r0
	.liconst	-80
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
	ldinc	r6
	mr	r7


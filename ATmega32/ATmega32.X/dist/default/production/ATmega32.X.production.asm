
dist/default/production/ATmega32.X.production.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 31 00 	jmp	0x62	; 0x62 <__ctors_end>
       4:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
       8:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
       c:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      10:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      14:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      18:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      1c:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      20:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      24:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      28:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      2c:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      30:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      34:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      38:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      3c:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      40:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      44:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      48:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      4c:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      50:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      54:	b5 03       	fmuls	r19, r21
      56:	e8 03       	fmulsu	r22, r16
      58:	1a 04       	cpc	r1, r10
      5a:	49 04       	cpc	r4, r9
      5c:	92 04       	cpc	r9, r2
      5e:	db 04       	cpc	r13, r11
      60:	09 05       	cpc	r16, r9

00000062 <__ctors_end>:
      62:	11 24       	eor	r1, r1
      64:	1f be       	out	0x3f, r1	; 63
      66:	cf e5       	ldi	r28, 0x5F	; 95
      68:	d8 e0       	ldi	r29, 0x08	; 8
      6a:	de bf       	out	0x3e, r29	; 62
      6c:	cd bf       	out	0x3d, r28	; 61

0000006e <__do_copy_data>:
      6e:	11 e0       	ldi	r17, 0x01	; 1
      70:	a0 e6       	ldi	r26, 0x60	; 96
      72:	b0 e0       	ldi	r27, 0x00	; 0
      74:	ec ed       	ldi	r30, 0xDC	; 220
      76:	f4 e1       	ldi	r31, 0x14	; 20
      78:	02 c0       	rjmp	.+4      	; 0x7e <__do_copy_data+0x10>
      7a:	05 90       	lpm	r0, Z+
      7c:	0d 92       	st	X+, r0
      7e:	ac 36       	cpi	r26, 0x6C	; 108
      80:	b1 07       	cpc	r27, r17
      82:	d9 f7       	brne	.-10     	; 0x7a <__do_copy_data+0xc>

00000084 <__do_clear_bss>:
      84:	21 e0       	ldi	r18, 0x01	; 1
      86:	ac e6       	ldi	r26, 0x6C	; 108
      88:	b1 e0       	ldi	r27, 0x01	; 1
      8a:	01 c0       	rjmp	.+2      	; 0x8e <.do_clear_bss_start>

0000008c <.do_clear_bss_loop>:
      8c:	1d 92       	st	X+, r1

0000008e <.do_clear_bss_start>:
      8e:	ad 37       	cpi	r26, 0x7D	; 125
      90:	b2 07       	cpc	r27, r18
      92:	e1 f7       	brne	.-8      	; 0x8c <.do_clear_bss_loop>
      94:	0e 94 1a 0a 	call	0x1434	; 0x1434 <main>
      98:	0c 94 6c 0a 	jmp	0x14d8	; 0x14d8 <_exit>

0000009c <__bad_interrupt>:
      9c:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000a0 <binary_to_int>:
      a0:	fc 01       	movw	r30, r24
      a2:	80 81       	ld	r24, Z
      a4:	88 23       	and	r24, r24
      a6:	e1 f0       	breq	.+56     	; 0xe0 <binary_to_int+0x40>
      a8:	90 e0       	ldi	r25, 0x00	; 0
      aa:	01 c0       	rjmp	.+2      	; 0xae <binary_to_int+0xe>
      ac:	92 2f       	mov	r25, r18
      ae:	21 e0       	ldi	r18, 0x01	; 1
      b0:	29 0f       	add	r18, r25
      b2:	df 01       	movw	r26, r30
      b4:	a2 0f       	add	r26, r18
      b6:	b1 1d       	adc	r27, r1
      b8:	8c 91       	ld	r24, X
      ba:	81 11       	cpse	r24, r1
      bc:	f7 cf       	rjmp	.-18     	; 0xac <binary_to_int+0xc>
      be:	99 23       	and	r25, r25
      c0:	8c f0       	brlt	.+34     	; 0xe4 <binary_to_int+0x44>
      c2:	31 e0       	ldi	r19, 0x01	; 1
      c4:	df 01       	movw	r26, r30
      c6:	a9 0f       	add	r26, r25
      c8:	b1 1d       	adc	r27, r1
      ca:	97 fd       	sbrc	r25, 7
      cc:	ba 95       	dec	r27
      ce:	2c 91       	ld	r18, X
      d0:	20 53       	subi	r18, 0x30	; 48
      d2:	23 9f       	mul	r18, r19
      d4:	80 0d       	add	r24, r0
      d6:	11 24       	eor	r1, r1
      d8:	33 0f       	add	r19, r19
      da:	91 50       	subi	r25, 0x01	; 1
      dc:	9a f7       	brpl	.-26     	; 0xc4 <binary_to_int+0x24>
      de:	08 95       	ret
      e0:	80 e0       	ldi	r24, 0x00	; 0
      e2:	08 95       	ret
      e4:	80 e0       	ldi	r24, 0x00	; 0
      e6:	08 95       	ret

000000e8 <new_operation_reset>:
      e8:	0e 94 a6 05 	call	0xb4c	; 0xb4c <LCD_Clear>
      ec:	60 e0       	ldi	r22, 0x00	; 0
      ee:	80 e0       	ldi	r24, 0x00	; 0
      f0:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
      f4:	e0 91 6d 01 	lds	r30, 0x016D	; 0x80016d <choice_idx>
      f8:	f0 e0       	ldi	r31, 0x00	; 0
      fa:	ee 0f       	add	r30, r30
      fc:	ff 1f       	adc	r31, r31
      fe:	ee 0f       	add	r30, r30
     100:	ff 1f       	adc	r31, r31
     102:	e7 50       	subi	r30, 0x07	; 7
     104:	ff 4f       	sbci	r31, 0xFF	; 255
     106:	80 81       	ld	r24, Z
     108:	91 81       	ldd	r25, Z+1	; 0x01
     10a:	0e 94 45 07 	call	0xe8a	; 0xe8a <LCD_WriteString>
     10e:	60 e0       	ldi	r22, 0x00	; 0
     110:	81 e0       	ldi	r24, 0x01	; 1
     112:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     116:	e0 91 6d 01 	lds	r30, 0x016D	; 0x80016d <choice_idx>
     11a:	f0 e0       	ldi	r31, 0x00	; 0
     11c:	ee 0f       	add	r30, r30
     11e:	ff 1f       	adc	r31, r31
     120:	ee 0f       	add	r30, r30
     122:	ff 1f       	adc	r31, r31
     124:	e7 50       	subi	r30, 0x07	; 7
     126:	ff 4f       	sbci	r31, 0xFF	; 255
     128:	82 81       	ldd	r24, Z+2	; 0x02
     12a:	93 81       	ldd	r25, Z+3	; 0x03
     12c:	0e 94 45 07 	call	0xe8a	; 0xe8a <LCD_WriteString>
     130:	65 e0       	ldi	r22, 0x05	; 5
     132:	80 e0       	ldi	r24, 0x00	; 0
     134:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     138:	10 92 60 00 	sts	0x0060, r1	; 0x800060 <__DATA_REGION_ORIGIN__>
     13c:	ef e6       	ldi	r30, 0x6F	; 111
     13e:	f1 e0       	ldi	r31, 0x01	; 1
     140:	89 e7       	ldi	r24, 0x79	; 121
     142:	91 e0       	ldi	r25, 0x01	; 1
     144:	11 92       	st	Z+, r1
     146:	e8 17       	cp	r30, r24
     148:	f9 07       	cpc	r31, r25
     14a:	e1 f7       	brne	.-8      	; 0x144 <new_operation_reset+0x5c>
     14c:	10 92 6e 01 	sts	0x016E, r1	; 0x80016e <input_idx>
     150:	10 92 6c 01 	sts	0x016C, r1	; 0x80016c <__data_end>
     154:	85 e0       	ldi	r24, 0x05	; 5
     156:	80 93 61 00 	sts	0x0061, r24	; 0x800061 <hex_pos>
     15a:	08 95       	ret

0000015c <get_decimal>:
     15c:	90 ed       	ldi	r25, 0xD0	; 208
     15e:	98 0f       	add	r25, r24
     160:	9a 30       	cpi	r25, 0x0A	; 10
     162:	50 f4       	brcc	.+20     	; 0x178 <get_decimal+0x1c>
     164:	e0 91 6e 01 	lds	r30, 0x016E	; 0x80016e <input_idx>
     168:	91 e0       	ldi	r25, 0x01	; 1
     16a:	9e 0f       	add	r25, r30
     16c:	90 93 6e 01 	sts	0x016E, r25	; 0x80016e <input_idx>
     170:	f0 e0       	ldi	r31, 0x00	; 0
     172:	e1 59       	subi	r30, 0x91	; 145
     174:	fe 4f       	sbci	r31, 0xFE	; 254
     176:	80 83       	st	Z, r24
     178:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     17c:	08 95       	ret

0000017e <menu_display>:
     17e:	80 91 6d 01 	lds	r24, 0x016D	; 0x80016d <choice_idx>
     182:	81 11       	cpse	r24, r1
     184:	55 c0       	rjmp	.+170    	; 0x230 <menu_display+0xb2>
     186:	80 91 63 00 	lds	r24, 0x0063	; 0x800063 <direction>
     18a:	88 23       	and	r24, r24
     18c:	01 f1       	breq	.+64     	; 0x1ce <menu_display+0x50>
     18e:	81 30       	cpi	r24, 0x01	; 1
     190:	09 f0       	breq	.+2      	; 0x194 <menu_display+0x16>
     192:	4c c1       	rjmp	.+664    	; 0x42c <__EEPROM_REGION_LENGTH__+0x2c>
     194:	0e 94 a6 05 	call	0xb4c	; 0xb4c <LCD_Clear>
     198:	60 e0       	ldi	r22, 0x00	; 0
     19a:	80 e0       	ldi	r24, 0x00	; 0
     19c:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     1a0:	84 e7       	ldi	r24, 0x74	; 116
     1a2:	90 e0       	ldi	r25, 0x00	; 0
     1a4:	0e 94 45 07 	call	0xe8a	; 0xe8a <LCD_WriteString>
     1a8:	62 e0       	ldi	r22, 0x02	; 2
     1aa:	81 e0       	ldi	r24, 0x01	; 1
     1ac:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     1b0:	85 ea       	ldi	r24, 0xA5	; 165
     1b2:	90 e0       	ldi	r25, 0x00	; 0
     1b4:	0e 94 45 07 	call	0xe8a	; 0xe8a <LCD_WriteString>
     1b8:	61 e0       	ldi	r22, 0x01	; 1
     1ba:	81 e0       	ldi	r24, 0x01	; 1
     1bc:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     1c0:	8e e7       	ldi	r24, 0x7E	; 126
     1c2:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     1c6:	81 e0       	ldi	r24, 0x01	; 1
     1c8:	80 93 62 00 	sts	0x0062, r24	; 0x800062 <arrow_pos>
     1cc:	08 95       	ret
     1ce:	80 91 62 00 	lds	r24, 0x0062	; 0x800062 <arrow_pos>
     1d2:	88 23       	and	r24, r24
     1d4:	81 f0       	breq	.+32     	; 0x1f6 <menu_display+0x78>
     1d6:	81 30       	cpi	r24, 0x01	; 1
     1d8:	09 f0       	breq	.+2      	; 0x1dc <menu_display+0x5e>
     1da:	28 c1       	rjmp	.+592    	; 0x42c <__EEPROM_REGION_LENGTH__+0x2c>
     1dc:	61 e0       	ldi	r22, 0x01	; 1
     1de:	0e 94 b0 07 	call	0xf60	; 0xf60 <LCD_ClearLocation>
     1e2:	61 e0       	ldi	r22, 0x01	; 1
     1e4:	80 e0       	ldi	r24, 0x00	; 0
     1e6:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     1ea:	8e e7       	ldi	r24, 0x7E	; 126
     1ec:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     1f0:	10 92 62 00 	sts	0x0062, r1	; 0x800062 <arrow_pos>
     1f4:	08 95       	ret
     1f6:	0e 94 a6 05 	call	0xb4c	; 0xb4c <LCD_Clear>
     1fa:	60 e0       	ldi	r22, 0x00	; 0
     1fc:	80 e0       	ldi	r24, 0x00	; 0
     1fe:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     202:	84 e7       	ldi	r24, 0x74	; 116
     204:	90 e0       	ldi	r25, 0x00	; 0
     206:	0e 94 45 07 	call	0xe8a	; 0xe8a <LCD_WriteString>
     20a:	62 e0       	ldi	r22, 0x02	; 2
     20c:	81 e0       	ldi	r24, 0x01	; 1
     20e:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     212:	85 ea       	ldi	r24, 0xA5	; 165
     214:	90 e0       	ldi	r25, 0x00	; 0
     216:	0e 94 45 07 	call	0xe8a	; 0xe8a <LCD_WriteString>
     21a:	61 e0       	ldi	r22, 0x01	; 1
     21c:	81 e0       	ldi	r24, 0x01	; 1
     21e:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     222:	8e e7       	ldi	r24, 0x7E	; 126
     224:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     228:	81 e0       	ldi	r24, 0x01	; 1
     22a:	80 93 62 00 	sts	0x0062, r24	; 0x800062 <arrow_pos>
     22e:	08 95       	ret
     230:	85 30       	cpi	r24, 0x05	; 5
     232:	09 f0       	breq	.+2      	; 0x236 <menu_display+0xb8>
     234:	55 c0       	rjmp	.+170    	; 0x2e0 <menu_display+0x162>
     236:	80 91 63 00 	lds	r24, 0x0063	; 0x800063 <direction>
     23a:	88 23       	and	r24, r24
     23c:	a9 f1       	breq	.+106    	; 0x2a8 <menu_display+0x12a>
     23e:	81 30       	cpi	r24, 0x01	; 1
     240:	09 f0       	breq	.+2      	; 0x244 <menu_display+0xc6>
     242:	f4 c0       	rjmp	.+488    	; 0x42c <__EEPROM_REGION_LENGTH__+0x2c>
     244:	80 91 62 00 	lds	r24, 0x0062	; 0x800062 <arrow_pos>
     248:	88 23       	and	r24, r24
     24a:	19 f0       	breq	.+6      	; 0x252 <menu_display+0xd4>
     24c:	81 30       	cpi	r24, 0x01	; 1
     24e:	81 f0       	breq	.+32     	; 0x270 <menu_display+0xf2>
     250:	08 95       	ret
     252:	61 e0       	ldi	r22, 0x01	; 1
     254:	80 e0       	ldi	r24, 0x00	; 0
     256:	0e 94 b0 07 	call	0xf60	; 0xf60 <LCD_ClearLocation>
     25a:	61 e0       	ldi	r22, 0x01	; 1
     25c:	81 e0       	ldi	r24, 0x01	; 1
     25e:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     262:	8e e7       	ldi	r24, 0x7E	; 126
     264:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     268:	81 e0       	ldi	r24, 0x01	; 1
     26a:	80 93 62 00 	sts	0x0062, r24	; 0x800062 <arrow_pos>
     26e:	08 95       	ret
     270:	0e 94 a6 05 	call	0xb4c	; 0xb4c <LCD_Clear>
     274:	62 e0       	ldi	r22, 0x02	; 2
     276:	80 e0       	ldi	r24, 0x00	; 0
     278:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     27c:	8d ed       	ldi	r24, 0xDD	; 221
     27e:	90 e0       	ldi	r25, 0x00	; 0
     280:	0e 94 45 07 	call	0xe8a	; 0xe8a <LCD_WriteString>
     284:	61 e0       	ldi	r22, 0x01	; 1
     286:	81 e0       	ldi	r24, 0x01	; 1
     288:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     28c:	8e e7       	ldi	r24, 0x7E	; 126
     28e:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     292:	81 e0       	ldi	r24, 0x01	; 1
     294:	80 93 62 00 	sts	0x0062, r24	; 0x800062 <arrow_pos>
     298:	62 e0       	ldi	r22, 0x02	; 2
     29a:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     29e:	8b ee       	ldi	r24, 0xEB	; 235
     2a0:	90 e0       	ldi	r25, 0x00	; 0
     2a2:	0e 94 45 07 	call	0xe8a	; 0xe8a <LCD_WriteString>
     2a6:	08 95       	ret
     2a8:	0e 94 a6 05 	call	0xb4c	; 0xb4c <LCD_Clear>
     2ac:	62 e0       	ldi	r22, 0x02	; 2
     2ae:	80 e0       	ldi	r24, 0x00	; 0
     2b0:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     2b4:	8d ed       	ldi	r24, 0xDD	; 221
     2b6:	90 e0       	ldi	r25, 0x00	; 0
     2b8:	0e 94 45 07 	call	0xe8a	; 0xe8a <LCD_WriteString>
     2bc:	61 e0       	ldi	r22, 0x01	; 1
     2be:	81 e0       	ldi	r24, 0x01	; 1
     2c0:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     2c4:	8e e7       	ldi	r24, 0x7E	; 126
     2c6:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     2ca:	81 e0       	ldi	r24, 0x01	; 1
     2cc:	80 93 62 00 	sts	0x0062, r24	; 0x800062 <arrow_pos>
     2d0:	62 e0       	ldi	r22, 0x02	; 2
     2d2:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     2d6:	8b ee       	ldi	r24, 0xEB	; 235
     2d8:	90 e0       	ldi	r25, 0x00	; 0
     2da:	0e 94 45 07 	call	0xe8a	; 0xe8a <LCD_WriteString>
     2de:	08 95       	ret
     2e0:	80 91 63 00 	lds	r24, 0x0063	; 0x800063 <direction>
     2e4:	88 23       	and	r24, r24
     2e6:	09 f4       	brne	.+2      	; 0x2ea <menu_display+0x16c>
     2e8:	54 c0       	rjmp	.+168    	; 0x392 <menu_display+0x214>
     2ea:	81 30       	cpi	r24, 0x01	; 1
     2ec:	09 f0       	breq	.+2      	; 0x2f0 <menu_display+0x172>
     2ee:	9e c0       	rjmp	.+316    	; 0x42c <__EEPROM_REGION_LENGTH__+0x2c>
     2f0:	80 91 62 00 	lds	r24, 0x0062	; 0x800062 <arrow_pos>
     2f4:	88 23       	and	r24, r24
     2f6:	f1 f1       	breq	.+124    	; 0x374 <menu_display+0x1f6>
     2f8:	81 30       	cpi	r24, 0x01	; 1
     2fa:	09 f0       	breq	.+2      	; 0x2fe <menu_display+0x180>
     2fc:	97 c0       	rjmp	.+302    	; 0x42c <__EEPROM_REGION_LENGTH__+0x2c>
     2fe:	0e 94 a6 05 	call	0xb4c	; 0xb4c <LCD_Clear>
     302:	62 e0       	ldi	r22, 0x02	; 2
     304:	80 e0       	ldi	r24, 0x00	; 0
     306:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     30a:	20 91 6d 01 	lds	r18, 0x016D	; 0x80016d <choice_idx>
     30e:	30 e0       	ldi	r19, 0x00	; 0
     310:	21 50       	subi	r18, 0x01	; 1
     312:	31 09       	sbc	r19, r1
     314:	22 0f       	add	r18, r18
     316:	33 1f       	adc	r19, r19
     318:	c9 01       	movw	r24, r18
     31a:	88 0f       	add	r24, r24
     31c:	99 1f       	adc	r25, r25
     31e:	88 0f       	add	r24, r24
     320:	99 1f       	adc	r25, r25
     322:	88 0f       	add	r24, r24
     324:	99 1f       	adc	r25, r25
     326:	82 1b       	sub	r24, r18
     328:	93 0b       	sbc	r25, r19
     32a:	8b 55       	subi	r24, 0x5B	; 91
     32c:	9f 4f       	sbci	r25, 0xFF	; 255
     32e:	0e 94 45 07 	call	0xe8a	; 0xe8a <LCD_WriteString>
     332:	62 e0       	ldi	r22, 0x02	; 2
     334:	81 e0       	ldi	r24, 0x01	; 1
     336:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     33a:	20 91 6d 01 	lds	r18, 0x016D	; 0x80016d <choice_idx>
     33e:	30 e0       	ldi	r19, 0x00	; 0
     340:	22 0f       	add	r18, r18
     342:	33 1f       	adc	r19, r19
     344:	c9 01       	movw	r24, r18
     346:	88 0f       	add	r24, r24
     348:	99 1f       	adc	r25, r25
     34a:	88 0f       	add	r24, r24
     34c:	99 1f       	adc	r25, r25
     34e:	88 0f       	add	r24, r24
     350:	99 1f       	adc	r25, r25
     352:	82 1b       	sub	r24, r18
     354:	93 0b       	sbc	r25, r19
     356:	8b 55       	subi	r24, 0x5B	; 91
     358:	9f 4f       	sbci	r25, 0xFF	; 255
     35a:	0e 94 45 07 	call	0xe8a	; 0xe8a <LCD_WriteString>
     35e:	61 e0       	ldi	r22, 0x01	; 1
     360:	81 e0       	ldi	r24, 0x01	; 1
     362:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     366:	8e e7       	ldi	r24, 0x7E	; 126
     368:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     36c:	81 e0       	ldi	r24, 0x01	; 1
     36e:	80 93 62 00 	sts	0x0062, r24	; 0x800062 <arrow_pos>
     372:	08 95       	ret
     374:	61 e0       	ldi	r22, 0x01	; 1
     376:	80 e0       	ldi	r24, 0x00	; 0
     378:	0e 94 b0 07 	call	0xf60	; 0xf60 <LCD_ClearLocation>
     37c:	61 e0       	ldi	r22, 0x01	; 1
     37e:	81 e0       	ldi	r24, 0x01	; 1
     380:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     384:	8e e7       	ldi	r24, 0x7E	; 126
     386:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     38a:	81 e0       	ldi	r24, 0x01	; 1
     38c:	80 93 62 00 	sts	0x0062, r24	; 0x800062 <arrow_pos>
     390:	08 95       	ret
     392:	80 91 62 00 	lds	r24, 0x0062	; 0x800062 <arrow_pos>
     396:	88 23       	and	r24, r24
     398:	81 f0       	breq	.+32     	; 0x3ba <menu_display+0x23c>
     39a:	81 30       	cpi	r24, 0x01	; 1
     39c:	09 f0       	breq	.+2      	; 0x3a0 <menu_display+0x222>
     39e:	46 c0       	rjmp	.+140    	; 0x42c <__EEPROM_REGION_LENGTH__+0x2c>
     3a0:	61 e0       	ldi	r22, 0x01	; 1
     3a2:	0e 94 b0 07 	call	0xf60	; 0xf60 <LCD_ClearLocation>
     3a6:	61 e0       	ldi	r22, 0x01	; 1
     3a8:	80 e0       	ldi	r24, 0x00	; 0
     3aa:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     3ae:	8e e7       	ldi	r24, 0x7E	; 126
     3b0:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     3b4:	10 92 62 00 	sts	0x0062, r1	; 0x800062 <arrow_pos>
     3b8:	08 95       	ret
     3ba:	0e 94 a6 05 	call	0xb4c	; 0xb4c <LCD_Clear>
     3be:	62 e0       	ldi	r22, 0x02	; 2
     3c0:	80 e0       	ldi	r24, 0x00	; 0
     3c2:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     3c6:	20 91 6d 01 	lds	r18, 0x016D	; 0x80016d <choice_idx>
     3ca:	30 e0       	ldi	r19, 0x00	; 0
     3cc:	22 0f       	add	r18, r18
     3ce:	33 1f       	adc	r19, r19
     3d0:	c9 01       	movw	r24, r18
     3d2:	88 0f       	add	r24, r24
     3d4:	99 1f       	adc	r25, r25
     3d6:	88 0f       	add	r24, r24
     3d8:	99 1f       	adc	r25, r25
     3da:	88 0f       	add	r24, r24
     3dc:	99 1f       	adc	r25, r25
     3de:	82 1b       	sub	r24, r18
     3e0:	93 0b       	sbc	r25, r19
     3e2:	8b 55       	subi	r24, 0x5B	; 91
     3e4:	9f 4f       	sbci	r25, 0xFF	; 255
     3e6:	0e 94 45 07 	call	0xe8a	; 0xe8a <LCD_WriteString>
     3ea:	62 e0       	ldi	r22, 0x02	; 2
     3ec:	81 e0       	ldi	r24, 0x01	; 1
     3ee:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     3f2:	20 91 6d 01 	lds	r18, 0x016D	; 0x80016d <choice_idx>
     3f6:	30 e0       	ldi	r19, 0x00	; 0
     3f8:	2f 5f       	subi	r18, 0xFF	; 255
     3fa:	3f 4f       	sbci	r19, 0xFF	; 255
     3fc:	22 0f       	add	r18, r18
     3fe:	33 1f       	adc	r19, r19
     400:	c9 01       	movw	r24, r18
     402:	88 0f       	add	r24, r24
     404:	99 1f       	adc	r25, r25
     406:	88 0f       	add	r24, r24
     408:	99 1f       	adc	r25, r25
     40a:	88 0f       	add	r24, r24
     40c:	99 1f       	adc	r25, r25
     40e:	82 1b       	sub	r24, r18
     410:	93 0b       	sbc	r25, r19
     412:	8b 55       	subi	r24, 0x5B	; 91
     414:	9f 4f       	sbci	r25, 0xFF	; 255
     416:	0e 94 45 07 	call	0xe8a	; 0xe8a <LCD_WriteString>
     41a:	61 e0       	ldi	r22, 0x01	; 1
     41c:	80 e0       	ldi	r24, 0x00	; 0
     41e:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     422:	8e e7       	ldi	r24, 0x7E	; 126
     424:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     428:	10 92 62 00 	sts	0x0062, r1	; 0x800062 <arrow_pos>
     42c:	08 95       	ret

0000042e <get_hex>:
     42e:	90 91 6f 01 	lds	r25, 0x016F	; 0x80016f <input>
     432:	99 23       	and	r25, r25
     434:	61 f0       	breq	.+24     	; 0x44e <get_hex+0x20>
     436:	90 e0       	ldi	r25, 0x00	; 0
     438:	9f 5f       	subi	r25, 0xFF	; 255
     43a:	e9 2f       	mov	r30, r25
     43c:	f0 e0       	ldi	r31, 0x00	; 0
     43e:	e1 59       	subi	r30, 0x91	; 145
     440:	fe 4f       	sbci	r31, 0xFE	; 254
     442:	20 81       	ld	r18, Z
     444:	21 11       	cpse	r18, r1
     446:	f8 cf       	rjmp	.-16     	; 0x438 <get_hex+0xa>
     448:	92 30       	cpi	r25, 0x02	; 2
     44a:	08 f0       	brcs	.+2      	; 0x44e <get_hex+0x20>
     44c:	90 c0       	rjmp	.+288    	; 0x56e <get_hex+0x140>
     44e:	90 ed       	ldi	r25, 0xD0	; 208
     450:	98 0f       	add	r25, r24
     452:	9a 30       	cpi	r25, 0x0A	; 10
     454:	98 f4       	brcc	.+38     	; 0x47c <get_hex+0x4e>
     456:	e0 91 6e 01 	lds	r30, 0x016E	; 0x80016e <input_idx>
     45a:	91 e0       	ldi	r25, 0x01	; 1
     45c:	9e 0f       	add	r25, r30
     45e:	90 93 6e 01 	sts	0x016E, r25	; 0x80016e <input_idx>
     462:	f0 e0       	ldi	r31, 0x00	; 0
     464:	e1 59       	subi	r30, 0x91	; 145
     466:	fe 4f       	sbci	r31, 0xFE	; 254
     468:	80 83       	st	Z, r24
     46a:	90 91 61 00 	lds	r25, 0x0061	; 0x800061 <hex_pos>
     46e:	9f 5f       	subi	r25, 0xFF	; 255
     470:	90 93 61 00 	sts	0x0061, r25	; 0x800061 <hex_pos>
     474:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     478:	80 e0       	ldi	r24, 0x00	; 0
     47a:	08 95       	ret
     47c:	8f 32       	cpi	r24, 0x2F	; 47
     47e:	89 f4       	brne	.+34     	; 0x4a2 <get_hex+0x74>
     480:	10 92 6c 01 	sts	0x016C, r1	; 0x80016c <__data_end>
     484:	60 91 61 00 	lds	r22, 0x0061	; 0x800061 <hex_pos>
     488:	80 e0       	ldi	r24, 0x00	; 0
     48a:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     48e:	e0 91 6c 01 	lds	r30, 0x016C	; 0x80016c <__data_end>
     492:	f0 e0       	ldi	r31, 0x00	; 0
     494:	e1 56       	subi	r30, 0x61	; 97
     496:	ff 4f       	sbci	r31, 0xFF	; 255
     498:	80 81       	ld	r24, Z
     49a:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     49e:	80 e0       	ldi	r24, 0x00	; 0
     4a0:	08 95       	ret
     4a2:	8b 32       	cpi	r24, 0x2B	; 43
     4a4:	c9 f4       	brne	.+50     	; 0x4d8 <get_hex+0xaa>
     4a6:	e0 91 6e 01 	lds	r30, 0x016E	; 0x80016e <input_idx>
     4aa:	81 e0       	ldi	r24, 0x01	; 1
     4ac:	8e 0f       	add	r24, r30
     4ae:	80 93 6e 01 	sts	0x016E, r24	; 0x80016e <input_idx>
     4b2:	f0 e0       	ldi	r31, 0x00	; 0
     4b4:	e1 59       	subi	r30, 0x91	; 145
     4b6:	fe 4f       	sbci	r31, 0xFE	; 254
     4b8:	a0 91 6c 01 	lds	r26, 0x016C	; 0x80016c <__data_end>
     4bc:	b0 e0       	ldi	r27, 0x00	; 0
     4be:	a1 56       	subi	r26, 0x61	; 97
     4c0:	bf 4f       	sbci	r27, 0xFF	; 255
     4c2:	8c 91       	ld	r24, X
     4c4:	80 83       	st	Z, r24
     4c6:	80 91 61 00 	lds	r24, 0x0061	; 0x800061 <hex_pos>
     4ca:	8f 5f       	subi	r24, 0xFF	; 255
     4cc:	80 93 61 00 	sts	0x0061, r24	; 0x800061 <hex_pos>
     4d0:	10 92 6c 01 	sts	0x016C, r1	; 0x80016c <__data_end>
     4d4:	80 e0       	ldi	r24, 0x00	; 0
     4d6:	08 95       	ret
     4d8:	8a 32       	cpi	r24, 0x2A	; 42
     4da:	f9 f4       	brne	.+62     	; 0x51a <get_hex+0xec>
     4dc:	90 91 6c 01 	lds	r25, 0x016C	; 0x80016c <__data_end>
     4e0:	9f 5f       	subi	r25, 0xFF	; 255
     4e2:	8b ea       	ldi	r24, 0xAB	; 171
     4e4:	98 9f       	mul	r25, r24
     4e6:	81 2d       	mov	r24, r1
     4e8:	11 24       	eor	r1, r1
     4ea:	86 95       	lsr	r24
     4ec:	86 95       	lsr	r24
     4ee:	28 2f       	mov	r18, r24
     4f0:	22 0f       	add	r18, r18
     4f2:	82 0f       	add	r24, r18
     4f4:	88 0f       	add	r24, r24
     4f6:	98 1b       	sub	r25, r24
     4f8:	90 93 6c 01 	sts	0x016C, r25	; 0x80016c <__data_end>
     4fc:	60 91 61 00 	lds	r22, 0x0061	; 0x800061 <hex_pos>
     500:	80 e0       	ldi	r24, 0x00	; 0
     502:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     506:	e0 91 6c 01 	lds	r30, 0x016C	; 0x80016c <__data_end>
     50a:	f0 e0       	ldi	r31, 0x00	; 0
     50c:	e1 56       	subi	r30, 0x61	; 97
     50e:	ff 4f       	sbci	r31, 0xFF	; 255
     510:	80 81       	ld	r24, Z
     512:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     516:	80 e0       	ldi	r24, 0x00	; 0
     518:	08 95       	ret
     51a:	8d 32       	cpi	r24, 0x2D	; 45
     51c:	51 f5       	brne	.+84     	; 0x572 <get_hex+0x144>
     51e:	80 91 6c 01 	lds	r24, 0x016C	; 0x80016c <__data_end>
     522:	81 50       	subi	r24, 0x01	; 1
     524:	18 f0       	brcs	.+6      	; 0x52c <get_hex+0xfe>
     526:	80 93 6c 01 	sts	0x016C, r24	; 0x80016c <__data_end>
     52a:	03 c0       	rjmp	.+6      	; 0x532 <get_hex+0x104>
     52c:	85 e0       	ldi	r24, 0x05	; 5
     52e:	80 93 6c 01 	sts	0x016C, r24	; 0x80016c <__data_end>
     532:	90 91 6c 01 	lds	r25, 0x016C	; 0x80016c <__data_end>
     536:	8b ea       	ldi	r24, 0xAB	; 171
     538:	98 9f       	mul	r25, r24
     53a:	81 2d       	mov	r24, r1
     53c:	11 24       	eor	r1, r1
     53e:	86 95       	lsr	r24
     540:	86 95       	lsr	r24
     542:	28 2f       	mov	r18, r24
     544:	22 0f       	add	r18, r18
     546:	82 0f       	add	r24, r18
     548:	88 0f       	add	r24, r24
     54a:	98 1b       	sub	r25, r24
     54c:	90 93 6c 01 	sts	0x016C, r25	; 0x80016c <__data_end>
     550:	60 91 61 00 	lds	r22, 0x0061	; 0x800061 <hex_pos>
     554:	80 e0       	ldi	r24, 0x00	; 0
     556:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     55a:	e0 91 6c 01 	lds	r30, 0x016C	; 0x80016c <__data_end>
     55e:	f0 e0       	ldi	r31, 0x00	; 0
     560:	e1 56       	subi	r30, 0x61	; 97
     562:	ff 4f       	sbci	r31, 0xFF	; 255
     564:	80 81       	ld	r24, Z
     566:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     56a:	80 e0       	ldi	r24, 0x00	; 0
     56c:	08 95       	ret
     56e:	88 e0       	ldi	r24, 0x08	; 8
     570:	08 95       	ret
     572:	84 e0       	ldi	r24, 0x04	; 4
     574:	08 95       	ret

00000576 <get_binary>:
     576:	90 91 6f 01 	lds	r25, 0x016F	; 0x80016f <input>
     57a:	99 23       	and	r25, r25
     57c:	59 f0       	breq	.+22     	; 0x594 <get_binary+0x1e>
     57e:	90 e0       	ldi	r25, 0x00	; 0
     580:	9f 5f       	subi	r25, 0xFF	; 255
     582:	e9 2f       	mov	r30, r25
     584:	f0 e0       	ldi	r31, 0x00	; 0
     586:	e1 59       	subi	r30, 0x91	; 145
     588:	fe 4f       	sbci	r31, 0xFE	; 254
     58a:	20 81       	ld	r18, Z
     58c:	21 11       	cpse	r18, r1
     58e:	f8 cf       	rjmp	.-16     	; 0x580 <get_binary+0xa>
     590:	98 30       	cpi	r25, 0x08	; 8
     592:	90 f4       	brcc	.+36     	; 0x5b8 <get_binary+0x42>
     594:	90 ed       	ldi	r25, 0xD0	; 208
     596:	98 0f       	add	r25, r24
     598:	92 30       	cpi	r25, 0x02	; 2
     59a:	80 f4       	brcc	.+32     	; 0x5bc <get_binary+0x46>
     59c:	e0 91 6e 01 	lds	r30, 0x016E	; 0x80016e <input_idx>
     5a0:	91 e0       	ldi	r25, 0x01	; 1
     5a2:	9e 0f       	add	r25, r30
     5a4:	90 93 6e 01 	sts	0x016E, r25	; 0x80016e <input_idx>
     5a8:	f0 e0       	ldi	r31, 0x00	; 0
     5aa:	e1 59       	subi	r30, 0x91	; 145
     5ac:	fe 4f       	sbci	r31, 0xFE	; 254
     5ae:	80 83       	st	Z, r24
     5b0:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     5b4:	80 e0       	ldi	r24, 0x00	; 0
     5b6:	08 95       	ret
     5b8:	88 e0       	ldi	r24, 0x08	; 8
     5ba:	08 95       	ret
     5bc:	84 e0       	ldi	r24, 0x04	; 4
     5be:	08 95       	ret

000005c0 <hex_to_int>:
     5c0:	fc 01       	movw	r30, r24
     5c2:	80 81       	ld	r24, Z
     5c4:	88 23       	and	r24, r24
     5c6:	11 f1       	breq	.+68     	; 0x60c <hex_to_int+0x4c>
     5c8:	90 e0       	ldi	r25, 0x00	; 0
     5ca:	01 c0       	rjmp	.+2      	; 0x5ce <hex_to_int+0xe>
     5cc:	92 2f       	mov	r25, r18
     5ce:	21 e0       	ldi	r18, 0x01	; 1
     5d0:	29 0f       	add	r18, r25
     5d2:	df 01       	movw	r26, r30
     5d4:	a2 0f       	add	r26, r18
     5d6:	b1 1d       	adc	r27, r1
     5d8:	8c 91       	ld	r24, X
     5da:	81 11       	cpse	r24, r1
     5dc:	f7 cf       	rjmp	.-18     	; 0x5cc <hex_to_int+0xc>
     5de:	99 23       	and	r25, r25
     5e0:	bc f0       	brlt	.+46     	; 0x610 <hex_to_int+0x50>
     5e2:	31 e0       	ldi	r19, 0x01	; 1
     5e4:	df 01       	movw	r26, r30
     5e6:	a9 0f       	add	r26, r25
     5e8:	b1 1d       	adc	r27, r1
     5ea:	97 fd       	sbrc	r25, 7
     5ec:	ba 95       	dec	r27
     5ee:	4c 91       	ld	r20, X
     5f0:	20 ed       	ldi	r18, 0xD0	; 208
     5f2:	24 0f       	add	r18, r20
     5f4:	2a 30       	cpi	r18, 0x0A	; 10
     5f6:	10 f0       	brcs	.+4      	; 0x5fc <hex_to_int+0x3c>
     5f8:	29 ec       	ldi	r18, 0xC9	; 201
     5fa:	24 0f       	add	r18, r20
     5fc:	23 9f       	mul	r18, r19
     5fe:	80 0d       	add	r24, r0
     600:	11 24       	eor	r1, r1
     602:	32 95       	swap	r19
     604:	30 7f       	andi	r19, 0xF0	; 240
     606:	91 50       	subi	r25, 0x01	; 1
     608:	6a f7       	brpl	.-38     	; 0x5e4 <hex_to_int+0x24>
     60a:	08 95       	ret
     60c:	80 e0       	ldi	r24, 0x00	; 0
     60e:	08 95       	ret
     610:	80 e0       	ldi	r24, 0x00	; 0
     612:	08 95       	ret

00000614 <NUMERICAL_CONVERTER_Init>:
     614:	10 92 79 01 	sts	0x0179, r1	; 0x800179 <mode>
     618:	81 e0       	ldi	r24, 0x01	; 1
     61a:	80 93 63 00 	sts	0x0063, r24	; 0x800063 <direction>
     61e:	10 92 6d 01 	sts	0x016D, r1	; 0x80016d <choice_idx>
     622:	80 93 62 00 	sts	0x0062, r24	; 0x800062 <arrow_pos>
     626:	ef e6       	ldi	r30, 0x6F	; 111
     628:	f1 e0       	ldi	r31, 0x01	; 1
     62a:	89 e7       	ldi	r24, 0x79	; 121
     62c:	91 e0       	ldi	r25, 0x01	; 1
     62e:	11 92       	st	Z+, r1
     630:	e8 17       	cp	r30, r24
     632:	f9 07       	cpc	r31, r25
     634:	e1 f7       	brne	.-8      	; 0x62e <NUMERICAL_CONVERTER_Init+0x1a>
     636:	81 e0       	ldi	r24, 0x01	; 1
     638:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     63c:	10 92 6c 01 	sts	0x016C, r1	; 0x80016c <__data_end>
     640:	85 e0       	ldi	r24, 0x05	; 5
     642:	80 93 61 00 	sts	0x0061, r24	; 0x800061 <hex_pos>
     646:	0e 94 a6 05 	call	0xb4c	; 0xb4c <LCD_Clear>
     64a:	60 e0       	ldi	r22, 0x00	; 0
     64c:	80 e0       	ldi	r24, 0x00	; 0
     64e:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     652:	82 e8       	ldi	r24, 0x82	; 130
     654:	90 e0       	ldi	r25, 0x00	; 0
     656:	0e 94 45 07 	call	0xe8a	; 0xe8a <LCD_WriteString>
     65a:	61 e0       	ldi	r22, 0x01	; 1
     65c:	81 e0       	ldi	r24, 0x01	; 1
     65e:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     662:	8c e8       	ldi	r24, 0x8C	; 140
     664:	90 e0       	ldi	r25, 0x00	; 0
     666:	0e 94 45 07 	call	0xe8a	; 0xe8a <LCD_WriteString>
     66a:	2f ef       	ldi	r18, 0xFF	; 255
     66c:	81 ee       	ldi	r24, 0xE1	; 225
     66e:	94 e0       	ldi	r25, 0x04	; 4
     670:	21 50       	subi	r18, 0x01	; 1
     672:	80 40       	sbci	r24, 0x00	; 0
     674:	90 40       	sbci	r25, 0x00	; 0
     676:	e1 f7       	brne	.-8      	; 0x670 <NUMERICAL_CONVERTER_Init+0x5c>
     678:	00 c0       	rjmp	.+0      	; 0x67a <NUMERICAL_CONVERTER_Init+0x66>
     67a:	00 00       	nop
     67c:	8e e2       	ldi	r24, 0x2E	; 46
     67e:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     682:	2f ef       	ldi	r18, 0xFF	; 255
     684:	81 ee       	ldi	r24, 0xE1	; 225
     686:	94 e0       	ldi	r25, 0x04	; 4
     688:	21 50       	subi	r18, 0x01	; 1
     68a:	80 40       	sbci	r24, 0x00	; 0
     68c:	90 40       	sbci	r25, 0x00	; 0
     68e:	e1 f7       	brne	.-8      	; 0x688 <NUMERICAL_CONVERTER_Init+0x74>
     690:	00 c0       	rjmp	.+0      	; 0x692 <NUMERICAL_CONVERTER_Init+0x7e>
     692:	00 00       	nop
     694:	8e e2       	ldi	r24, 0x2E	; 46
     696:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     69a:	2f ef       	ldi	r18, 0xFF	; 255
     69c:	81 ee       	ldi	r24, 0xE1	; 225
     69e:	94 e0       	ldi	r25, 0x04	; 4
     6a0:	21 50       	subi	r18, 0x01	; 1
     6a2:	80 40       	sbci	r24, 0x00	; 0
     6a4:	90 40       	sbci	r25, 0x00	; 0
     6a6:	e1 f7       	brne	.-8      	; 0x6a0 <NUMERICAL_CONVERTER_Init+0x8c>
     6a8:	00 c0       	rjmp	.+0      	; 0x6aa <NUMERICAL_CONVERTER_Init+0x96>
     6aa:	00 00       	nop
     6ac:	0e 94 a6 05 	call	0xb4c	; 0xb4c <LCD_Clear>
     6b0:	0e 94 bf 00 	call	0x17e	; 0x17e <menu_display>
     6b4:	61 e0       	ldi	r22, 0x01	; 1
     6b6:	80 91 62 00 	lds	r24, 0x0062	; 0x800062 <arrow_pos>
     6ba:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     6be:	8e e7       	ldi	r24, 0x7E	; 126
     6c0:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     6c4:	08 95       	ret

000006c6 <NUMERICAL_CONVERTER_Runnable>:
     6c6:	cf 93       	push	r28
     6c8:	df 93       	push	r29
     6ca:	0e 94 0e 08 	call	0x101c	; 0x101c <KEYPAD_GetEntry>
     6ce:	c8 2f       	mov	r28, r24
     6d0:	84 35       	cpi	r24, 0x54	; 84
     6d2:	09 f4       	brne	.+2      	; 0x6d6 <NUMERICAL_CONVERTER_Runnable+0x10>
     6d4:	ce c1       	rjmp	.+924    	; 0xa72 <__stack+0x213>
     6d6:	83 34       	cpi	r24, 0x43	; 67
     6d8:	d9 f5       	brne	.+118    	; 0x750 <NUMERICAL_CONVERTER_Runnable+0x8a>
     6da:	10 92 79 01 	sts	0x0179, r1	; 0x800179 <mode>
     6de:	81 e0       	ldi	r24, 0x01	; 1
     6e0:	80 93 63 00 	sts	0x0063, r24	; 0x800063 <direction>
     6e4:	10 92 6d 01 	sts	0x016D, r1	; 0x80016d <choice_idx>
     6e8:	80 93 62 00 	sts	0x0062, r24	; 0x800062 <arrow_pos>
     6ec:	ef e6       	ldi	r30, 0x6F	; 111
     6ee:	f1 e0       	ldi	r31, 0x01	; 1
     6f0:	89 e7       	ldi	r24, 0x79	; 121
     6f2:	91 e0       	ldi	r25, 0x01	; 1
     6f4:	11 92       	st	Z+, r1
     6f6:	8e 17       	cp	r24, r30
     6f8:	9f 07       	cpc	r25, r31
     6fa:	e1 f7       	brne	.-8      	; 0x6f4 <NUMERICAL_CONVERTER_Runnable+0x2e>
     6fc:	81 e0       	ldi	r24, 0x01	; 1
     6fe:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     702:	10 92 6c 01 	sts	0x016C, r1	; 0x80016c <__data_end>
     706:	85 e0       	ldi	r24, 0x05	; 5
     708:	80 93 61 00 	sts	0x0061, r24	; 0x800061 <hex_pos>
     70c:	0e 94 a6 05 	call	0xb4c	; 0xb4c <LCD_Clear>
     710:	0e 94 bf 00 	call	0x17e	; 0x17e <menu_display>
     714:	61 e0       	ldi	r22, 0x01	; 1
     716:	80 91 62 00 	lds	r24, 0x0062	; 0x800062 <arrow_pos>
     71a:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     71e:	8e e7       	ldi	r24, 0x7E	; 126
     720:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     724:	80 91 79 01 	lds	r24, 0x0179	; 0x800179 <mode>
     728:	83 30       	cpi	r24, 0x03	; 3
     72a:	09 f4       	brne	.+2      	; 0x72e <NUMERICAL_CONVERTER_Runnable+0x68>
     72c:	b2 c0       	rjmp	.+356    	; 0x892 <__stack+0x33>
     72e:	38 f4       	brcc	.+14     	; 0x73e <NUMERICAL_CONVERTER_Runnable+0x78>
     730:	81 30       	cpi	r24, 0x01	; 1
     732:	09 f4       	brne	.+2      	; 0x736 <NUMERICAL_CONVERTER_Runnable+0x70>
     734:	4d c0       	rjmp	.+154    	; 0x7d0 <NUMERICAL_CONVERTER_Runnable+0x10a>
     736:	82 30       	cpi	r24, 0x02	; 2
     738:	09 f4       	brne	.+2      	; 0x73c <NUMERICAL_CONVERTER_Runnable+0x76>
     73a:	7c c0       	rjmp	.+248    	; 0x834 <__DATA_REGION_LENGTH__+0x34>
     73c:	9a c1       	rjmp	.+820    	; 0xa72 <__stack+0x213>
     73e:	85 30       	cpi	r24, 0x05	; 5
     740:	09 f4       	brne	.+2      	; 0x744 <NUMERICAL_CONVERTER_Runnable+0x7e>
     742:	39 c1       	rjmp	.+626    	; 0x9b6 <__stack+0x157>
     744:	08 f4       	brcc	.+2      	; 0x748 <NUMERICAL_CONVERTER_Runnable+0x82>
     746:	ee c0       	rjmp	.+476    	; 0x924 <__stack+0xc5>
     748:	86 30       	cpi	r24, 0x06	; 6
     74a:	09 f4       	brne	.+2      	; 0x74e <NUMERICAL_CONVERTER_Runnable+0x88>
     74c:	62 c1       	rjmp	.+708    	; 0xa12 <__stack+0x1b3>
     74e:	91 c1       	rjmp	.+802    	; 0xa72 <__stack+0x213>
     750:	e0 91 79 01 	lds	r30, 0x0179	; 0x800179 <mode>
     754:	8e 2f       	mov	r24, r30
     756:	90 e0       	ldi	r25, 0x00	; 0
     758:	87 30       	cpi	r24, 0x07	; 7
     75a:	91 05       	cpc	r25, r1
     75c:	08 f0       	brcs	.+2      	; 0x760 <NUMERICAL_CONVERTER_Runnable+0x9a>
     75e:	89 c1       	rjmp	.+786    	; 0xa72 <__stack+0x213>
     760:	fc 01       	movw	r30, r24
     762:	e6 5d       	subi	r30, 0xD6	; 214
     764:	ff 4f       	sbci	r31, 0xFF	; 255
     766:	0c 94 44 0a 	jmp	0x1488	; 0x1488 <__tablejump2__>
     76a:	c2 33       	cpi	r28, 0x32	; 50
     76c:	81 f4       	brne	.+32     	; 0x78e <NUMERICAL_CONVERTER_Runnable+0xc8>
     76e:	80 91 6d 01 	lds	r24, 0x016D	; 0x80016d <choice_idx>
     772:	8f 5f       	subi	r24, 0xFF	; 255
     774:	86 30       	cpi	r24, 0x06	; 6
     776:	19 f0       	breq	.+6      	; 0x77e <NUMERICAL_CONVERTER_Runnable+0xb8>
     778:	80 93 6d 01 	sts	0x016D, r24	; 0x80016d <choice_idx>
     77c:	02 c0       	rjmp	.+4      	; 0x782 <NUMERICAL_CONVERTER_Runnable+0xbc>
     77e:	10 92 6d 01 	sts	0x016D, r1	; 0x80016d <choice_idx>
     782:	81 e0       	ldi	r24, 0x01	; 1
     784:	80 93 63 00 	sts	0x0063, r24	; 0x800063 <direction>
     788:	0e 94 bf 00 	call	0x17e	; 0x17e <menu_display>
     78c:	72 c1       	rjmp	.+740    	; 0xa72 <__stack+0x213>
     78e:	c8 33       	cpi	r28, 0x38	; 56
     790:	79 f4       	brne	.+30     	; 0x7b0 <NUMERICAL_CONVERTER_Runnable+0xea>
     792:	80 91 6d 01 	lds	r24, 0x016D	; 0x80016d <choice_idx>
     796:	81 50       	subi	r24, 0x01	; 1
     798:	18 f0       	brcs	.+6      	; 0x7a0 <NUMERICAL_CONVERTER_Runnable+0xda>
     79a:	80 93 6d 01 	sts	0x016D, r24	; 0x80016d <choice_idx>
     79e:	03 c0       	rjmp	.+6      	; 0x7a6 <NUMERICAL_CONVERTER_Runnable+0xe0>
     7a0:	85 e0       	ldi	r24, 0x05	; 5
     7a2:	80 93 6d 01 	sts	0x016D, r24	; 0x80016d <choice_idx>
     7a6:	10 92 63 00 	sts	0x0063, r1	; 0x800063 <direction>
     7aa:	0e 94 bf 00 	call	0x17e	; 0x17e <menu_display>
     7ae:	61 c1       	rjmp	.+706    	; 0xa72 <__stack+0x213>
     7b0:	cd 33       	cpi	r28, 0x3D	; 61
     7b2:	09 f0       	breq	.+2      	; 0x7b6 <NUMERICAL_CONVERTER_Runnable+0xf0>
     7b4:	5e c1       	rjmp	.+700    	; 0xa72 <__stack+0x213>
     7b6:	e0 91 6d 01 	lds	r30, 0x016D	; 0x80016d <choice_idx>
     7ba:	f0 e0       	ldi	r31, 0x00	; 0
     7bc:	ef 5e       	subi	r30, 0xEF	; 239
     7be:	fe 4f       	sbci	r31, 0xFE	; 254
     7c0:	80 81       	ld	r24, Z
     7c2:	80 93 79 01 	sts	0x0179, r24	; 0x800179 <mode>
     7c6:	0e 94 74 00 	call	0xe8	; 0xe8 <new_operation_reset>
     7ca:	10 92 60 00 	sts	0x0060, r1	; 0x800060 <__DATA_REGION_ORIGIN__>
     7ce:	51 c1       	rjmp	.+674    	; 0xa72 <__stack+0x213>
     7d0:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
     7d4:	81 11       	cpse	r24, r1
     7d6:	0e 94 74 00 	call	0xe8	; 0xe8 <new_operation_reset>
     7da:	cd 33       	cpi	r28, 0x3D	; 61
     7dc:	c9 f4       	brne	.+50     	; 0x810 <__DATA_REGION_LENGTH__+0x10>
     7de:	e0 91 6e 01 	lds	r30, 0x016E	; 0x80016e <input_idx>
     7e2:	f0 e0       	ldi	r31, 0x00	; 0
     7e4:	e1 59       	subi	r30, 0x91	; 145
     7e6:	fe 4f       	sbci	r31, 0xFE	; 254
     7e8:	10 82       	st	Z, r1
     7ea:	8f e6       	ldi	r24, 0x6F	; 111
     7ec:	91 e0       	ldi	r25, 0x01	; 1
     7ee:	0e 94 50 00 	call	0xa0	; 0xa0 <binary_to_int>
     7f2:	c8 2f       	mov	r28, r24
     7f4:	65 e0       	ldi	r22, 0x05	; 5
     7f6:	81 e0       	ldi	r24, 0x01	; 1
     7f8:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     7fc:	6c 2f       	mov	r22, r28
     7fe:	70 e0       	ldi	r23, 0x00	; 0
     800:	80 e0       	ldi	r24, 0x00	; 0
     802:	90 e0       	ldi	r25, 0x00	; 0
     804:	0e 94 b8 06 	call	0xd70	; 0xd70 <LCD_WriteNumber>
     808:	81 e0       	ldi	r24, 0x01	; 1
     80a:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     80e:	31 c1       	rjmp	.+610    	; 0xa72 <__stack+0x213>
     810:	8c 2f       	mov	r24, r28
     812:	0e 94 bb 02 	call	0x576	; 0x576 <get_binary>
     816:	88 30       	cpi	r24, 0x08	; 8
     818:	09 f0       	breq	.+2      	; 0x81c <__DATA_REGION_LENGTH__+0x1c>
     81a:	2b c1       	rjmp	.+598    	; 0xa72 <__stack+0x213>
     81c:	65 e0       	ldi	r22, 0x05	; 5
     81e:	81 e0       	ldi	r24, 0x01	; 1
     820:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     824:	87 e9       	ldi	r24, 0x97	; 151
     826:	90 e0       	ldi	r25, 0x00	; 0
     828:	0e 94 45 07 	call	0xe8a	; 0xe8a <LCD_WriteString>
     82c:	81 e0       	ldi	r24, 0x01	; 1
     82e:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     832:	1f c1       	rjmp	.+574    	; 0xa72 <__stack+0x213>
     834:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
     838:	81 11       	cpse	r24, r1
     83a:	0e 94 74 00 	call	0xe8	; 0xe8 <new_operation_reset>
     83e:	cd 33       	cpi	r28, 0x3D	; 61
     840:	b1 f4       	brne	.+44     	; 0x86e <__stack+0xf>
     842:	e0 91 6e 01 	lds	r30, 0x016E	; 0x80016e <input_idx>
     846:	f0 e0       	ldi	r31, 0x00	; 0
     848:	e1 59       	subi	r30, 0x91	; 145
     84a:	fe 4f       	sbci	r31, 0xFE	; 254
     84c:	10 82       	st	Z, r1
     84e:	8f e6       	ldi	r24, 0x6F	; 111
     850:	91 e0       	ldi	r25, 0x01	; 1
     852:	0e 94 50 00 	call	0xa0	; 0xa0 <binary_to_int>
     856:	c8 2f       	mov	r28, r24
     858:	65 e0       	ldi	r22, 0x05	; 5
     85a:	81 e0       	ldi	r24, 0x01	; 1
     85c:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     860:	8c 2f       	mov	r24, r28
     862:	0e 94 77 07 	call	0xeee	; 0xeee <LCD_WriteHex>
     866:	81 e0       	ldi	r24, 0x01	; 1
     868:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     86c:	02 c1       	rjmp	.+516    	; 0xa72 <__stack+0x213>
     86e:	8c 2f       	mov	r24, r28
     870:	0e 94 bb 02 	call	0x576	; 0x576 <get_binary>
     874:	88 30       	cpi	r24, 0x08	; 8
     876:	09 f0       	breq	.+2      	; 0x87a <__stack+0x1b>
     878:	fc c0       	rjmp	.+504    	; 0xa72 <__stack+0x213>
     87a:	65 e0       	ldi	r22, 0x05	; 5
     87c:	81 e0       	ldi	r24, 0x01	; 1
     87e:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     882:	87 e9       	ldi	r24, 0x97	; 151
     884:	90 e0       	ldi	r25, 0x00	; 0
     886:	0e 94 45 07 	call	0xe8a	; 0xe8a <LCD_WriteString>
     88a:	81 e0       	ldi	r24, 0x01	; 1
     88c:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     890:	f0 c0       	rjmp	.+480    	; 0xa72 <__stack+0x213>
     892:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
     896:	81 11       	cpse	r24, r1
     898:	0e 94 74 00 	call	0xe8	; 0xe8 <new_operation_reset>
     89c:	cd 33       	cpi	r28, 0x3D	; 61
     89e:	f1 f5       	brne	.+124    	; 0x91c <__stack+0xbd>
     8a0:	e0 91 6e 01 	lds	r30, 0x016E	; 0x80016e <input_idx>
     8a4:	f0 e0       	ldi	r31, 0x00	; 0
     8a6:	e1 59       	subi	r30, 0x91	; 145
     8a8:	fe 4f       	sbci	r31, 0xFE	; 254
     8aa:	10 82       	st	Z, r1
     8ac:	80 91 6f 01 	lds	r24, 0x016F	; 0x80016f <input>
     8b0:	88 23       	and	r24, r24
     8b2:	f1 f0       	breq	.+60     	; 0x8f0 <__stack+0x91>
     8b4:	90 e0       	ldi	r25, 0x00	; 0
     8b6:	c0 e0       	ldi	r28, 0x00	; 0
     8b8:	d0 e0       	ldi	r29, 0x00	; 0
     8ba:	9e 01       	movw	r18, r28
     8bc:	22 0f       	add	r18, r18
     8be:	33 1f       	adc	r19, r19
     8c0:	cc 0f       	add	r28, r28
     8c2:	dd 1f       	adc	r29, r29
     8c4:	cc 0f       	add	r28, r28
     8c6:	dd 1f       	adc	r29, r29
     8c8:	cc 0f       	add	r28, r28
     8ca:	dd 1f       	adc	r29, r29
     8cc:	c2 0f       	add	r28, r18
     8ce:	d3 1f       	adc	r29, r19
     8d0:	80 53       	subi	r24, 0x30	; 48
     8d2:	c8 0f       	add	r28, r24
     8d4:	d1 1d       	adc	r29, r1
     8d6:	9f 5f       	subi	r25, 0xFF	; 255
     8d8:	e9 2f       	mov	r30, r25
     8da:	f0 e0       	ldi	r31, 0x00	; 0
     8dc:	e1 59       	subi	r30, 0x91	; 145
     8de:	fe 4f       	sbci	r31, 0xFE	; 254
     8e0:	80 81       	ld	r24, Z
     8e2:	81 11       	cpse	r24, r1
     8e4:	ea cf       	rjmp	.-44     	; 0x8ba <__stack+0x5b>
     8e6:	cf 3f       	cpi	r28, 0xFF	; 255
     8e8:	d1 05       	cpc	r29, r1
     8ea:	09 f0       	breq	.+2      	; 0x8ee <__stack+0x8f>
     8ec:	58 f4       	brcc	.+22     	; 0x904 <__stack+0xa5>
     8ee:	02 c0       	rjmp	.+4      	; 0x8f4 <__stack+0x95>
     8f0:	c0 e0       	ldi	r28, 0x00	; 0
     8f2:	d0 e0       	ldi	r29, 0x00	; 0
     8f4:	65 e0       	ldi	r22, 0x05	; 5
     8f6:	81 e0       	ldi	r24, 0x01	; 1
     8f8:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     8fc:	8c 2f       	mov	r24, r28
     8fe:	0e 94 5d 07 	call	0xeba	; 0xeba <LCD_WriteBinary_8B>
     902:	08 c0       	rjmp	.+16     	; 0x914 <__stack+0xb5>
     904:	65 e0       	ldi	r22, 0x05	; 5
     906:	81 e0       	ldi	r24, 0x01	; 1
     908:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     90c:	87 e9       	ldi	r24, 0x97	; 151
     90e:	90 e0       	ldi	r25, 0x00	; 0
     910:	0e 94 45 07 	call	0xe8a	; 0xe8a <LCD_WriteString>
     914:	81 e0       	ldi	r24, 0x01	; 1
     916:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     91a:	ab c0       	rjmp	.+342    	; 0xa72 <__stack+0x213>
     91c:	8c 2f       	mov	r24, r28
     91e:	0e 94 ae 00 	call	0x15c	; 0x15c <get_decimal>
     922:	a7 c0       	rjmp	.+334    	; 0xa72 <__stack+0x213>
     924:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
     928:	81 11       	cpse	r24, r1
     92a:	0e 94 74 00 	call	0xe8	; 0xe8 <new_operation_reset>
     92e:	cd 33       	cpi	r28, 0x3D	; 61
     930:	f1 f5       	brne	.+124    	; 0x9ae <__stack+0x14f>
     932:	e0 91 6e 01 	lds	r30, 0x016E	; 0x80016e <input_idx>
     936:	f0 e0       	ldi	r31, 0x00	; 0
     938:	e1 59       	subi	r30, 0x91	; 145
     93a:	fe 4f       	sbci	r31, 0xFE	; 254
     93c:	10 82       	st	Z, r1
     93e:	80 91 6f 01 	lds	r24, 0x016F	; 0x80016f <input>
     942:	88 23       	and	r24, r24
     944:	f1 f0       	breq	.+60     	; 0x982 <__stack+0x123>
     946:	90 e0       	ldi	r25, 0x00	; 0
     948:	c0 e0       	ldi	r28, 0x00	; 0
     94a:	d0 e0       	ldi	r29, 0x00	; 0
     94c:	9e 01       	movw	r18, r28
     94e:	22 0f       	add	r18, r18
     950:	33 1f       	adc	r19, r19
     952:	cc 0f       	add	r28, r28
     954:	dd 1f       	adc	r29, r29
     956:	cc 0f       	add	r28, r28
     958:	dd 1f       	adc	r29, r29
     95a:	cc 0f       	add	r28, r28
     95c:	dd 1f       	adc	r29, r29
     95e:	c2 0f       	add	r28, r18
     960:	d3 1f       	adc	r29, r19
     962:	80 53       	subi	r24, 0x30	; 48
     964:	c8 0f       	add	r28, r24
     966:	d1 1d       	adc	r29, r1
     968:	9f 5f       	subi	r25, 0xFF	; 255
     96a:	e9 2f       	mov	r30, r25
     96c:	f0 e0       	ldi	r31, 0x00	; 0
     96e:	e1 59       	subi	r30, 0x91	; 145
     970:	fe 4f       	sbci	r31, 0xFE	; 254
     972:	80 81       	ld	r24, Z
     974:	81 11       	cpse	r24, r1
     976:	ea cf       	rjmp	.-44     	; 0x94c <__stack+0xed>
     978:	cf 3f       	cpi	r28, 0xFF	; 255
     97a:	d1 05       	cpc	r29, r1
     97c:	09 f0       	breq	.+2      	; 0x980 <__stack+0x121>
     97e:	58 f4       	brcc	.+22     	; 0x996 <__stack+0x137>
     980:	02 c0       	rjmp	.+4      	; 0x986 <__stack+0x127>
     982:	c0 e0       	ldi	r28, 0x00	; 0
     984:	d0 e0       	ldi	r29, 0x00	; 0
     986:	65 e0       	ldi	r22, 0x05	; 5
     988:	81 e0       	ldi	r24, 0x01	; 1
     98a:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     98e:	8c 2f       	mov	r24, r28
     990:	0e 94 77 07 	call	0xeee	; 0xeee <LCD_WriteHex>
     994:	08 c0       	rjmp	.+16     	; 0x9a6 <__stack+0x147>
     996:	65 e0       	ldi	r22, 0x05	; 5
     998:	81 e0       	ldi	r24, 0x01	; 1
     99a:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     99e:	87 e9       	ldi	r24, 0x97	; 151
     9a0:	90 e0       	ldi	r25, 0x00	; 0
     9a2:	0e 94 45 07 	call	0xe8a	; 0xe8a <LCD_WriteString>
     9a6:	81 e0       	ldi	r24, 0x01	; 1
     9a8:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     9ac:	62 c0       	rjmp	.+196    	; 0xa72 <__stack+0x213>
     9ae:	8c 2f       	mov	r24, r28
     9b0:	0e 94 ae 00 	call	0x15c	; 0x15c <get_decimal>
     9b4:	5e c0       	rjmp	.+188    	; 0xa72 <__stack+0x213>
     9b6:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
     9ba:	81 11       	cpse	r24, r1
     9bc:	0e 94 74 00 	call	0xe8	; 0xe8 <new_operation_reset>
     9c0:	cd 33       	cpi	r28, 0x3D	; 61
     9c2:	b1 f4       	brne	.+44     	; 0x9f0 <__stack+0x191>
     9c4:	e0 91 6e 01 	lds	r30, 0x016E	; 0x80016e <input_idx>
     9c8:	f0 e0       	ldi	r31, 0x00	; 0
     9ca:	e1 59       	subi	r30, 0x91	; 145
     9cc:	fe 4f       	sbci	r31, 0xFE	; 254
     9ce:	10 82       	st	Z, r1
     9d0:	8f e6       	ldi	r24, 0x6F	; 111
     9d2:	91 e0       	ldi	r25, 0x01	; 1
     9d4:	0e 94 e0 02 	call	0x5c0	; 0x5c0 <hex_to_int>
     9d8:	c8 2f       	mov	r28, r24
     9da:	65 e0       	ldi	r22, 0x05	; 5
     9dc:	81 e0       	ldi	r24, 0x01	; 1
     9de:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     9e2:	8c 2f       	mov	r24, r28
     9e4:	0e 94 5d 07 	call	0xeba	; 0xeba <LCD_WriteBinary_8B>
     9e8:	81 e0       	ldi	r24, 0x01	; 1
     9ea:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     9ee:	41 c0       	rjmp	.+130    	; 0xa72 <__stack+0x213>
     9f0:	8c 2f       	mov	r24, r28
     9f2:	0e 94 17 02 	call	0x42e	; 0x42e <get_hex>
     9f6:	88 30       	cpi	r24, 0x08	; 8
     9f8:	e1 f5       	brne	.+120    	; 0xa72 <__stack+0x213>
     9fa:	65 e0       	ldi	r22, 0x05	; 5
     9fc:	81 e0       	ldi	r24, 0x01	; 1
     9fe:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     a02:	87 e9       	ldi	r24, 0x97	; 151
     a04:	90 e0       	ldi	r25, 0x00	; 0
     a06:	0e 94 45 07 	call	0xe8a	; 0xe8a <LCD_WriteString>
     a0a:	81 e0       	ldi	r24, 0x01	; 1
     a0c:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     a10:	30 c0       	rjmp	.+96     	; 0xa72 <__stack+0x213>
     a12:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
     a16:	81 11       	cpse	r24, r1
     a18:	0e 94 74 00 	call	0xe8	; 0xe8 <new_operation_reset>
     a1c:	cd 33       	cpi	r28, 0x3D	; 61
     a1e:	c9 f4       	brne	.+50     	; 0xa52 <__stack+0x1f3>
     a20:	e0 91 6e 01 	lds	r30, 0x016E	; 0x80016e <input_idx>
     a24:	f0 e0       	ldi	r31, 0x00	; 0
     a26:	e1 59       	subi	r30, 0x91	; 145
     a28:	fe 4f       	sbci	r31, 0xFE	; 254
     a2a:	10 82       	st	Z, r1
     a2c:	8f e6       	ldi	r24, 0x6F	; 111
     a2e:	91 e0       	ldi	r25, 0x01	; 1
     a30:	0e 94 e0 02 	call	0x5c0	; 0x5c0 <hex_to_int>
     a34:	c8 2f       	mov	r28, r24
     a36:	65 e0       	ldi	r22, 0x05	; 5
     a38:	81 e0       	ldi	r24, 0x01	; 1
     a3a:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     a3e:	6c 2f       	mov	r22, r28
     a40:	70 e0       	ldi	r23, 0x00	; 0
     a42:	80 e0       	ldi	r24, 0x00	; 0
     a44:	90 e0       	ldi	r25, 0x00	; 0
     a46:	0e 94 b8 06 	call	0xd70	; 0xd70 <LCD_WriteNumber>
     a4a:	81 e0       	ldi	r24, 0x01	; 1
     a4c:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     a50:	10 c0       	rjmp	.+32     	; 0xa72 <__stack+0x213>
     a52:	8c 2f       	mov	r24, r28
     a54:	0e 94 17 02 	call	0x42e	; 0x42e <get_hex>
     a58:	88 30       	cpi	r24, 0x08	; 8
     a5a:	59 f4       	brne	.+22     	; 0xa72 <__stack+0x213>
     a5c:	65 e0       	ldi	r22, 0x05	; 5
     a5e:	81 e0       	ldi	r24, 0x01	; 1
     a60:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     a64:	87 e9       	ldi	r24, 0x97	; 151
     a66:	90 e0       	ldi	r25, 0x00	; 0
     a68:	0e 94 45 07 	call	0xe8a	; 0xe8a <LCD_WriteString>
     a6c:	81 e0       	ldi	r24, 0x01	; 1
     a6e:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     a72:	df 91       	pop	r29
     a74:	cf 91       	pop	r28
     a76:	08 95       	ret

00000a78 <WriteInstruction>:
     a78:	cf 93       	push	r28
     a7a:	c8 2f       	mov	r28, r24
     a7c:	60 e0       	ldi	r22, 0x00	; 0
     a7e:	8f e0       	ldi	r24, 0x0F	; 15
     a80:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     a84:	8f ec       	ldi	r24, 0xCF	; 207
     a86:	97 e0       	ldi	r25, 0x07	; 7
     a88:	01 97       	sbiw	r24, 0x01	; 1
     a8a:	f1 f7       	brne	.-4      	; 0xa88 <WriteInstruction+0x10>
     a8c:	00 c0       	rjmp	.+0      	; 0xa8e <WriteInstruction+0x16>
     a8e:	00 00       	nop
     a90:	60 e0       	ldi	r22, 0x00	; 0
     a92:	81 e0       	ldi	r24, 0x01	; 1
     a94:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     a98:	6c 2f       	mov	r22, r28
     a9a:	66 1f       	adc	r22, r22
     a9c:	66 27       	eor	r22, r22
     a9e:	66 1f       	adc	r22, r22
     aa0:	86 e0       	ldi	r24, 0x06	; 6
     aa2:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     aa6:	c6 fb       	bst	r28, 6
     aa8:	66 27       	eor	r22, r22
     aaa:	60 f9       	bld	r22, 0
     aac:	85 e0       	ldi	r24, 0x05	; 5
     aae:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     ab2:	c5 fb       	bst	r28, 5
     ab4:	66 27       	eor	r22, r22
     ab6:	60 f9       	bld	r22, 0
     ab8:	84 e0       	ldi	r24, 0x04	; 4
     aba:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     abe:	c4 fb       	bst	r28, 4
     ac0:	66 27       	eor	r22, r22
     ac2:	60 f9       	bld	r22, 0
     ac4:	83 e0       	ldi	r24, 0x03	; 3
     ac6:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     aca:	61 e0       	ldi	r22, 0x01	; 1
     acc:	82 e0       	ldi	r24, 0x02	; 2
     ace:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     ad2:	8f e9       	ldi	r24, 0x9F	; 159
     ad4:	9f e0       	ldi	r25, 0x0F	; 15
     ad6:	01 97       	sbiw	r24, 0x01	; 1
     ad8:	f1 f7       	brne	.-4      	; 0xad6 <WriteInstruction+0x5e>
     ada:	00 c0       	rjmp	.+0      	; 0xadc <WriteInstruction+0x64>
     adc:	00 00       	nop
     ade:	60 e0       	ldi	r22, 0x00	; 0
     ae0:	82 e0       	ldi	r24, 0x02	; 2
     ae2:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     ae6:	8f e9       	ldi	r24, 0x9F	; 159
     ae8:	9f e0       	ldi	r25, 0x0F	; 15
     aea:	01 97       	sbiw	r24, 0x01	; 1
     aec:	f1 f7       	brne	.-4      	; 0xaea <WriteInstruction+0x72>
     aee:	00 c0       	rjmp	.+0      	; 0xaf0 <WriteInstruction+0x78>
     af0:	00 00       	nop
     af2:	c3 fb       	bst	r28, 3
     af4:	66 27       	eor	r22, r22
     af6:	60 f9       	bld	r22, 0
     af8:	86 e0       	ldi	r24, 0x06	; 6
     afa:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     afe:	c2 fb       	bst	r28, 2
     b00:	66 27       	eor	r22, r22
     b02:	60 f9       	bld	r22, 0
     b04:	85 e0       	ldi	r24, 0x05	; 5
     b06:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     b0a:	c1 fb       	bst	r28, 1
     b0c:	66 27       	eor	r22, r22
     b0e:	60 f9       	bld	r22, 0
     b10:	84 e0       	ldi	r24, 0x04	; 4
     b12:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     b16:	6c 2f       	mov	r22, r28
     b18:	61 70       	andi	r22, 0x01	; 1
     b1a:	83 e0       	ldi	r24, 0x03	; 3
     b1c:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     b20:	61 e0       	ldi	r22, 0x01	; 1
     b22:	82 e0       	ldi	r24, 0x02	; 2
     b24:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     b28:	8f e9       	ldi	r24, 0x9F	; 159
     b2a:	9f e0       	ldi	r25, 0x0F	; 15
     b2c:	01 97       	sbiw	r24, 0x01	; 1
     b2e:	f1 f7       	brne	.-4      	; 0xb2c <WriteInstruction+0xb4>
     b30:	00 c0       	rjmp	.+0      	; 0xb32 <WriteInstruction+0xba>
     b32:	00 00       	nop
     b34:	60 e0       	ldi	r22, 0x00	; 0
     b36:	82 e0       	ldi	r24, 0x02	; 2
     b38:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     b3c:	8f e9       	ldi	r24, 0x9F	; 159
     b3e:	9f e0       	ldi	r25, 0x0F	; 15
     b40:	01 97       	sbiw	r24, 0x01	; 1
     b42:	f1 f7       	brne	.-4      	; 0xb40 <WriteInstruction+0xc8>
     b44:	00 c0       	rjmp	.+0      	; 0xb46 <WriteInstruction+0xce>
     b46:	00 00       	nop
     b48:	cf 91       	pop	r28
     b4a:	08 95       	ret

00000b4c <LCD_Clear>:
     b4c:	81 e0       	ldi	r24, 0x01	; 1
     b4e:	0e 94 3c 05 	call	0xa78	; 0xa78 <WriteInstruction>
     b52:	8f e9       	ldi	r24, 0x9F	; 159
     b54:	9f e0       	ldi	r25, 0x0F	; 15
     b56:	01 97       	sbiw	r24, 0x01	; 1
     b58:	f1 f7       	brne	.-4      	; 0xb56 <LCD_Clear+0xa>
     b5a:	00 c0       	rjmp	.+0      	; 0xb5c <LCD_Clear+0x10>
     b5c:	00 00       	nop
     b5e:	10 92 7c 01 	sts	0x017C, r1	; 0x80017c <cell>
     b62:	10 92 7b 01 	sts	0x017B, r1	; 0x80017b <line>
     b66:	08 95       	ret

00000b68 <LCD_SetCursor>:
     b68:	80 93 7b 01 	sts	0x017B, r24	; 0x80017b <line>
     b6c:	60 93 7c 01 	sts	0x017C, r22	; 0x80017c <cell>
     b70:	81 11       	cpse	r24, r1
     b72:	06 c0       	rjmp	.+12     	; 0xb80 <LCD_SetCursor+0x18>
     b74:	80 e8       	ldi	r24, 0x80	; 128
     b76:	86 0f       	add	r24, r22
     b78:	0e 94 3c 05 	call	0xa78	; 0xa78 <WriteInstruction>
     b7c:	80 e0       	ldi	r24, 0x00	; 0
     b7e:	08 95       	ret
     b80:	81 30       	cpi	r24, 0x01	; 1
     b82:	31 f4       	brne	.+12     	; 0xb90 <LCD_SetCursor+0x28>
     b84:	80 ec       	ldi	r24, 0xC0	; 192
     b86:	86 0f       	add	r24, r22
     b88:	0e 94 3c 05 	call	0xa78	; 0xa78 <WriteInstruction>
     b8c:	80 e0       	ldi	r24, 0x00	; 0
     b8e:	08 95       	ret
     b90:	84 e0       	ldi	r24, 0x04	; 4
     b92:	08 95       	ret

00000b94 <WriteData>:
     b94:	cf 93       	push	r28
     b96:	df 93       	push	r29
     b98:	c8 2f       	mov	r28, r24
     b9a:	d6 2f       	mov	r29, r22
     b9c:	61 30       	cpi	r22, 0x01	; 1
     b9e:	31 f4       	brne	.+12     	; 0xbac <WriteData+0x18>
     ba0:	60 91 7c 01 	lds	r22, 0x017C	; 0x80017c <cell>
     ba4:	80 91 7b 01 	lds	r24, 0x017B	; 0x80017b <line>
     ba8:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     bac:	60 e0       	ldi	r22, 0x00	; 0
     bae:	8f e0       	ldi	r24, 0x0F	; 15
     bb0:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     bb4:	8f ec       	ldi	r24, 0xCF	; 207
     bb6:	97 e0       	ldi	r25, 0x07	; 7
     bb8:	01 97       	sbiw	r24, 0x01	; 1
     bba:	f1 f7       	brne	.-4      	; 0xbb8 <WriteData+0x24>
     bbc:	00 c0       	rjmp	.+0      	; 0xbbe <WriteData+0x2a>
     bbe:	00 00       	nop
     bc0:	61 e0       	ldi	r22, 0x01	; 1
     bc2:	81 e0       	ldi	r24, 0x01	; 1
     bc4:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     bc8:	6c 2f       	mov	r22, r28
     bca:	66 1f       	adc	r22, r22
     bcc:	66 27       	eor	r22, r22
     bce:	66 1f       	adc	r22, r22
     bd0:	86 e0       	ldi	r24, 0x06	; 6
     bd2:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     bd6:	c6 fb       	bst	r28, 6
     bd8:	66 27       	eor	r22, r22
     bda:	60 f9       	bld	r22, 0
     bdc:	85 e0       	ldi	r24, 0x05	; 5
     bde:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     be2:	c5 fb       	bst	r28, 5
     be4:	66 27       	eor	r22, r22
     be6:	60 f9       	bld	r22, 0
     be8:	84 e0       	ldi	r24, 0x04	; 4
     bea:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     bee:	c4 fb       	bst	r28, 4
     bf0:	66 27       	eor	r22, r22
     bf2:	60 f9       	bld	r22, 0
     bf4:	83 e0       	ldi	r24, 0x03	; 3
     bf6:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     bfa:	61 e0       	ldi	r22, 0x01	; 1
     bfc:	82 e0       	ldi	r24, 0x02	; 2
     bfe:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     c02:	8f e9       	ldi	r24, 0x9F	; 159
     c04:	9f e0       	ldi	r25, 0x0F	; 15
     c06:	01 97       	sbiw	r24, 0x01	; 1
     c08:	f1 f7       	brne	.-4      	; 0xc06 <WriteData+0x72>
     c0a:	00 c0       	rjmp	.+0      	; 0xc0c <WriteData+0x78>
     c0c:	00 00       	nop
     c0e:	60 e0       	ldi	r22, 0x00	; 0
     c10:	82 e0       	ldi	r24, 0x02	; 2
     c12:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     c16:	8f e9       	ldi	r24, 0x9F	; 159
     c18:	9f e0       	ldi	r25, 0x0F	; 15
     c1a:	01 97       	sbiw	r24, 0x01	; 1
     c1c:	f1 f7       	brne	.-4      	; 0xc1a <WriteData+0x86>
     c1e:	00 c0       	rjmp	.+0      	; 0xc20 <WriteData+0x8c>
     c20:	00 00       	nop
     c22:	c3 fb       	bst	r28, 3
     c24:	66 27       	eor	r22, r22
     c26:	60 f9       	bld	r22, 0
     c28:	86 e0       	ldi	r24, 0x06	; 6
     c2a:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     c2e:	c2 fb       	bst	r28, 2
     c30:	66 27       	eor	r22, r22
     c32:	60 f9       	bld	r22, 0
     c34:	85 e0       	ldi	r24, 0x05	; 5
     c36:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     c3a:	c1 fb       	bst	r28, 1
     c3c:	66 27       	eor	r22, r22
     c3e:	60 f9       	bld	r22, 0
     c40:	84 e0       	ldi	r24, 0x04	; 4
     c42:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     c46:	6c 2f       	mov	r22, r28
     c48:	61 70       	andi	r22, 0x01	; 1
     c4a:	83 e0       	ldi	r24, 0x03	; 3
     c4c:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     c50:	61 e0       	ldi	r22, 0x01	; 1
     c52:	82 e0       	ldi	r24, 0x02	; 2
     c54:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     c58:	8f e9       	ldi	r24, 0x9F	; 159
     c5a:	9f e0       	ldi	r25, 0x0F	; 15
     c5c:	01 97       	sbiw	r24, 0x01	; 1
     c5e:	f1 f7       	brne	.-4      	; 0xc5c <WriteData+0xc8>
     c60:	00 c0       	rjmp	.+0      	; 0xc62 <WriteData+0xce>
     c62:	00 00       	nop
     c64:	60 e0       	ldi	r22, 0x00	; 0
     c66:	82 e0       	ldi	r24, 0x02	; 2
     c68:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     c6c:	8f e9       	ldi	r24, 0x9F	; 159
     c6e:	9f e0       	ldi	r25, 0x0F	; 15
     c70:	01 97       	sbiw	r24, 0x01	; 1
     c72:	f1 f7       	brne	.-4      	; 0xc70 <WriteData+0xdc>
     c74:	00 c0       	rjmp	.+0      	; 0xc76 <WriteData+0xe2>
     c76:	00 00       	nop
     c78:	d1 30       	cpi	r29, 0x01	; 1
     c7a:	b1 f4       	brne	.+44     	; 0xca8 <WriteData+0x114>
     c7c:	80 91 7c 01 	lds	r24, 0x017C	; 0x80017c <cell>
     c80:	8f 30       	cpi	r24, 0x0F	; 15
     c82:	79 f4       	brne	.+30     	; 0xca2 <WriteData+0x10e>
     c84:	80 91 7b 01 	lds	r24, 0x017B	; 0x80017b <line>
     c88:	81 30       	cpi	r24, 0x01	; 1
     c8a:	29 f4       	brne	.+10     	; 0xc96 <WriteData+0x102>
     c8c:	10 92 7b 01 	sts	0x017B, r1	; 0x80017b <line>
     c90:	10 92 7c 01 	sts	0x017C, r1	; 0x80017c <cell>
     c94:	09 c0       	rjmp	.+18     	; 0xca8 <WriteData+0x114>
     c96:	8f 5f       	subi	r24, 0xFF	; 255
     c98:	80 93 7b 01 	sts	0x017B, r24	; 0x80017b <line>
     c9c:	10 92 7c 01 	sts	0x017C, r1	; 0x80017c <cell>
     ca0:	03 c0       	rjmp	.+6      	; 0xca8 <WriteData+0x114>
     ca2:	8f 5f       	subi	r24, 0xFF	; 255
     ca4:	80 93 7c 01 	sts	0x017C, r24	; 0x80017c <cell>
     ca8:	df 91       	pop	r29
     caa:	cf 91       	pop	r28
     cac:	08 95       	ret

00000cae <LCD_Init>:
     cae:	0f 93       	push	r16
     cb0:	1f 93       	push	r17
     cb2:	cf 93       	push	r28
     cb4:	df 93       	push	r29
     cb6:	10 92 7c 01 	sts	0x017C, r1	; 0x80017c <cell>
     cba:	10 92 7b 01 	sts	0x017B, r1	; 0x80017b <line>
     cbe:	10 92 7a 01 	sts	0x017A, r1	; 0x80017a <saved_patterns>
     cc2:	2f e7       	ldi	r18, 0x7F	; 127
     cc4:	88 e3       	ldi	r24, 0x38	; 56
     cc6:	91 e0       	ldi	r25, 0x01	; 1
     cc8:	21 50       	subi	r18, 0x01	; 1
     cca:	80 40       	sbci	r24, 0x00	; 0
     ccc:	90 40       	sbci	r25, 0x00	; 0
     cce:	e1 f7       	brne	.-8      	; 0xcc8 <LCD_Init+0x1a>
     cd0:	00 c0       	rjmp	.+0      	; 0xcd2 <LCD_Init+0x24>
     cd2:	00 00       	nop
     cd4:	60 e0       	ldi	r22, 0x00	; 0
     cd6:	8f e0       	ldi	r24, 0x0F	; 15
     cd8:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     cdc:	8f ec       	ldi	r24, 0xCF	; 207
     cde:	97 e0       	ldi	r25, 0x07	; 7
     ce0:	01 97       	sbiw	r24, 0x01	; 1
     ce2:	f1 f7       	brne	.-4      	; 0xce0 <LCD_Init+0x32>
     ce4:	00 c0       	rjmp	.+0      	; 0xce6 <LCD_Init+0x38>
     ce6:	00 00       	nop
     ce8:	82 e0       	ldi	r24, 0x02	; 2
     cea:	0e 94 3c 05 	call	0xa78	; 0xa78 <WriteInstruction>
     cee:	88 e2       	ldi	r24, 0x28	; 40
     cf0:	0e 94 3c 05 	call	0xa78	; 0xa78 <WriteInstruction>
     cf4:	8f ec       	ldi	r24, 0xCF	; 207
     cf6:	97 e0       	ldi	r25, 0x07	; 7
     cf8:	01 97       	sbiw	r24, 0x01	; 1
     cfa:	f1 f7       	brne	.-4      	; 0xcf8 <LCD_Init+0x4a>
     cfc:	00 c0       	rjmp	.+0      	; 0xcfe <LCD_Init+0x50>
     cfe:	00 00       	nop
     d00:	8c e0       	ldi	r24, 0x0C	; 12
     d02:	0e 94 3c 05 	call	0xa78	; 0xa78 <WriteInstruction>
     d06:	8f ec       	ldi	r24, 0xCF	; 207
     d08:	97 e0       	ldi	r25, 0x07	; 7
     d0a:	01 97       	sbiw	r24, 0x01	; 1
     d0c:	f1 f7       	brne	.-4      	; 0xd0a <LCD_Init+0x5c>
     d0e:	00 c0       	rjmp	.+0      	; 0xd10 <LCD_Init+0x62>
     d10:	00 00       	nop
     d12:	81 e0       	ldi	r24, 0x01	; 1
     d14:	0e 94 3c 05 	call	0xa78	; 0xa78 <WriteInstruction>
     d18:	8f e9       	ldi	r24, 0x9F	; 159
     d1a:	9f e0       	ldi	r25, 0x0F	; 15
     d1c:	01 97       	sbiw	r24, 0x01	; 1
     d1e:	f1 f7       	brne	.-4      	; 0xd1c <LCD_Init+0x6e>
     d20:	00 c0       	rjmp	.+0      	; 0xd22 <LCD_Init+0x74>
     d22:	00 00       	nop
     d24:	86 e0       	ldi	r24, 0x06	; 6
     d26:	0e 94 3c 05 	call	0xa78	; 0xa78 <WriteInstruction>
     d2a:	80 e4       	ldi	r24, 0x40	; 64
     d2c:	0e 94 3c 05 	call	0xa78	; 0xa78 <WriteInstruction>
     d30:	cc e2       	ldi	r28, 0x2C	; 44
     d32:	d1 e0       	ldi	r29, 0x01	; 1
     d34:	04 e3       	ldi	r16, 0x34	; 52
     d36:	11 e0       	ldi	r17, 0x01	; 1
     d38:	60 e0       	ldi	r22, 0x00	; 0
     d3a:	89 91       	ld	r24, Y+
     d3c:	0e 94 ca 05 	call	0xb94	; 0xb94 <WriteData>
     d40:	c0 17       	cp	r28, r16
     d42:	d1 07       	cpc	r29, r17
     d44:	c9 f7       	brne	.-14     	; 0xd38 <LCD_Init+0x8a>
     d46:	80 91 7a 01 	lds	r24, 0x017A	; 0x80017a <saved_patterns>
     d4a:	8f 5f       	subi	r24, 0xFF	; 255
     d4c:	80 93 7a 01 	sts	0x017A, r24	; 0x80017a <saved_patterns>
     d50:	80 e8       	ldi	r24, 0x80	; 128
     d52:	0e 94 3c 05 	call	0xa78	; 0xa78 <WriteInstruction>
     d56:	10 92 7c 01 	sts	0x017C, r1	; 0x80017c <cell>
     d5a:	10 92 7b 01 	sts	0x017B, r1	; 0x80017b <line>
     d5e:	df 91       	pop	r29
     d60:	cf 91       	pop	r28
     d62:	1f 91       	pop	r17
     d64:	0f 91       	pop	r16
     d66:	08 95       	ret

00000d68 <LCD_WriteChar>:
     d68:	61 e0       	ldi	r22, 0x01	; 1
     d6a:	0e 94 ca 05 	call	0xb94	; 0xb94 <WriteData>
     d6e:	08 95       	ret

00000d70 <LCD_WriteNumber>:
     d70:	4f 92       	push	r4
     d72:	5f 92       	push	r5
     d74:	6f 92       	push	r6
     d76:	7f 92       	push	r7
     d78:	af 92       	push	r10
     d7a:	bf 92       	push	r11
     d7c:	cf 92       	push	r12
     d7e:	df 92       	push	r13
     d80:	ef 92       	push	r14
     d82:	ff 92       	push	r15
     d84:	0f 93       	push	r16
     d86:	1f 93       	push	r17
     d88:	cf 93       	push	r28
     d8a:	df 93       	push	r29
     d8c:	cd b7       	in	r28, 0x3d	; 61
     d8e:	de b7       	in	r29, 0x3e	; 62
     d90:	2b 97       	sbiw	r28, 0x0b	; 11
     d92:	0f b6       	in	r0, 0x3f	; 63
     d94:	f8 94       	cli
     d96:	de bf       	out	0x3e, r29	; 62
     d98:	0f be       	out	0x3f, r0	; 63
     d9a:	cd bf       	out	0x3d, r28	; 61
     d9c:	6b 01       	movw	r12, r22
     d9e:	7c 01       	movw	r14, r24
     da0:	fe 01       	movw	r30, r28
     da2:	31 96       	adiw	r30, 0x01	; 1
     da4:	8b e0       	ldi	r24, 0x0B	; 11
     da6:	df 01       	movw	r26, r30
     da8:	1d 92       	st	X+, r1
     daa:	8a 95       	dec	r24
     dac:	e9 f7       	brne	.-6      	; 0xda8 <LCD_WriteNumber+0x38>
     dae:	ff 20       	and	r15, r15
     db0:	0c f0       	brlt	.+2      	; 0xdb4 <LCD_WriteNumber+0x44>
     db2:	4f c0       	rjmp	.+158    	; 0xe52 <LCD_WriteNumber+0xe2>
     db4:	8d e2       	ldi	r24, 0x2D	; 45
     db6:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     dba:	f0 94       	com	r15
     dbc:	e0 94       	com	r14
     dbe:	d0 94       	com	r13
     dc0:	c0 94       	com	r12
     dc2:	c1 1c       	adc	r12, r1
     dc4:	d1 1c       	adc	r13, r1
     dc6:	e1 1c       	adc	r14, r1
     dc8:	f1 1c       	adc	r15, r1
     dca:	c1 14       	cp	r12, r1
     dcc:	d1 04       	cpc	r13, r1
     dce:	e1 04       	cpc	r14, r1
     dd0:	f1 04       	cpc	r15, r1
     dd2:	21 f4       	brne	.+8      	; 0xddc <LCD_WriteNumber+0x6c>
     dd4:	80 e3       	ldi	r24, 0x30	; 48
     dd6:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     dda:	42 c0       	rjmp	.+132    	; 0xe60 <LCD_WriteNumber+0xf0>
     ddc:	10 e0       	ldi	r17, 0x00	; 0
     dde:	0f 2e       	mov	r0, r31
     de0:	fa e0       	ldi	r31, 0x0A	; 10
     de2:	4f 2e       	mov	r4, r31
     de4:	51 2c       	mov	r5, r1
     de6:	61 2c       	mov	r6, r1
     de8:	71 2c       	mov	r7, r1
     dea:	f0 2d       	mov	r31, r0
     dec:	01 c0       	rjmp	.+2      	; 0xdf0 <LCD_WriteNumber+0x80>
     dee:	10 2f       	mov	r17, r16
     df0:	01 e0       	ldi	r16, 0x01	; 1
     df2:	01 0f       	add	r16, r17
     df4:	aa 24       	eor	r10, r10
     df6:	a3 94       	inc	r10
     df8:	b1 2c       	mov	r11, r1
     dfa:	ac 0e       	add	r10, r28
     dfc:	bd 1e       	adc	r11, r29
     dfe:	a1 0e       	add	r10, r17
     e00:	b1 1c       	adc	r11, r1
     e02:	17 fd       	sbrc	r17, 7
     e04:	ba 94       	dec	r11
     e06:	c7 01       	movw	r24, r14
     e08:	b6 01       	movw	r22, r12
     e0a:	a3 01       	movw	r20, r6
     e0c:	92 01       	movw	r18, r4
     e0e:	0e 94 25 0a 	call	0x144a	; 0x144a <__divmodsi4>
     e12:	60 5d       	subi	r22, 0xD0	; 208
     e14:	f5 01       	movw	r30, r10
     e16:	60 83       	st	Z, r22
     e18:	c2 2e       	mov	r12, r18
     e1a:	d3 2e       	mov	r13, r19
     e1c:	e4 2e       	mov	r14, r20
     e1e:	f5 2e       	mov	r15, r21
     e20:	c1 14       	cp	r12, r1
     e22:	d1 04       	cpc	r13, r1
     e24:	e1 04       	cpc	r14, r1
     e26:	f1 04       	cpc	r15, r1
     e28:	11 f7       	brne	.-60     	; 0xdee <LCD_WriteNumber+0x7e>
     e2a:	11 23       	and	r17, r17
     e2c:	cc f0       	brlt	.+50     	; 0xe60 <LCD_WriteNumber+0xf0>
     e2e:	ff 24       	eor	r15, r15
     e30:	fa 94       	dec	r15
     e32:	f1 0e       	add	r15, r17
     e34:	e1 e0       	ldi	r30, 0x01	; 1
     e36:	f0 e0       	ldi	r31, 0x00	; 0
     e38:	ec 0f       	add	r30, r28
     e3a:	fd 1f       	adc	r31, r29
     e3c:	e1 0f       	add	r30, r17
     e3e:	f1 1d       	adc	r31, r1
     e40:	17 fd       	sbrc	r17, 7
     e42:	fa 95       	dec	r31
     e44:	80 81       	ld	r24, Z
     e46:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     e4a:	1f 2d       	mov	r17, r15
     e4c:	ff 20       	and	r15, r15
     e4e:	7c f7       	brge	.-34     	; 0xe2e <LCD_WriteNumber+0xbe>
     e50:	07 c0       	rjmp	.+14     	; 0xe60 <LCD_WriteNumber+0xf0>
     e52:	c1 14       	cp	r12, r1
     e54:	d1 04       	cpc	r13, r1
     e56:	e1 04       	cpc	r14, r1
     e58:	f1 04       	cpc	r15, r1
     e5a:	09 f0       	breq	.+2      	; 0xe5e <LCD_WriteNumber+0xee>
     e5c:	bf cf       	rjmp	.-130    	; 0xddc <LCD_WriteNumber+0x6c>
     e5e:	ba cf       	rjmp	.-140    	; 0xdd4 <LCD_WriteNumber+0x64>
     e60:	2b 96       	adiw	r28, 0x0b	; 11
     e62:	0f b6       	in	r0, 0x3f	; 63
     e64:	f8 94       	cli
     e66:	de bf       	out	0x3e, r29	; 62
     e68:	0f be       	out	0x3f, r0	; 63
     e6a:	cd bf       	out	0x3d, r28	; 61
     e6c:	df 91       	pop	r29
     e6e:	cf 91       	pop	r28
     e70:	1f 91       	pop	r17
     e72:	0f 91       	pop	r16
     e74:	ff 90       	pop	r15
     e76:	ef 90       	pop	r14
     e78:	df 90       	pop	r13
     e7a:	cf 90       	pop	r12
     e7c:	bf 90       	pop	r11
     e7e:	af 90       	pop	r10
     e80:	7f 90       	pop	r7
     e82:	6f 90       	pop	r6
     e84:	5f 90       	pop	r5
     e86:	4f 90       	pop	r4
     e88:	08 95       	ret

00000e8a <LCD_WriteString>:
     e8a:	0f 93       	push	r16
     e8c:	1f 93       	push	r17
     e8e:	cf 93       	push	r28
     e90:	fc 01       	movw	r30, r24
     e92:	89 2b       	or	r24, r25
     e94:	71 f0       	breq	.+28     	; 0xeb2 <LCD_WriteString+0x28>
     e96:	80 81       	ld	r24, Z
     e98:	88 23       	and	r24, r24
     e9a:	59 f0       	breq	.+22     	; 0xeb2 <LCD_WriteString+0x28>
     e9c:	8f 01       	movw	r16, r30
     e9e:	c0 e0       	ldi	r28, 0x00	; 0
     ea0:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     ea4:	cf 5f       	subi	r28, 0xFF	; 255
     ea6:	f8 01       	movw	r30, r16
     ea8:	ec 0f       	add	r30, r28
     eaa:	f1 1d       	adc	r31, r1
     eac:	80 81       	ld	r24, Z
     eae:	81 11       	cpse	r24, r1
     eb0:	f7 cf       	rjmp	.-18     	; 0xea0 <LCD_WriteString+0x16>
     eb2:	cf 91       	pop	r28
     eb4:	1f 91       	pop	r17
     eb6:	0f 91       	pop	r16
     eb8:	08 95       	ret

00000eba <LCD_WriteBinary_8B>:
     eba:	0f 93       	push	r16
     ebc:	1f 93       	push	r17
     ebe:	cf 93       	push	r28
     ec0:	df 93       	push	r29
     ec2:	c7 e0       	ldi	r28, 0x07	; 7
     ec4:	d0 e0       	ldi	r29, 0x00	; 0
     ec6:	08 2f       	mov	r16, r24
     ec8:	10 e0       	ldi	r17, 0x00	; 0
     eca:	c8 01       	movw	r24, r16
     ecc:	0c 2e       	mov	r0, r28
     ece:	02 c0       	rjmp	.+4      	; 0xed4 <LCD_WriteBinary_8B+0x1a>
     ed0:	95 95       	asr	r25
     ed2:	87 95       	ror	r24
     ed4:	0a 94       	dec	r0
     ed6:	e2 f7       	brpl	.-8      	; 0xed0 <LCD_WriteBinary_8B+0x16>
     ed8:	81 70       	andi	r24, 0x01	; 1
     eda:	80 5d       	subi	r24, 0xD0	; 208
     edc:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     ee0:	21 97       	sbiw	r28, 0x01	; 1
     ee2:	98 f7       	brcc	.-26     	; 0xeca <LCD_WriteBinary_8B+0x10>
     ee4:	df 91       	pop	r29
     ee6:	cf 91       	pop	r28
     ee8:	1f 91       	pop	r17
     eea:	0f 91       	pop	r16
     eec:	08 95       	ret

00000eee <LCD_WriteHex>:
     eee:	1f 93       	push	r17
     ef0:	cf 93       	push	r28
     ef2:	df 93       	push	r29
     ef4:	cd b7       	in	r28, 0x3d	; 61
     ef6:	de b7       	in	r29, 0x3e	; 62
     ef8:	60 97       	sbiw	r28, 0x10	; 16
     efa:	0f b6       	in	r0, 0x3f	; 63
     efc:	f8 94       	cli
     efe:	de bf       	out	0x3e, r29	; 62
     f00:	0f be       	out	0x3f, r0	; 63
     f02:	cd bf       	out	0x3d, r28	; 61
     f04:	18 2f       	mov	r17, r24
     f06:	80 e1       	ldi	r24, 0x10	; 16
     f08:	e4 e6       	ldi	r30, 0x64	; 100
     f0a:	f0 e0       	ldi	r31, 0x00	; 0
     f0c:	de 01       	movw	r26, r28
     f0e:	11 96       	adiw	r26, 0x01	; 1
     f10:	01 90       	ld	r0, Z+
     f12:	0d 92       	st	X+, r0
     f14:	8a 95       	dec	r24
     f16:	e1 f7       	brne	.-8      	; 0xf10 <LCD_WriteHex+0x22>
     f18:	89 e2       	ldi	r24, 0x29	; 41
     f1a:	91 e0       	ldi	r25, 0x01	; 1
     f1c:	0e 94 45 07 	call	0xe8a	; 0xe8a <LCD_WriteString>
     f20:	81 2f       	mov	r24, r17
     f22:	82 95       	swap	r24
     f24:	8f 70       	andi	r24, 0x0F	; 15
     f26:	e1 e0       	ldi	r30, 0x01	; 1
     f28:	f0 e0       	ldi	r31, 0x00	; 0
     f2a:	ec 0f       	add	r30, r28
     f2c:	fd 1f       	adc	r31, r29
     f2e:	e8 0f       	add	r30, r24
     f30:	f1 1d       	adc	r31, r1
     f32:	80 81       	ld	r24, Z
     f34:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     f38:	1f 70       	andi	r17, 0x0F	; 15
     f3a:	e1 e0       	ldi	r30, 0x01	; 1
     f3c:	f0 e0       	ldi	r31, 0x00	; 0
     f3e:	ec 0f       	add	r30, r28
     f40:	fd 1f       	adc	r31, r29
     f42:	e1 0f       	add	r30, r17
     f44:	f1 1d       	adc	r31, r1
     f46:	80 81       	ld	r24, Z
     f48:	0e 94 b4 06 	call	0xd68	; 0xd68 <LCD_WriteChar>
     f4c:	60 96       	adiw	r28, 0x10	; 16
     f4e:	0f b6       	in	r0, 0x3f	; 63
     f50:	f8 94       	cli
     f52:	de bf       	out	0x3e, r29	; 62
     f54:	0f be       	out	0x3f, r0	; 63
     f56:	cd bf       	out	0x3d, r28	; 61
     f58:	df 91       	pop	r29
     f5a:	cf 91       	pop	r28
     f5c:	1f 91       	pop	r17
     f5e:	08 95       	ret

00000f60 <LCD_ClearLocation>:
     f60:	0e 94 b4 05 	call	0xb68	; 0xb68 <LCD_SetCursor>
     f64:	84 30       	cpi	r24, 0x04	; 4
     f66:	09 f4       	brne	.+2      	; 0xf6a <LCD_ClearLocation+0xa>
     f68:	57 c0       	rjmp	.+174    	; 0x1018 <LCD_ClearLocation+0xb8>
     f6a:	60 e0       	ldi	r22, 0x00	; 0
     f6c:	8f e0       	ldi	r24, 0x0F	; 15
     f6e:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     f72:	8f ec       	ldi	r24, 0xCF	; 207
     f74:	97 e0       	ldi	r25, 0x07	; 7
     f76:	01 97       	sbiw	r24, 0x01	; 1
     f78:	f1 f7       	brne	.-4      	; 0xf76 <LCD_ClearLocation+0x16>
     f7a:	00 c0       	rjmp	.+0      	; 0xf7c <LCD_ClearLocation+0x1c>
     f7c:	00 00       	nop
     f7e:	61 e0       	ldi	r22, 0x01	; 1
     f80:	81 e0       	ldi	r24, 0x01	; 1
     f82:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     f86:	60 e0       	ldi	r22, 0x00	; 0
     f88:	86 e0       	ldi	r24, 0x06	; 6
     f8a:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     f8e:	60 e0       	ldi	r22, 0x00	; 0
     f90:	85 e0       	ldi	r24, 0x05	; 5
     f92:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     f96:	60 e0       	ldi	r22, 0x00	; 0
     f98:	84 e0       	ldi	r24, 0x04	; 4
     f9a:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     f9e:	60 e0       	ldi	r22, 0x00	; 0
     fa0:	83 e0       	ldi	r24, 0x03	; 3
     fa2:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     fa6:	61 e0       	ldi	r22, 0x01	; 1
     fa8:	82 e0       	ldi	r24, 0x02	; 2
     faa:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     fae:	8f e9       	ldi	r24, 0x9F	; 159
     fb0:	9f e0       	ldi	r25, 0x0F	; 15
     fb2:	01 97       	sbiw	r24, 0x01	; 1
     fb4:	f1 f7       	brne	.-4      	; 0xfb2 <LCD_ClearLocation+0x52>
     fb6:	00 c0       	rjmp	.+0      	; 0xfb8 <LCD_ClearLocation+0x58>
     fb8:	00 00       	nop
     fba:	60 e0       	ldi	r22, 0x00	; 0
     fbc:	82 e0       	ldi	r24, 0x02	; 2
     fbe:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     fc2:	8f e9       	ldi	r24, 0x9F	; 159
     fc4:	9f e0       	ldi	r25, 0x0F	; 15
     fc6:	01 97       	sbiw	r24, 0x01	; 1
     fc8:	f1 f7       	brne	.-4      	; 0xfc6 <LCD_ClearLocation+0x66>
     fca:	00 c0       	rjmp	.+0      	; 0xfcc <LCD_ClearLocation+0x6c>
     fcc:	00 00       	nop
     fce:	60 e0       	ldi	r22, 0x00	; 0
     fd0:	86 e0       	ldi	r24, 0x06	; 6
     fd2:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     fd6:	60 e0       	ldi	r22, 0x00	; 0
     fd8:	85 e0       	ldi	r24, 0x05	; 5
     fda:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     fde:	60 e0       	ldi	r22, 0x00	; 0
     fe0:	84 e0       	ldi	r24, 0x04	; 4
     fe2:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     fe6:	60 e0       	ldi	r22, 0x00	; 0
     fe8:	83 e0       	ldi	r24, 0x03	; 3
     fea:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     fee:	61 e0       	ldi	r22, 0x01	; 1
     ff0:	82 e0       	ldi	r24, 0x02	; 2
     ff2:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
     ff6:	8f e9       	ldi	r24, 0x9F	; 159
     ff8:	9f e0       	ldi	r25, 0x0F	; 15
     ffa:	01 97       	sbiw	r24, 0x01	; 1
     ffc:	f1 f7       	brne	.-4      	; 0xffa <LCD_ClearLocation+0x9a>
     ffe:	00 c0       	rjmp	.+0      	; 0x1000 <LCD_ClearLocation+0xa0>
    1000:	00 00       	nop
    1002:	60 e0       	ldi	r22, 0x00	; 0
    1004:	82 e0       	ldi	r24, 0x02	; 2
    1006:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
    100a:	8f e9       	ldi	r24, 0x9F	; 159
    100c:	9f e0       	ldi	r25, 0x0F	; 15
    100e:	01 97       	sbiw	r24, 0x01	; 1
    1010:	f1 f7       	brne	.-4      	; 0x100e <LCD_ClearLocation+0xae>
    1012:	00 c0       	rjmp	.+0      	; 0x1014 <LCD_ClearLocation+0xb4>
    1014:	00 00       	nop
    1016:	80 e0       	ldi	r24, 0x00	; 0
    1018:	08 95       	ret

0000101a <KEYPAD_Init>:
    101a:	08 95       	ret

0000101c <KEYPAD_GetEntry>:
    101c:	5f 92       	push	r5
    101e:	6f 92       	push	r6
    1020:	7f 92       	push	r7
    1022:	8f 92       	push	r8
    1024:	9f 92       	push	r9
    1026:	af 92       	push	r10
    1028:	bf 92       	push	r11
    102a:	cf 92       	push	r12
    102c:	df 92       	push	r13
    102e:	ef 92       	push	r14
    1030:	ff 92       	push	r15
    1032:	0f 93       	push	r16
    1034:	1f 93       	push	r17
    1036:	cf 93       	push	r28
    1038:	df 93       	push	r29
    103a:	0f 2e       	mov	r0, r31
    103c:	f8 e3       	ldi	r31, 0x38	; 56
    103e:	af 2e       	mov	r10, r31
    1040:	f1 e0       	ldi	r31, 0x01	; 1
    1042:	bf 2e       	mov	r11, r31
    1044:	f0 2d       	mov	r31, r0
    1046:	0c e3       	ldi	r16, 0x3C	; 60
    1048:	11 e0       	ldi	r17, 0x01	; 1
    104a:	e5 01       	movw	r28, r10
    104c:	61 e0       	ldi	r22, 0x01	; 1
    104e:	89 91       	ld	r24, Y+
    1050:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
    1054:	0c 17       	cp	r16, r28
    1056:	1d 07       	cpc	r17, r29
    1058:	c9 f7       	brne	.-14     	; 0x104c <KEYPAD_GetEntry+0x30>
    105a:	0f 2e       	mov	r0, r31
    105c:	fc e3       	ldi	r31, 0x3C	; 60
    105e:	cf 2e       	mov	r12, r31
    1060:	f1 e0       	ldi	r31, 0x01	; 1
    1062:	df 2e       	mov	r13, r31
    1064:	f0 2d       	mov	r31, r0
    1066:	0f 2e       	mov	r0, r31
    1068:	fc e4       	ldi	r31, 0x4C	; 76
    106a:	8f 2e       	mov	r8, r31
    106c:	f1 e0       	ldi	r31, 0x01	; 1
    106e:	9f 2e       	mov	r9, r31
    1070:	f0 2d       	mov	r31, r0
    1072:	0f 2e       	mov	r0, r31
    1074:	f4 e5       	ldi	r31, 0x54	; 84
    1076:	5f 2e       	mov	r5, r31
    1078:	f0 2d       	mov	r31, r0
    107a:	0f 2e       	mov	r0, r31
    107c:	f8 e3       	ldi	r31, 0x38	; 56
    107e:	ef 2e       	mov	r14, r31
    1080:	f1 e0       	ldi	r31, 0x01	; 1
    1082:	ff 2e       	mov	r15, r31
    1084:	f0 2d       	mov	r31, r0
    1086:	f5 01       	movw	r30, r10
    1088:	61 90       	ld	r6, Z+
    108a:	5f 01       	movw	r10, r30
    108c:	60 e0       	ldi	r22, 0x00	; 0
    108e:	86 2d       	mov	r24, r6
    1090:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
    1094:	c4 e3       	ldi	r28, 0x34	; 52
    1096:	d1 e0       	ldi	r29, 0x01	; 1
    1098:	86 01       	movw	r16, r12
    109a:	79 90       	ld	r7, Y+
    109c:	87 2d       	mov	r24, r7
    109e:	0e 94 e7 09 	call	0x13ce	; 0x13ce <DIO_ReadPin>
    10a2:	81 11       	cpse	r24, r1
    10a4:	07 c0       	rjmp	.+14     	; 0x10b4 <KEYPAD_GetEntry+0x98>
    10a6:	87 2d       	mov	r24, r7
    10a8:	0e 94 e7 09 	call	0x13ce	; 0x13ce <DIO_ReadPin>
    10ac:	88 23       	and	r24, r24
    10ae:	d9 f3       	breq	.-10     	; 0x10a6 <KEYPAD_GetEntry+0x8a>
    10b0:	f8 01       	movw	r30, r16
    10b2:	50 80       	ld	r5, Z
    10b4:	0f 5f       	subi	r16, 0xFF	; 255
    10b6:	1f 4f       	sbci	r17, 0xFF	; 255
    10b8:	ce 15       	cp	r28, r14
    10ba:	df 05       	cpc	r29, r15
    10bc:	71 f7       	brne	.-36     	; 0x109a <KEYPAD_GetEntry+0x7e>
    10be:	61 e0       	ldi	r22, 0x01	; 1
    10c0:	86 2d       	mov	r24, r6
    10c2:	0e 94 62 09 	call	0x12c4	; 0x12c4 <DIO_WritePin>
    10c6:	f4 e0       	ldi	r31, 0x04	; 4
    10c8:	cf 0e       	add	r12, r31
    10ca:	d1 1c       	adc	r13, r1
    10cc:	c8 14       	cp	r12, r8
    10ce:	d9 04       	cpc	r13, r9
    10d0:	d1 f6       	brne	.-76     	; 0x1086 <KEYPAD_GetEntry+0x6a>
    10d2:	85 2d       	mov	r24, r5
    10d4:	df 91       	pop	r29
    10d6:	cf 91       	pop	r28
    10d8:	1f 91       	pop	r17
    10da:	0f 91       	pop	r16
    10dc:	ff 90       	pop	r15
    10de:	ef 90       	pop	r14
    10e0:	df 90       	pop	r13
    10e2:	cf 90       	pop	r12
    10e4:	bf 90       	pop	r11
    10e6:	af 90       	pop	r10
    10e8:	9f 90       	pop	r9
    10ea:	8f 90       	pop	r8
    10ec:	7f 90       	pop	r7
    10ee:	6f 90       	pop	r6
    10f0:	5f 90       	pop	r5
    10f2:	08 95       	ret

000010f4 <DIO_Init>:
    10f4:	ec e4       	ldi	r30, 0x4C	; 76
    10f6:	f1 e0       	ldi	r31, 0x01	; 1
    10f8:	80 e0       	ldi	r24, 0x00	; 0
    10fa:	41 e0       	ldi	r20, 0x01	; 1
    10fc:	50 e0       	ldi	r21, 0x00	; 0
    10fe:	91 91       	ld	r25, Z+
    1100:	28 2f       	mov	r18, r24
    1102:	26 95       	lsr	r18
    1104:	26 95       	lsr	r18
    1106:	26 95       	lsr	r18
    1108:	38 2f       	mov	r19, r24
    110a:	37 70       	andi	r19, 0x07	; 7
    110c:	91 30       	cpi	r25, 0x01	; 1
    110e:	09 f4       	brne	.+2      	; 0x1112 <DIO_Init+0x1e>
    1110:	49 c0       	rjmp	.+146    	; 0x11a4 <DIO_Init+0xb0>
    1112:	20 f0       	brcs	.+8      	; 0x111c <DIO_Init+0x28>
    1114:	92 30       	cpi	r25, 0x02	; 2
    1116:	09 f4       	brne	.+2      	; 0x111a <DIO_Init+0x26>
    1118:	89 c0       	rjmp	.+274    	; 0x122c <DIO_Init+0x138>
    111a:	cf c0       	rjmp	.+414    	; 0x12ba <DIO_Init+0x1c6>
    111c:	21 30       	cpi	r18, 0x01	; 1
    111e:	a9 f0       	breq	.+42     	; 0x114a <DIO_Init+0x56>
    1120:	28 f0       	brcs	.+10     	; 0x112c <DIO_Init+0x38>
    1122:	22 30       	cpi	r18, 0x02	; 2
    1124:	09 f1       	breq	.+66     	; 0x1168 <DIO_Init+0x74>
    1126:	23 30       	cpi	r18, 0x03	; 3
    1128:	71 f1       	breq	.+92     	; 0x1186 <DIO_Init+0x92>
    112a:	c7 c0       	rjmp	.+398    	; 0x12ba <DIO_Init+0x1c6>
    112c:	9a b3       	in	r25, 0x1a	; 26
    112e:	ba 01       	movw	r22, r20
    1130:	02 c0       	rjmp	.+4      	; 0x1136 <DIO_Init+0x42>
    1132:	66 0f       	add	r22, r22
    1134:	77 1f       	adc	r23, r23
    1136:	3a 95       	dec	r19
    1138:	e2 f7       	brpl	.-8      	; 0x1132 <DIO_Init+0x3e>
    113a:	9b 01       	movw	r18, r22
    113c:	96 2b       	or	r25, r22
    113e:	9a bb       	out	0x1a, r25	; 26
    1140:	9b b3       	in	r25, 0x1b	; 27
    1142:	20 95       	com	r18
    1144:	29 23       	and	r18, r25
    1146:	2b bb       	out	0x1b, r18	; 27
    1148:	b8 c0       	rjmp	.+368    	; 0x12ba <DIO_Init+0x1c6>
    114a:	97 b3       	in	r25, 0x17	; 23
    114c:	ba 01       	movw	r22, r20
    114e:	02 c0       	rjmp	.+4      	; 0x1154 <DIO_Init+0x60>
    1150:	66 0f       	add	r22, r22
    1152:	77 1f       	adc	r23, r23
    1154:	3a 95       	dec	r19
    1156:	e2 f7       	brpl	.-8      	; 0x1150 <DIO_Init+0x5c>
    1158:	9b 01       	movw	r18, r22
    115a:	96 2b       	or	r25, r22
    115c:	97 bb       	out	0x17, r25	; 23
    115e:	98 b3       	in	r25, 0x18	; 24
    1160:	20 95       	com	r18
    1162:	29 23       	and	r18, r25
    1164:	28 bb       	out	0x18, r18	; 24
    1166:	a9 c0       	rjmp	.+338    	; 0x12ba <DIO_Init+0x1c6>
    1168:	94 b3       	in	r25, 0x14	; 20
    116a:	ba 01       	movw	r22, r20
    116c:	02 c0       	rjmp	.+4      	; 0x1172 <DIO_Init+0x7e>
    116e:	66 0f       	add	r22, r22
    1170:	77 1f       	adc	r23, r23
    1172:	3a 95       	dec	r19
    1174:	e2 f7       	brpl	.-8      	; 0x116e <DIO_Init+0x7a>
    1176:	9b 01       	movw	r18, r22
    1178:	96 2b       	or	r25, r22
    117a:	94 bb       	out	0x14, r25	; 20
    117c:	95 b3       	in	r25, 0x15	; 21
    117e:	20 95       	com	r18
    1180:	29 23       	and	r18, r25
    1182:	25 bb       	out	0x15, r18	; 21
    1184:	9a c0       	rjmp	.+308    	; 0x12ba <DIO_Init+0x1c6>
    1186:	91 b3       	in	r25, 0x11	; 17
    1188:	ba 01       	movw	r22, r20
    118a:	02 c0       	rjmp	.+4      	; 0x1190 <DIO_Init+0x9c>
    118c:	66 0f       	add	r22, r22
    118e:	77 1f       	adc	r23, r23
    1190:	3a 95       	dec	r19
    1192:	e2 f7       	brpl	.-8      	; 0x118c <DIO_Init+0x98>
    1194:	9b 01       	movw	r18, r22
    1196:	96 2b       	or	r25, r22
    1198:	91 bb       	out	0x11, r25	; 17
    119a:	92 b3       	in	r25, 0x12	; 18
    119c:	20 95       	com	r18
    119e:	29 23       	and	r18, r25
    11a0:	22 bb       	out	0x12, r18	; 18
    11a2:	8b c0       	rjmp	.+278    	; 0x12ba <DIO_Init+0x1c6>
    11a4:	21 30       	cpi	r18, 0x01	; 1
    11a6:	a9 f0       	breq	.+42     	; 0x11d2 <DIO_Init+0xde>
    11a8:	28 f0       	brcs	.+10     	; 0x11b4 <DIO_Init+0xc0>
    11aa:	22 30       	cpi	r18, 0x02	; 2
    11ac:	09 f1       	breq	.+66     	; 0x11f0 <DIO_Init+0xfc>
    11ae:	23 30       	cpi	r18, 0x03	; 3
    11b0:	71 f1       	breq	.+92     	; 0x120e <DIO_Init+0x11a>
    11b2:	83 c0       	rjmp	.+262    	; 0x12ba <DIO_Init+0x1c6>
    11b4:	9a b3       	in	r25, 0x1a	; 26
    11b6:	ba 01       	movw	r22, r20
    11b8:	02 c0       	rjmp	.+4      	; 0x11be <DIO_Init+0xca>
    11ba:	66 0f       	add	r22, r22
    11bc:	77 1f       	adc	r23, r23
    11be:	3a 95       	dec	r19
    11c0:	e2 f7       	brpl	.-8      	; 0x11ba <DIO_Init+0xc6>
    11c2:	9b 01       	movw	r18, r22
    11c4:	20 95       	com	r18
    11c6:	92 23       	and	r25, r18
    11c8:	9a bb       	out	0x1a, r25	; 26
    11ca:	9b b3       	in	r25, 0x1b	; 27
    11cc:	29 23       	and	r18, r25
    11ce:	2b bb       	out	0x1b, r18	; 27
    11d0:	74 c0       	rjmp	.+232    	; 0x12ba <DIO_Init+0x1c6>
    11d2:	97 b3       	in	r25, 0x17	; 23
    11d4:	ba 01       	movw	r22, r20
    11d6:	02 c0       	rjmp	.+4      	; 0x11dc <DIO_Init+0xe8>
    11d8:	66 0f       	add	r22, r22
    11da:	77 1f       	adc	r23, r23
    11dc:	3a 95       	dec	r19
    11de:	e2 f7       	brpl	.-8      	; 0x11d8 <DIO_Init+0xe4>
    11e0:	9b 01       	movw	r18, r22
    11e2:	20 95       	com	r18
    11e4:	92 23       	and	r25, r18
    11e6:	97 bb       	out	0x17, r25	; 23
    11e8:	98 b3       	in	r25, 0x18	; 24
    11ea:	29 23       	and	r18, r25
    11ec:	28 bb       	out	0x18, r18	; 24
    11ee:	65 c0       	rjmp	.+202    	; 0x12ba <DIO_Init+0x1c6>
    11f0:	94 b3       	in	r25, 0x14	; 20
    11f2:	ba 01       	movw	r22, r20
    11f4:	02 c0       	rjmp	.+4      	; 0x11fa <DIO_Init+0x106>
    11f6:	66 0f       	add	r22, r22
    11f8:	77 1f       	adc	r23, r23
    11fa:	3a 95       	dec	r19
    11fc:	e2 f7       	brpl	.-8      	; 0x11f6 <DIO_Init+0x102>
    11fe:	9b 01       	movw	r18, r22
    1200:	20 95       	com	r18
    1202:	92 23       	and	r25, r18
    1204:	94 bb       	out	0x14, r25	; 20
    1206:	95 b3       	in	r25, 0x15	; 21
    1208:	29 23       	and	r18, r25
    120a:	25 bb       	out	0x15, r18	; 21
    120c:	56 c0       	rjmp	.+172    	; 0x12ba <DIO_Init+0x1c6>
    120e:	91 b3       	in	r25, 0x11	; 17
    1210:	ba 01       	movw	r22, r20
    1212:	02 c0       	rjmp	.+4      	; 0x1218 <DIO_Init+0x124>
    1214:	66 0f       	add	r22, r22
    1216:	77 1f       	adc	r23, r23
    1218:	3a 95       	dec	r19
    121a:	e2 f7       	brpl	.-8      	; 0x1214 <DIO_Init+0x120>
    121c:	9b 01       	movw	r18, r22
    121e:	20 95       	com	r18
    1220:	92 23       	and	r25, r18
    1222:	91 bb       	out	0x11, r25	; 17
    1224:	92 b3       	in	r25, 0x12	; 18
    1226:	29 23       	and	r18, r25
    1228:	22 bb       	out	0x12, r18	; 18
    122a:	47 c0       	rjmp	.+142    	; 0x12ba <DIO_Init+0x1c6>
    122c:	21 30       	cpi	r18, 0x01	; 1
    122e:	b1 f0       	breq	.+44     	; 0x125c <DIO_Init+0x168>
    1230:	28 f0       	brcs	.+10     	; 0x123c <DIO_Init+0x148>
    1232:	22 30       	cpi	r18, 0x02	; 2
    1234:	19 f1       	breq	.+70     	; 0x127c <DIO_Init+0x188>
    1236:	23 30       	cpi	r18, 0x03	; 3
    1238:	89 f1       	breq	.+98     	; 0x129c <DIO_Init+0x1a8>
    123a:	3f c0       	rjmp	.+126    	; 0x12ba <DIO_Init+0x1c6>
    123c:	9a b3       	in	r25, 0x1a	; 26
    123e:	ba 01       	movw	r22, r20
    1240:	02 c0       	rjmp	.+4      	; 0x1246 <DIO_Init+0x152>
    1242:	66 0f       	add	r22, r22
    1244:	77 1f       	adc	r23, r23
    1246:	3a 95       	dec	r19
    1248:	e2 f7       	brpl	.-8      	; 0x1242 <DIO_Init+0x14e>
    124a:	9b 01       	movw	r18, r22
    124c:	36 2f       	mov	r19, r22
    124e:	30 95       	com	r19
    1250:	93 23       	and	r25, r19
    1252:	9a bb       	out	0x1a, r25	; 26
    1254:	9b b3       	in	r25, 0x1b	; 27
    1256:	29 2b       	or	r18, r25
    1258:	2b bb       	out	0x1b, r18	; 27
    125a:	2f c0       	rjmp	.+94     	; 0x12ba <DIO_Init+0x1c6>
    125c:	97 b3       	in	r25, 0x17	; 23
    125e:	ba 01       	movw	r22, r20
    1260:	02 c0       	rjmp	.+4      	; 0x1266 <DIO_Init+0x172>
    1262:	66 0f       	add	r22, r22
    1264:	77 1f       	adc	r23, r23
    1266:	3a 95       	dec	r19
    1268:	e2 f7       	brpl	.-8      	; 0x1262 <DIO_Init+0x16e>
    126a:	9b 01       	movw	r18, r22
    126c:	36 2f       	mov	r19, r22
    126e:	30 95       	com	r19
    1270:	93 23       	and	r25, r19
    1272:	97 bb       	out	0x17, r25	; 23
    1274:	98 b3       	in	r25, 0x18	; 24
    1276:	29 2b       	or	r18, r25
    1278:	28 bb       	out	0x18, r18	; 24
    127a:	1f c0       	rjmp	.+62     	; 0x12ba <DIO_Init+0x1c6>
    127c:	94 b3       	in	r25, 0x14	; 20
    127e:	ba 01       	movw	r22, r20
    1280:	02 c0       	rjmp	.+4      	; 0x1286 <DIO_Init+0x192>
    1282:	66 0f       	add	r22, r22
    1284:	77 1f       	adc	r23, r23
    1286:	3a 95       	dec	r19
    1288:	e2 f7       	brpl	.-8      	; 0x1282 <DIO_Init+0x18e>
    128a:	9b 01       	movw	r18, r22
    128c:	36 2f       	mov	r19, r22
    128e:	30 95       	com	r19
    1290:	93 23       	and	r25, r19
    1292:	94 bb       	out	0x14, r25	; 20
    1294:	95 b3       	in	r25, 0x15	; 21
    1296:	29 2b       	or	r18, r25
    1298:	25 bb       	out	0x15, r18	; 21
    129a:	0f c0       	rjmp	.+30     	; 0x12ba <DIO_Init+0x1c6>
    129c:	91 b3       	in	r25, 0x11	; 17
    129e:	ba 01       	movw	r22, r20
    12a0:	02 c0       	rjmp	.+4      	; 0x12a6 <DIO_Init+0x1b2>
    12a2:	66 0f       	add	r22, r22
    12a4:	77 1f       	adc	r23, r23
    12a6:	3a 95       	dec	r19
    12a8:	e2 f7       	brpl	.-8      	; 0x12a2 <DIO_Init+0x1ae>
    12aa:	9b 01       	movw	r18, r22
    12ac:	36 2f       	mov	r19, r22
    12ae:	30 95       	com	r19
    12b0:	93 23       	and	r25, r19
    12b2:	91 bb       	out	0x11, r25	; 17
    12b4:	92 b3       	in	r25, 0x12	; 18
    12b6:	29 2b       	or	r18, r25
    12b8:	22 bb       	out	0x12, r18	; 18
    12ba:	8f 5f       	subi	r24, 0xFF	; 255
    12bc:	80 32       	cpi	r24, 0x20	; 32
    12be:	09 f0       	breq	.+2      	; 0x12c2 <DIO_Init+0x1ce>
    12c0:	1e cf       	rjmp	.-452    	; 0x10fe <DIO_Init+0xa>
    12c2:	08 95       	ret

000012c4 <DIO_WritePin>:
    12c4:	98 2f       	mov	r25, r24
    12c6:	96 95       	lsr	r25
    12c8:	96 95       	lsr	r25
    12ca:	96 95       	lsr	r25
    12cc:	87 70       	andi	r24, 0x07	; 7
    12ce:	61 30       	cpi	r22, 0x01	; 1
    12d0:	e1 f5       	brne	.+120    	; 0x134a <DIO_WritePin+0x86>
    12d2:	91 30       	cpi	r25, 0x01	; 1
    12d4:	99 f0       	breq	.+38     	; 0x12fc <DIO_WritePin+0x38>
    12d6:	28 f0       	brcs	.+10     	; 0x12e2 <DIO_WritePin+0x1e>
    12d8:	92 30       	cpi	r25, 0x02	; 2
    12da:	e9 f0       	breq	.+58     	; 0x1316 <DIO_WritePin+0x52>
    12dc:	93 30       	cpi	r25, 0x03	; 3
    12de:	41 f1       	breq	.+80     	; 0x1330 <DIO_WritePin+0x6c>
    12e0:	08 95       	ret
    12e2:	4b b3       	in	r20, 0x1b	; 27
    12e4:	21 e0       	ldi	r18, 0x01	; 1
    12e6:	30 e0       	ldi	r19, 0x00	; 0
    12e8:	b9 01       	movw	r22, r18
    12ea:	02 c0       	rjmp	.+4      	; 0x12f0 <DIO_WritePin+0x2c>
    12ec:	66 0f       	add	r22, r22
    12ee:	77 1f       	adc	r23, r23
    12f0:	8a 95       	dec	r24
    12f2:	e2 f7       	brpl	.-8      	; 0x12ec <DIO_WritePin+0x28>
    12f4:	cb 01       	movw	r24, r22
    12f6:	84 2b       	or	r24, r20
    12f8:	8b bb       	out	0x1b, r24	; 27
    12fa:	08 95       	ret
    12fc:	48 b3       	in	r20, 0x18	; 24
    12fe:	21 e0       	ldi	r18, 0x01	; 1
    1300:	30 e0       	ldi	r19, 0x00	; 0
    1302:	b9 01       	movw	r22, r18
    1304:	02 c0       	rjmp	.+4      	; 0x130a <DIO_WritePin+0x46>
    1306:	66 0f       	add	r22, r22
    1308:	77 1f       	adc	r23, r23
    130a:	8a 95       	dec	r24
    130c:	e2 f7       	brpl	.-8      	; 0x1306 <DIO_WritePin+0x42>
    130e:	cb 01       	movw	r24, r22
    1310:	84 2b       	or	r24, r20
    1312:	88 bb       	out	0x18, r24	; 24
    1314:	08 95       	ret
    1316:	45 b3       	in	r20, 0x15	; 21
    1318:	21 e0       	ldi	r18, 0x01	; 1
    131a:	30 e0       	ldi	r19, 0x00	; 0
    131c:	b9 01       	movw	r22, r18
    131e:	02 c0       	rjmp	.+4      	; 0x1324 <DIO_WritePin+0x60>
    1320:	66 0f       	add	r22, r22
    1322:	77 1f       	adc	r23, r23
    1324:	8a 95       	dec	r24
    1326:	e2 f7       	brpl	.-8      	; 0x1320 <DIO_WritePin+0x5c>
    1328:	cb 01       	movw	r24, r22
    132a:	84 2b       	or	r24, r20
    132c:	85 bb       	out	0x15, r24	; 21
    132e:	08 95       	ret
    1330:	42 b3       	in	r20, 0x12	; 18
    1332:	21 e0       	ldi	r18, 0x01	; 1
    1334:	30 e0       	ldi	r19, 0x00	; 0
    1336:	b9 01       	movw	r22, r18
    1338:	02 c0       	rjmp	.+4      	; 0x133e <DIO_WritePin+0x7a>
    133a:	66 0f       	add	r22, r22
    133c:	77 1f       	adc	r23, r23
    133e:	8a 95       	dec	r24
    1340:	e2 f7       	brpl	.-8      	; 0x133a <DIO_WritePin+0x76>
    1342:	cb 01       	movw	r24, r22
    1344:	84 2b       	or	r24, r20
    1346:	82 bb       	out	0x12, r24	; 18
    1348:	08 95       	ret
    134a:	61 11       	cpse	r22, r1
    134c:	3f c0       	rjmp	.+126    	; 0x13cc <DIO_WritePin+0x108>
    134e:	91 30       	cpi	r25, 0x01	; 1
    1350:	a1 f0       	breq	.+40     	; 0x137a <DIO_WritePin+0xb6>
    1352:	28 f0       	brcs	.+10     	; 0x135e <DIO_WritePin+0x9a>
    1354:	92 30       	cpi	r25, 0x02	; 2
    1356:	f9 f0       	breq	.+62     	; 0x1396 <DIO_WritePin+0xd2>
    1358:	93 30       	cpi	r25, 0x03	; 3
    135a:	59 f1       	breq	.+86     	; 0x13b2 <DIO_WritePin+0xee>
    135c:	08 95       	ret
    135e:	4b b3       	in	r20, 0x1b	; 27
    1360:	21 e0       	ldi	r18, 0x01	; 1
    1362:	30 e0       	ldi	r19, 0x00	; 0
    1364:	b9 01       	movw	r22, r18
    1366:	02 c0       	rjmp	.+4      	; 0x136c <DIO_WritePin+0xa8>
    1368:	66 0f       	add	r22, r22
    136a:	77 1f       	adc	r23, r23
    136c:	8a 95       	dec	r24
    136e:	e2 f7       	brpl	.-8      	; 0x1368 <DIO_WritePin+0xa4>
    1370:	cb 01       	movw	r24, r22
    1372:	80 95       	com	r24
    1374:	84 23       	and	r24, r20
    1376:	8b bb       	out	0x1b, r24	; 27
    1378:	08 95       	ret
    137a:	48 b3       	in	r20, 0x18	; 24
    137c:	21 e0       	ldi	r18, 0x01	; 1
    137e:	30 e0       	ldi	r19, 0x00	; 0
    1380:	b9 01       	movw	r22, r18
    1382:	02 c0       	rjmp	.+4      	; 0x1388 <DIO_WritePin+0xc4>
    1384:	66 0f       	add	r22, r22
    1386:	77 1f       	adc	r23, r23
    1388:	8a 95       	dec	r24
    138a:	e2 f7       	brpl	.-8      	; 0x1384 <DIO_WritePin+0xc0>
    138c:	cb 01       	movw	r24, r22
    138e:	80 95       	com	r24
    1390:	84 23       	and	r24, r20
    1392:	88 bb       	out	0x18, r24	; 24
    1394:	08 95       	ret
    1396:	45 b3       	in	r20, 0x15	; 21
    1398:	21 e0       	ldi	r18, 0x01	; 1
    139a:	30 e0       	ldi	r19, 0x00	; 0
    139c:	b9 01       	movw	r22, r18
    139e:	02 c0       	rjmp	.+4      	; 0x13a4 <DIO_WritePin+0xe0>
    13a0:	66 0f       	add	r22, r22
    13a2:	77 1f       	adc	r23, r23
    13a4:	8a 95       	dec	r24
    13a6:	e2 f7       	brpl	.-8      	; 0x13a0 <DIO_WritePin+0xdc>
    13a8:	cb 01       	movw	r24, r22
    13aa:	80 95       	com	r24
    13ac:	84 23       	and	r24, r20
    13ae:	85 bb       	out	0x15, r24	; 21
    13b0:	08 95       	ret
    13b2:	42 b3       	in	r20, 0x12	; 18
    13b4:	21 e0       	ldi	r18, 0x01	; 1
    13b6:	30 e0       	ldi	r19, 0x00	; 0
    13b8:	b9 01       	movw	r22, r18
    13ba:	02 c0       	rjmp	.+4      	; 0x13c0 <DIO_WritePin+0xfc>
    13bc:	66 0f       	add	r22, r22
    13be:	77 1f       	adc	r23, r23
    13c0:	8a 95       	dec	r24
    13c2:	e2 f7       	brpl	.-8      	; 0x13bc <DIO_WritePin+0xf8>
    13c4:	cb 01       	movw	r24, r22
    13c6:	80 95       	com	r24
    13c8:	84 23       	and	r24, r20
    13ca:	82 bb       	out	0x12, r24	; 18
    13cc:	08 95       	ret

000013ce <DIO_ReadPin>:
    13ce:	28 2f       	mov	r18, r24
    13d0:	27 70       	andi	r18, 0x07	; 7
    13d2:	86 95       	lsr	r24
    13d4:	86 95       	lsr	r24
    13d6:	86 95       	lsr	r24
    13d8:	81 30       	cpi	r24, 0x01	; 1
    13da:	79 f0       	breq	.+30     	; 0x13fa <DIO_ReadPin+0x2c>
    13dc:	28 f0       	brcs	.+10     	; 0x13e8 <DIO_ReadPin+0x1a>
    13de:	82 30       	cpi	r24, 0x02	; 2
    13e0:	a9 f0       	breq	.+42     	; 0x140c <DIO_ReadPin+0x3e>
    13e2:	83 30       	cpi	r24, 0x03	; 3
    13e4:	e1 f0       	breq	.+56     	; 0x141e <DIO_ReadPin+0x50>
    13e6:	24 c0       	rjmp	.+72     	; 0x1430 <DIO_ReadPin+0x62>
    13e8:	89 b3       	in	r24, 0x19	; 25
    13ea:	90 e0       	ldi	r25, 0x00	; 0
    13ec:	02 c0       	rjmp	.+4      	; 0x13f2 <DIO_ReadPin+0x24>
    13ee:	95 95       	asr	r25
    13f0:	87 95       	ror	r24
    13f2:	2a 95       	dec	r18
    13f4:	e2 f7       	brpl	.-8      	; 0x13ee <DIO_ReadPin+0x20>
    13f6:	81 70       	andi	r24, 0x01	; 1
    13f8:	08 95       	ret
    13fa:	86 b3       	in	r24, 0x16	; 22
    13fc:	90 e0       	ldi	r25, 0x00	; 0
    13fe:	02 c0       	rjmp	.+4      	; 0x1404 <DIO_ReadPin+0x36>
    1400:	95 95       	asr	r25
    1402:	87 95       	ror	r24
    1404:	2a 95       	dec	r18
    1406:	e2 f7       	brpl	.-8      	; 0x1400 <DIO_ReadPin+0x32>
    1408:	81 70       	andi	r24, 0x01	; 1
    140a:	08 95       	ret
    140c:	83 b3       	in	r24, 0x13	; 19
    140e:	90 e0       	ldi	r25, 0x00	; 0
    1410:	02 c0       	rjmp	.+4      	; 0x1416 <DIO_ReadPin+0x48>
    1412:	95 95       	asr	r25
    1414:	87 95       	ror	r24
    1416:	2a 95       	dec	r18
    1418:	e2 f7       	brpl	.-8      	; 0x1412 <DIO_ReadPin+0x44>
    141a:	81 70       	andi	r24, 0x01	; 1
    141c:	08 95       	ret
    141e:	80 b3       	in	r24, 0x10	; 16
    1420:	90 e0       	ldi	r25, 0x00	; 0
    1422:	02 c0       	rjmp	.+4      	; 0x1428 <DIO_ReadPin+0x5a>
    1424:	95 95       	asr	r25
    1426:	87 95       	ror	r24
    1428:	2a 95       	dec	r18
    142a:	e2 f7       	brpl	.-8      	; 0x1424 <DIO_ReadPin+0x56>
    142c:	81 70       	andi	r24, 0x01	; 1
    142e:	08 95       	ret
    1430:	80 e0       	ldi	r24, 0x00	; 0
    1432:	08 95       	ret

00001434 <main>:
    1434:	0e 94 7a 08 	call	0x10f4	; 0x10f4 <DIO_Init>
    1438:	0e 94 57 06 	call	0xcae	; 0xcae <LCD_Init>
    143c:	0e 94 0d 08 	call	0x101a	; 0x101a <KEYPAD_Init>
    1440:	0e 94 0a 03 	call	0x614	; 0x614 <NUMERICAL_CONVERTER_Init>
    1444:	0e 94 63 03 	call	0x6c6	; 0x6c6 <NUMERICAL_CONVERTER_Runnable>
    1448:	fd cf       	rjmp	.-6      	; 0x1444 <main+0x10>

0000144a <__divmodsi4>:
    144a:	05 2e       	mov	r0, r21
    144c:	97 fb       	bst	r25, 7
    144e:	1e f4       	brtc	.+6      	; 0x1456 <__divmodsi4+0xc>
    1450:	00 94       	com	r0
    1452:	0e 94 3c 0a 	call	0x1478	; 0x1478 <__negsi2>
    1456:	57 fd       	sbrc	r21, 7
    1458:	07 d0       	rcall	.+14     	; 0x1468 <__divmodsi4_neg2>
    145a:	0e 94 4a 0a 	call	0x1494	; 0x1494 <__udivmodsi4>
    145e:	07 fc       	sbrc	r0, 7
    1460:	03 d0       	rcall	.+6      	; 0x1468 <__divmodsi4_neg2>
    1462:	4e f4       	brtc	.+18     	; 0x1476 <__divmodsi4_exit>
    1464:	0c 94 3c 0a 	jmp	0x1478	; 0x1478 <__negsi2>

00001468 <__divmodsi4_neg2>:
    1468:	50 95       	com	r21
    146a:	40 95       	com	r20
    146c:	30 95       	com	r19
    146e:	21 95       	neg	r18
    1470:	3f 4f       	sbci	r19, 0xFF	; 255
    1472:	4f 4f       	sbci	r20, 0xFF	; 255
    1474:	5f 4f       	sbci	r21, 0xFF	; 255

00001476 <__divmodsi4_exit>:
    1476:	08 95       	ret

00001478 <__negsi2>:
    1478:	90 95       	com	r25
    147a:	80 95       	com	r24
    147c:	70 95       	com	r23
    147e:	61 95       	neg	r22
    1480:	7f 4f       	sbci	r23, 0xFF	; 255
    1482:	8f 4f       	sbci	r24, 0xFF	; 255
    1484:	9f 4f       	sbci	r25, 0xFF	; 255
    1486:	08 95       	ret

00001488 <__tablejump2__>:
    1488:	ee 0f       	add	r30, r30
    148a:	ff 1f       	adc	r31, r31
    148c:	05 90       	lpm	r0, Z+
    148e:	f4 91       	lpm	r31, Z
    1490:	e0 2d       	mov	r30, r0
    1492:	09 94       	ijmp

00001494 <__udivmodsi4>:
    1494:	a1 e2       	ldi	r26, 0x21	; 33
    1496:	1a 2e       	mov	r1, r26
    1498:	aa 1b       	sub	r26, r26
    149a:	bb 1b       	sub	r27, r27
    149c:	fd 01       	movw	r30, r26
    149e:	0d c0       	rjmp	.+26     	; 0x14ba <__udivmodsi4_ep>

000014a0 <__udivmodsi4_loop>:
    14a0:	aa 1f       	adc	r26, r26
    14a2:	bb 1f       	adc	r27, r27
    14a4:	ee 1f       	adc	r30, r30
    14a6:	ff 1f       	adc	r31, r31
    14a8:	a2 17       	cp	r26, r18
    14aa:	b3 07       	cpc	r27, r19
    14ac:	e4 07       	cpc	r30, r20
    14ae:	f5 07       	cpc	r31, r21
    14b0:	20 f0       	brcs	.+8      	; 0x14ba <__udivmodsi4_ep>
    14b2:	a2 1b       	sub	r26, r18
    14b4:	b3 0b       	sbc	r27, r19
    14b6:	e4 0b       	sbc	r30, r20
    14b8:	f5 0b       	sbc	r31, r21

000014ba <__udivmodsi4_ep>:
    14ba:	66 1f       	adc	r22, r22
    14bc:	77 1f       	adc	r23, r23
    14be:	88 1f       	adc	r24, r24
    14c0:	99 1f       	adc	r25, r25
    14c2:	1a 94       	dec	r1
    14c4:	69 f7       	brne	.-38     	; 0x14a0 <__udivmodsi4_loop>
    14c6:	60 95       	com	r22
    14c8:	70 95       	com	r23
    14ca:	80 95       	com	r24
    14cc:	90 95       	com	r25
    14ce:	9b 01       	movw	r18, r22
    14d0:	ac 01       	movw	r20, r24
    14d2:	bd 01       	movw	r22, r26
    14d4:	cf 01       	movw	r24, r30
    14d6:	08 95       	ret

000014d8 <_exit>:
    14d8:	f8 94       	cli

000014da <__stop_program>:
    14da:	ff cf       	rjmp	.-2      	; 0x14da <__stop_program>

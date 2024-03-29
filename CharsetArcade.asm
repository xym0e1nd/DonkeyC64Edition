
CharSetArcade: {

	Copy: {
	// *** Step Init *** //
	// Interrupt Keyboard Off
	// lda #$fe
	// and $dc0e
	// Interrupt IO off
	// lda #$fb
	// and $01
	
	// *** Copy Src to Dst *** //	
	// @ $00 0   $d000-$d007  53248-53256,  8 bytes=1 carattere
	// A $01 1   18 3c 66 7e 66 66 66 0  $d008-$d010  53256-53264: 
	// B $02 2   7c 66 66 7c 66 66 7c 0  $d011-$d019               
	// C $03 3   3c 66 60 60 60 66 3c 0
	// D $04 4   78 6c 66 66 66 6c 78 0
	// E $05 5   7e 60 60 78 60 60 7e 0
	// F $06 6   7e 60 60 78 60 60 60 0
	// G $07 7   3c 66 60 6e 66 66 3c 0
	// H $08 8   66 66 66 7e 66 66 66 0
	// I $09 9   3c 18 18 18 18 18 3c 0
	// J $0a 10  1e c c c c 6c 38 0
	// K $0b 11  66 6c 78 70 78 6c 66 0
	// L $0c 12  60 60 60 60 60 60 7e 0
	// M $0d 13  63 77 7f 6b 63 63 63 0
	// N $0e 14  66 76 7e 7e 6e 66 66 0
	// O $0f 15  3c 66 66 66 66 66 3c 0
	// P $10 16  7c 66 66 7c 60 60 60 0
	// Q $11 17  3c 66 66 66 66 3c e 0
	// R $12 18  7c 66 66 7c 78 6c 66 0
	// S $13 19  3c 66 60 3c 6 66 3c 0
	// T $14 20  7e 18 18 18 18 18 18 0
	// U $15 21  66 66 66 66 66 66 3c 0
	// V $16 22  66 66 66 66 66 3c 18 0
	// W $17 23  63 63 63 6b 7f 77 63 0
	// X $18 24  66 66 3c 18 3c 66 66 0
	// Y $19 25  66 66 66 3c 18 18 18 0
	// Z $1a 26  7e 6 c 18 30 60 7e 0
// 122/$7A

.for(var i=0;i<60+1;i++) {

	ldx #$00
!copy:
	lda DataCharset+8*i, x
	sta CHARSET_RAM+8*i, x
	inx	
	cpx #$08
	bne !copy-
}

	rts
	}

}


// ; CHARSET IMAGE DATA...
// ; 48 images, 8 bytes per image, total size is 384 ($180) bytes.

DataCharset:
//     0   1   2   3   4   5   6   7
.byte $00,$00,$00, $00,$00,$00, $00,$00 // 0
.byte $38,$6c,$c6, $c6,$fe,$c6, $c6,$00 // 1
.byte $fc,$c6,$c6, $fc,$c6,$c6, $fc,$00 // 2
.byte $3c,$66,$c0, $c0,$c0,$66, $3c,$00 // 3
.byte $f8,$cc,$c6, $c6,$c6,$cc, $f8,$00 // 4
.byte $fc,$c0,$c0, $f8,$c0,$c0, $fe,$00 // 5
.byte $fc,$c0,$c0, $f8,$c0,$c0, $c0,$00 // 6
.byte $3e,$60,$c0, $ce,$c6,$66, $3e,$00 // 7
.byte $c6,$c6,$c6, $fe,$c6,$c6, $c6,$00 // 8
.byte $fc,$30,$30, $30,$30,$30, $fc,$00 // 9
.byte $06,$06,$06, $06,$06,$c6, $7c,$00 // 10
.byte $c6,$cc,$d8, $f0,$f8,$dc, $ce,$00 // 11
.byte $c0,$c0,$c0, $c0,$c0,$c0, $fe,$00 // 12
.byte $c6,$ee,$fe, $d6,$c6,$c6, $c6,$00 // 13
.byte $c6,$e6,$f6, $de,$ce,$c6, $c6,$00 // 14
.byte $7c,$c6,$c6, $c6,$c6,$c6, $7c,$00 // 15
.byte $fc,$c6,$c6, $c6,$fc,$c0, $c0,$00 // 16
.byte $7c,$c6,$c6, $c6,$de,$cc, $7a,$00 // 17
.byte $fc,$c6,$c6, $cc,$f8,$dc, $ce,$00 // 18
.byte $78,$cc,$c0, $7c,$06,$c6, $7c,$00 // 19
.byte $fc,$30,$30, $30,$30,$30, $30,$00 // 20
.byte $c6,$c6,$c6, $c6,$c6,$c6, $7c,$00 // 21
.byte $c6,$c6,$c6, $c6,$6c,$38, $10,$00 // 23
.byte $c6,$c6,$d6, $fe,$fe,$ee, $c6,$00 // 24
.byte $c6,$ee,$7c, $38,$7c,$ee, $c6,$00 // 25
.byte $cc,$cc,$cc, $78,$30,$30, $30,$00 // 26
.byte $fe,$0e,$1c, $38,$70,$e0, $fe,$00 // 27
.byte $38,$4c,$c6, $c6,$c6,$64, $38,$00 // 28
.byte $30,$70,$30, $30,$30,$30, $fc,$00 // 29
.byte $7c,$c6,$0e, $3c,$60,$c0, $fe,$00 // 30
.byte $7e,$0c,$18, $3c,$06,$c6, $7c,$00 // 31
.byte $1c,$3c,$6c, $cc,$fe,$0c, $0c,$00 // 32
.byte $fc,$c0,$fc, $06,$06,$c6, $7c,$00 // 33
.byte $3c,$60,$c0, $fc,$c6,$c6, $7c,$00 // 34
.byte $fe,$c6,$0c, $18,$30,$30, $30,$00 // 35
.byte $78,$c4,$e4, $78,$9e,$86, $7c,$00 // 36
.byte $7c,$c6,$c6, $7e,$06,$0c, $78,$00 // 37
.byte $00,$00,$00, $00,$00,$30, $30,$00 // 38
.byte $00,$00,$00, $30,$30,$10, $20,$00 // 39
.byte $7c,$c6,$06, $1c,$30,$00, $30,$00 // 40
.byte $0e,$0e,$0c, $18,$10,$00, $20,$00 // 41
.byte $0c,$18,$00, $00,$00,$00, $00,$00 // 42
.byte $36,$6c,$00, $00,$00,$00, $00,$00 // 43
.byte $18,$30,$60, $60,$60,$30, $18,$00 // 44
.byte $30,$18,$0c, $0c,$0c,$18, $30,$00 // 45
.byte $00,$00,$00, $7c,$00,$00, $00,$00 // 46
.byte $00,$18,$18, $7e,$18,$18, $00,$00 // 47
.byte $00,$00,$18, $00,$18,$00, $00,$00 // 48
// Intro: Dialog 
.byte $ff,$ff,$e0, $e0,$ff,$ff, $e0,$e0 // 49, 0
.byte $ff,$ff,$00, $00,$ff,$ff, $00,$00 // 50, 1 
.byte $ff,$ff,$07, $07,$ff,$ff, $07,$07 // 51, 2
.byte $e0,$e0,$ff, $ff,$e0,$e0, $ff,$ff // 52, 3
.byte $00,$00,$ff, $ff,$00,$00, $ff,$ff // 53, 4
.byte $07,$07,$ff, $ff,$07,$07, $ff,$ff // 54, 5
.byte $e0,$e0,$e0, $e0,$e0,$e0, $e0,$e0 // 55, 6
.byte $07,$07,$07, $07,$07,$07, $07,$07 // 56, 7
// Road
.byte $18,$18,$18, $18,$18,$18, $18,$18 // 57
.byte $c0,$c0,$c0, $c0,$c0,$c0, $c0,$c0 // 58 sx
.byte $ff,$ff,$ff, $ff,$ff,$ff, $ff,$ff // 59 Blank
.byte $03,$03,$03, $03,$03,$03, $03,$03 // 60 dx
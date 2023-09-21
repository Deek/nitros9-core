****************************************
* Sample kick application for Liber809
* James Wilkinson
* v.2 - March 28, 2012
****************************************

****************************************
* Color table (2 bits/pixel):
*       [  ] [ #] [# ] [##]
* PF0    $0   $1   $4   $5
* PF1    $0   $2   $8   $a
* PF2    $0   $3   $c   $f

FujiMem        fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$2a,$80,$aa,$a0,$2a,$80,$2a,$80,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$02,$a8,$02,$a8,$02,$a8,$02,$a8,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$a0,$00,$a0,$00,$a0,$a0,$a0,$a0,$00,$00,$05,$55,$50,$55,$55,$55,$55,$05,$55,$50,$00,$00,$0a,$00,$0a,$0a,$0a,$0a,$0a,$0a,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$aa,$80,$aa,$80,$a2,$a0,$02,$80,$00,$00,$55,$55,$50,$55,$55,$55,$55,$05,$55,$55,$00,$00,$0a,$a8,$02,$a8,$0a,$2a,$02,$aa,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$a0,$a0,$00,$a0,$a8,$a0,$0a,$00,$00,$00,$55,$55,$50,$55,$55,$55,$55,$05,$55,$55,$00,$00,$0a,$0a,$0a,$0a,$0a,$8a,$00,$0a,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$a0,$a0,$a0,$a0,$a0,$a0,$28,$00,$00,$00,$55,$55,$50,$55,$55,$55,$55,$05,$55,$55,$00,$00,$0a,$0a,$0a,$0a,$0a,$0a,$00,$28,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$2a,$80,$2a,$80,$2a,$80,$aa,$a0,$00,$00,$55,$55,$50,$55,$55,$55,$55,$05,$55,$55,$00,$00,$02,$a8,$02,$a8,$02,$a8,$02,$a0,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$50,$55,$55,$55,$55,$05,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$50,$55,$55,$55,$55,$05,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$50,$55,$55,$55,$55,$05,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$50,$55,$55,$55,$55,$05,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$50,$55,$55,$55,$55,$05,$55,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$50,$55,$55,$55,$55,$05,$55,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$50,$55,$55,$55,$55,$05,$55,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$00,$55,$55,$55,$55,$00,$55,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$00,$55,$55,$55,$55,$00,$55,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$00,$55,$55,$55,$55,$00,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$00,$55,$55,$55,$55,$00,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$00,$55,$55,$55,$55,$00,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$00,$55,$55,$55,$55,$00,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$55,$00,$55,$55,$55,$55,$00,$55,$55,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$50,$00,$55,$55,$55,$55,$00,$05,$55,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$50,$00,$55,$55,$55,$55,$00,$05,$55,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$50,$00,$55,$55,$55,$55,$00,$05,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$50,$00,$55,$55,$55,$55,$00,$05,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$50,$00,$55,$55,$55,$55,$00,$05,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$55,$00,$00,$55,$55,$55,$55,$00,$00,$55,$55,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$55,$00,$00,$55,$55,$55,$55,$00,$00,$55,$55,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$00,$00,$55,$55,$55,$55,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$00,$00,$55,$55,$55,$55,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$55,$50,$00,$00,$55,$55,$55,$55,$00,$00,$05,$55,$55,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$55,$50,$00,$00,$55,$55,$55,$55,$00,$00,$05,$55,$55,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$50,$00,$00,$55,$55,$55,$55,$00,$00,$05,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$55,$55,$00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$55,$55,$55,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$55,$00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$55,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$55,$55,$55,$00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$55,$55,$55,$55,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$05,$55,$55,$55,$55,$55,$50,$00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$05,$55,$55,$55,$55,$55,$50,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$55,$55,$55,$50,$00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$05,$55,$55,$55,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$55,$55,$55,$00,$00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$55,$55,$55,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$55,$55,$55,$00,$00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$55,$55,$55,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$55,$55,$50,$00,$00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$05,$55,$55,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$55,$55,$50,$00,$00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$05,$55,$55,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$55,$55,$00,$00,$00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$00,$55,$55,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$55,$50,$00,$00,$00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$00,$05,$55,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$50,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$05,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
               fcb       $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

* Text display area
FujiTxt1       fcc       "     Liber809 Hardware and Firmware     "
               fcc       "          (C) Boisy Pitre 2012          "
FujiTxt2       fcc       "           Fuji Demo by Slor            "
               fcc       "      http://liber809.blogspot.com      "

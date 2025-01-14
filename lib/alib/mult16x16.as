************************************

* 16 x 16 Multiply

* ENTRY: D = multiplier
*        X = multiplicand

*  EXIT: Y = product 2 msbs
*        U =    "    2 lsbs
*        D & X preserved

                    nam       16x16               bit Multiply
                    ttl       Assembler Library Module


                    section   .text

MULT16
                    pshs      D,X,Y,U             save #s and make stack room
                    clr       4,S                 reset overflow flag
                    lda       3,S                 get byte
                    mul
                    std       6,S                 save B x Xl
                    ldd       1,S
                    mul                           B x Xh
                    addb      6,S
                    adca      #0
                    std       5,S                 add 1st 2 mult.
                    ldb       0,S
                    lda       3,S
                    mul                           A x Xl
                    addd      5,S
                    std       5,S                 add result to previous
                    bcc       no.ov               branch if no overflow
                    inc       4,S                 set overflow flag

no.ov
                    lda       0,S
                    ldb       2,S
                    mul                           A x Xh
                    addd      4,S
                    std       4,S
                    puls      D,X,Y,U,PC          return

                    endsect



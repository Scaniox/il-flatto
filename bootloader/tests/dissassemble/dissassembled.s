.sec1:
.ORG 0x1F800
a1f800:   rjmp    .+204           ;  0x1f8ce
a1f802:   nop
a1f804:   rjmp    .+254           ;  0x1f904
a1f806:   nop
a1f808:   rjmp    .+250           ;  0x1f904
a1f80a:   nop
a1f80c:   rjmp    .+298           ;  0x1f938
a1f80e:   nop
a1f810:   rjmp    .+242           ;  0x1f904
a1f812:   nop
a1f814:   rjmp    .+238           ;  0x1f904
a1f816:   nop
a1f818:   rjmp    .+234           ;  0x1f904
a1f81a:   nop
a1f81c:   rjmp    .+230           ;  0x1f904
a1f81e:   nop
a1f820:   rjmp    .+226           ;  0x1f904
a1f822:   nop
a1f824:   rjmp    .+222           ;  0x1f904
a1f826:   nop
a1f828:   rjmp    .+218           ;  0x1f904
a1f82a:   nop
a1f82c:   rjmp    .+214           ;  0x1f904
a1f82e:   nop
a1f830:   rjmp    .+210           ;  0x1f904
a1f832:   nop
a1f834:   rjmp    .+206           ;  0x1f904
a1f836:   nop
a1f838:   rjmp    .+202           ;  0x1f904
a1f83a:   nop
a1f83c:   rjmp    .+198           ;  0x1f904
a1f83e:   nop
a1f840:   rjmp    .+194           ;  0x1f904
a1f842:   nop
a1f844:   rjmp    .+190           ;  0x1f904
a1f846:   nop
a1f848:   rjmp    .+186           ;  0x1f904
a1f84a:   nop
a1f84c:   rjmp    .+182           ;  0x1f904
a1f84e:   nop
a1f850:   rjmp    .+178           ;  0x1f904
a1f852:   nop
a1f854:   rjmp    .+174           ;  0x1f904
a1f856:   nop
a1f858:   rjmp    .+170           ;  0x1f904
a1f85a:   nop
a1f85c:   rjmp    .+166           ;  0x1f904
a1f85e:   nop
a1f860:   rjmp    .+162           ;  0x1f904
a1f862:   nop
a1f864:   rjmp    .+158           ;  0x1f904
a1f866:   nop
a1f868:   rjmp    .+154           ;  0x1f904
a1f86a:   nop
a1f86c:   rjmp    .+150           ;  0x1f904
a1f86e:   nop
a1f870:   rjmp    .+146           ;  0x1f904
a1f872:   nop
a1f874:   rjmp    .+142           ;  0x1f904
a1f876:   nop
a1f878:   rjmp    .+138           ;  0x1f904
a1f87a:   nop
a1f87c:   mulsu   r16, r20
a1f87e:   cpc     r0, r9
a1f880:   fmul    r17, r20
a1f882:   .word   0x0077  ; ????
a1f884:   .word   0x0077  ; ????
a1f886:   .word   0x0077  ; ????
a1f888:   .word   0x002e  ; ????
a1f88a:   .word   0x0066  ; ????
a1f88c:   .word   0x0069  ; ????
a1f88e:   .word   0x0073  ; ????
a1f890:   .word   0x0063  ; ????
a1f892:   .word   0x0068  ; ????
a1f894:   .word   0x006c  ; ????
a1f896:   .word   0x002e  ; ????
a1f898:   .word   0x0064  ; ????
a1f89a:   .word   0x0065  ; ????
a1f89c:   fmul    r16, r22
a1f89e:   .word   0x0055  ; ????
a1f8a0:   .word   0x0053  ; ????
a1f8a2:   .word   0x0042  ; ????
a1f8a4:   .word   0x0061  ; ????
a1f8a6:   .word   0x0073  ; ????
a1f8a8:   .word   0x0070  ; ????
a1f8aa:   movw    r2, r4
a1f8ac:   movw    r2, r0
a1f8ae:   .word   0x00ff  ; ????
a1f8b0:   sbc     r0, r0
a1f8b2:   cp      r12, r16
a1f8b4:   cpc     r29, r12
a1f8b6:   movw    r0, r4
a1f8b8:   muls    r16, r17
a1f8ba:   movw    r0, r0
a1f8bc:   muls    r16, r25
a1f8be:   .word   0x0012  ; ????
a1f8c0:   movw    r0, r2
a1f8c2:   ld      r0, Z
a1f8c4:   sbc     r19, r2
a1f8c6:   .word   0x0004  ; ????
a1f8c8:   nop
a1f8ca:   nop
a1f8cc:   nop
a1f8ce:   eor     r1, r1
a1f8d0:   out     0x3f, r1        ; 63
a1f8d2:   ldi     r28, 0xFF       ; 255
a1f8d4:   ldi     r29, 0x10       ; 16
a1f8d6:   out     0x3e, r29       ; 62
a1f8d8:   out     0x3d, r28       ; 61
a1f8da:   ldi     r17, 0x01       ; 1
a1f8dc:   ldi     r26, 0x00       ; 0
a1f8de:   ldi     r27, 0x01       ; 1
a1f8e0:   ldi     r30, 0xFE       ; 254
a1f8e2:   ldi     r31, 0xFF       ; 255
a1f8e4:   rjmp    .+4             ;  0x1f8ea
a1f8e6:   lpm     r0, Z+
a1f8e8:   st      X+, r0
a1f8ea:   cpi     r26, 0x02       ; 2
a1f8ec:   cpc     r27, r17
a1f8ee:   brne    .-10            ;  0x1f8e6
a1f8f0:   ldi     r17, 0x01       ; 1
a1f8f2:   ldi     r26, 0x02       ; 2
a1f8f4:   ldi     r27, 0x01       ; 1
a1f8f6:   rjmp    .+2             ;  0x1f8fa
a1f8f8:   st      X+, r1
a1f8fa:   cpi     r26, 0x37       ; 55
a1f8fc:   cpc     r27, r17
a1f8fe:   brne    .-8             ;  0x1f8f8
a1f900:   rcall   .+656           ;  0x1fb92
a1f902:   rjmp    .+1782          ;  0x1fffa
a1f904:   rjmp    .-262           ;  0x1f800
a1f906:   mov     r26, r24
a1f908:   mov     r27, r25
a1f90a:   ldi     r24, 0x00       ; 0
a1f90c:   ldi     r25, 0x00       ; 0
a1f90e:   ldi     r20, 0x01       ; 1
a1f910:   ldi     r21, 0xA0       ; 160
a1f912:   com     r22
a1f914:   ldi     r19, 0x00       ; 0
a1f916:   rjmp    .+18            ;  0x1f92a
a1f918:   ld      r18, X+
a1f91a:   eor     r24, r18
a1f91c:   ror     r25
a1f91e:   ror     r24
a1f920:   brcs    .+4             ;  0x1f926
a1f922:   eor     r24, r20
a1f924:   eor     r25, r21
a1f926:   subi    r19, 0xE0       ; 224
a1f928:   brcs    .-14            ;  0x1f91c
a1f92a:   subi    r22, 0xFF       ; 255
a1f92c:   brcs    .-22            ;  0x1f918
a1f92e:   ret
a1f930:   rcall   .-44            ;  0x1f906
a1f932:   st      X+, r24
a1f934:   st      X+, r25
a1f936:   ret
a1f938:   push    r28
a1f93a:   in      r28, 0x3f       ; 63
a1f93c:   push    r28
a1f93e:   inc     r28
a1f940:   sbis    0x03, 3 ; 3
a1f942:   brne    .-6             ;  0x1f93e
a1f944:   sbis    0x03, 3 ; 3
a1f946:   rjmp    .+18            ;  0x1f95a
a1f948:   sbis    0x03, 3 ; 3
a1f94a:   rjmp    .+14            ;  0x1f95a
a1f94c:   sbis    0x03, 3 ; 3
a1f94e:   rjmp    .+10            ;  0x1f95a
a1f950:   sbis    0x03, 3 ; 3
a1f952:   rjmp    .+6             ;  0x1f95a
a1f954:   sbis    0x03, 3 ; 3
a1f956:   rjmp    .+2             ;  0x1f95a
a1f958:   rjmp    .+322           ;  0x1fa9c
a1f95a:   push    r29
a1f95c:   lds     r28, 0x011A     ;  0x80011a
a1f960:   eor     r29, r29
a1f962:   subi    r28, 0xDF       ; 223
a1f964:   sbci    r29, 0xFE       ; 254
a1f966:   sbis    0x03, 3 ; 3
a1f968:   rjmp    .+4             ;  0x1f96e
a1f96a:   pop     r29
a1f96c:   rjmp    .-42            ;  0x1f944
a1f96e:   push    r18
a1f970:   push    r16
a1f972:   push    r17
a1f974:   in      r16, 0x03       ; 3
a1f976:   ldi     r18, 0xFF       ; 255
a1f978:   bst     r16, 3
a1f97a:   bld     r18, 0
a1f97c:   push    r20
a1f97e:   push    r19
a1f980:   in      r17, 0x03       ; 3
a1f982:   ldi     r20, 0xFF       ; 255
a1f984:   eor     r16, r17
a1f986:   bst     r16, 3
a1f988:   bld     r18, 1
a1f98a:   ldi     r19, 0x0B       ; 11
a1f98c:   rjmp    .+98            ;  0x1f9f0
a1f98e:   andi    r20, 0xFE       ; 254
a1f990:   mov     r16, r17
a1f992:   in      r17, 0x03       ; 3
a1f994:   ori     r18, 0x01       ; 1
a1f996:   rjmp    .+80            ;  0x1f9e8
a1f998:   mov     r17, r16
a1f99a:   andi    r20, 0xFD       ; 253
a1f99c:   ori     r18, 0x02       ; 2
a1f99e:   nop
a1f9a0:   in      r16, 0x03       ; 3
a1f9a2:   rjmp    .+82            ;  0x1f9f6
a1f9a4:   andi    r20, 0xFB       ; 251
a1f9a6:   ori     r18, 0x04       ; 4
a1f9a8:   mov     r16, r17
a1f9aa:   nop
a1f9ac:   in      r17, 0x03       ; 3
a1f9ae:   rjmp    .+86            ;  0x1fa06
a1f9b0:   in      r17, 0x03       ; 3
a1f9b2:   andi    r20, 0xF7       ; 247
a1f9b4:   ori     r18, 0x08       ; 8
a1f9b6:   rjmp    .+84            ;  0x1fa0c
a1f9b8:   andi    r20, 0xEF       ; 239
a1f9ba:   in      r16, 0x03       ; 3
a1f9bc:   ori     r18, 0x10       ; 16
a1f9be:   rjmp    .+88            ;  0x1fa18
a1f9c0:   andi    r20, 0xDF       ; 223
a1f9c2:   in      r17, 0x03       ; 3
a1f9c4:   ori     r18, 0x20       ; 32
a1f9c6:   rjmp    .+94            ;  0x1fa26
a1f9c8:   andi    r20, 0xBF       ; 191
a1f9ca:   in      r16, 0x03       ; 3
a1f9cc:   ori     r18, 0x40       ; 64
a1f9ce:   rjmp    .+100           ;  0x1fa34
a1f9d0:   eor     r20, r18
a1f9d2:   in      r16, 0x03       ; 3
a1f9d4:   st      Y+, r20
a1f9d6:   ldi     r20, 0xFF       ; 255
a1f9d8:   nop
a1f9da:   eor     r17, r16
a1f9dc:   bst     r17, 3
a1f9de:   bld     r18, 0
a1f9e0:   in      r17, 0x03       ; 3
a1f9e2:   andi    r17, 0x0C       ; 12
a1f9e4:   breq    .+114           ;  0x1fa58
a1f9e6:   andi    r18, 0xF9       ; 249
a1f9e8:   breq    .-92            ;  0x1f98e
a1f9ea:   eor     r16, r17
a1f9ec:   bst     r16, 3
a1f9ee:   bld     r18, 1
a1f9f0:   in      r16, 0x03       ; 3
a1f9f2:   andi    r18, 0xF3       ; 243
a1f9f4:   breq    .-94            ;  0x1f998
a1f9f6:   subi    r19, 0x01       ; 1
a1f9f8:   brcs    .+86            ;  0x1fa50
a1f9fa:   eor     r17, r16
a1f9fc:   bst     r17, 3
a1f9fe:   bld     r18, 2
a1fa00:   in      r17, 0x03       ; 3
a1fa02:   andi    r18, 0xE7       ; 231
a1fa04:   breq    .-98            ;  0x1f9a4
a1fa06:   eor     r16, r17
a1fa08:   bst     r16, 3
a1fa0a:   bld     r18, 3
a1fa0c:   andi    r18, 0xCF       ; 207
a1fa0e:   breq    .-96            ;  0x1f9b0
a1fa10:   in      r16, 0x03       ; 3
a1fa12:   eor     r17, r16
a1fa14:   bst     r17, 3
a1fa16:   bld     r18, 4
a1fa18:   andi    r18, 0x9F       ; 159
a1fa1a:   breq    .-100           ;  0x1f9b8
a1fa1c:   rjmp    .+0             ;  0x1fa1e
a1fa1e:   in      r17, 0x03       ; 3
a1fa20:   eor     r16, r17
a1fa22:   bst     r16, 3
a1fa24:   bld     r18, 5
a1fa26:   andi    r18, 0x3F       ; 63
a1fa28:   breq    .-106           ;  0x1f9c0
a1fa2a:   rjmp    .+0             ;  0x1fa2c
a1fa2c:   in      r16, 0x03       ; 3
a1fa2e:   eor     r17, r16
a1fa30:   bst     r17, 3
a1fa32:   bld     r18, 6
a1fa34:   cpi     r18, 0x02       ; 2
a1fa36:   brcs    .-112           ;  0x1f9c8
a1fa38:   rjmp    .+0             ;  0x1fa3a
a1fa3a:   in      r17, 0x03       ; 3
a1fa3c:   eor     r16, r17
a1fa3e:   bst     r16, 3
a1fa40:   bld     r18, 7
a1fa42:   cpi     r18, 0x04       ; 4
a1fa44:   brcc    .-118           ;  0x1f9d0
a1fa46:   andi    r20, 0x7F       ; 127
a1fa48:   ori     r18, 0x80       ; 128
a1fa4a:   in      r17, 0x03       ; 3
a1fa4c:   nop
a1fa4e:   rjmp    .-14            ;  0x1fa42
a1fa50:   ldi     r17, 0x04       ; 4
a1fa52:   out     0x1c, r17       ; 28
a1fa54:   eor     r16, r16
a1fa56:   rjmp    .+46            ;  0x1fa86
a1fa58:   subi    r19, 0x0B       ; 11
a1fa5a:   neg     r19
a1fa5c:   sub     r28, r19
a1fa5e:   sbci    r29, 0x00       ; 0
a1fa60:   ldi     r17, 0x04       ; 4
a1fa62:   out     0x1c, r17       ; 28
a1fa64:   ld      r16, Y
a1fa66:   cpi     r16, 0xC3       ; 195
a1fa68:   breq    .+58            ;  0x1faa4
a1fa6a:   cpi     r16, 0x4B       ; 75
a1fa6c:   breq    .+54            ;  0x1faa4
a1fa6e:   lds     r18, 0x0118     ;  0x800118
a1fa72:   ldd     r17, Y+1        ; 0x01
a1fa74:   add     r17, r17
a1fa76:   cpse    r17, r18
a1fa78:   rjmp    .-38            ;  0x1fa54
a1fa7a:   cpi     r16, 0x69       ; 105
a1fa7c:   breq    .+80            ;  0x1face
a1fa7e:   cpi     r16, 0x2D       ; 45
a1fa80:   breq    .+4             ;  0x1fa86
a1fa82:   cpi     r16, 0xE1       ; 225
a1fa84:   brne    .-50            ;  0x1fa54
a1fa86:   sts     0x011F, r16     ;  0x80011f
a1fa8a:   pop     r19
a1fa8c:   pop     r20
a1fa8e:   pop     r17
a1fa90:   pop     r16
a1fa92:   pop     r18
a1fa94:   pop     r29
a1fa96:   in      r28, 0x1c       ; 28
a1fa98:   sbrc    r28, 2
a1fa9a:   rjmp    .-350           ;  0x1f93e
a1fa9c:   pop     r28
a1fa9e:   out     0x3f, r28       ; 63
a1faa0:   pop     r28
a1faa2:   reti
a1faa4:   lds     r18, 0x011F     ;  0x80011f
a1faa8:   and     r18, r18
a1faaa:   breq    .-34            ;  0x1fa8a
a1faac:   lds     r17, 0x011D     ;  0x80011d
a1fab0:   and     r17, r17
a1fab2:   brne    .+68            ;  0x1faf8
a1fab4:   cpi     r19, 0x04       ; 4
a1fab6:   brmi    .+68            ;  0x1fafc
a1fab8:   sts     0x011D, r19     ;  0x80011d
a1fabc:   sts     0x0119, r18     ;  0x800119
a1fac0:   lds     r17, 0x011A     ;  0x80011a
a1fac4:   ldi     r19, 0x0B       ; 11
a1fac6:   sub     r19, r17
a1fac8:   sts     0x011A, r19     ;  0x80011a
a1facc:   rjmp    .+46            ;  0x1fafc
a1face:   lds     r16, 0x011D     ;  0x80011d
a1fad2:   cpi     r16, 0x01       ; 1
a1fad4:   brge    .+34            ;  0x1faf8
a1fad6:   ldi     r16, 0x5A       ; 90
a1fad8:   lds     r19, 0x0100     ;  0x800100
a1fadc:   sbrc    r19, 4
a1fade:   rjmp    .+32            ;  0x1fb00
a1fae0:   sts     0x0100, r16     ;  0x800100
a1fae4:   ldi     r28, 0x0D       ; 13
a1fae6:   ldi     r29, 0x01       ; 1
a1fae8:   rjmp    .+30            ;  0x1fb08
a1faea:   ror     r18
a1faec:   brcc    .+42            ;  0x1fb18
a1faee:   subi    r21, 0x01       ; 1
a1faf0:   brne    .+42            ;  0x1fb1c
a1faf2:   add     r18, r18
a1faf4:   nop
a1faf6:   rjmp    .-14            ;  0x1faea
a1faf8:   ldi     r20, 0x5A       ; 90
a1fafa:   rjmp    .+6             ;  0x1fb02
a1fafc:   ldi     r20, 0xD2       ; 210
a1fafe:   rjmp    .+2             ;  0x1fb02
a1fb00:   mov     r20, r19
a1fb02:   ldi     r28, 0x14       ; 20
a1fb04:   ldi     r29, 0x00       ; 0
a1fb06:   ldi     r19, 0x02       ; 2
a1fb08:   in      r17, 0x04       ; 4
a1fb0a:   ori     r17, 0x0C       ; 12
a1fb0c:   sbi     0x05, 3 ; 5
a1fb0e:   out     0x04, r17       ; 4
a1fb10:   in      r16, 0x05       ; 5
a1fb12:   ldi     r18, 0x40       ; 64
a1fb14:   ldi     r17, 0x0C       ; 12
a1fb16:   push    r21
a1fb18:   eor     r16, r17
a1fb1a:   ldi     r21, 0x06       ; 6
a1fb1c:   out     0x05, r16       ; 5
a1fb1e:   ror     r18
a1fb20:   brcc    .+8             ;  0x1fb2a
a1fb22:   subi    r21, 0x01       ; 1
a1fb24:   brne    .+8             ;  0x1fb2e
a1fb26:   add     r18, r18
a1fb28:   rjmp    .-14            ;  0x1fb1c
a1fb2a:   eor     r16, r17
a1fb2c:   ldi     r21, 0x06       ; 6
a1fb2e:   nop
a1fb30:   subi    r19, 0xAB       ; 171
a1fb32:   out     0x05, r16       ; 5
a1fb34:   brcs    .-76            ;  0x1faea
a1fb36:   ror     r18
a1fb38:   brcc    .+10            ;  0x1fb44
a1fb3a:   subi    r21, 0x01       ; 1
a1fb3c:   brne    .+10            ;  0x1fb48
a1fb3e:   add     r18, r18
a1fb40:   nop
a1fb42:   rjmp    .-14            ;  0x1fb36
a1fb44:   eor     r16, r17
a1fb46:   ldi     r21, 0x06       ; 6
a1fb48:   ror     r18
a1fb4a:   out     0x05, r16       ; 5
a1fb4c:   brcc    .+8             ;  0x1fb56
a1fb4e:   subi    r21, 0x01       ; 1
a1fb50:   brne    .+8             ;  0x1fb5a
a1fb52:   add     r18, r18
a1fb54:   rjmp    .-14            ;  0x1fb48
a1fb56:   eor     r16, r17
a1fb58:   ldi     r21, 0x06       ; 6
a1fb5a:   ld      r18, Y+
a1fb5c:   and     r19, r19
a1fb5e:   out     0x05, r16       ; 5
a1fb60:   brne    .-120           ;  0x1faea
a1fb62:   andi    r16, 0xF3       ; 243
a1fb64:   lds     r17, 0x011E     ;  0x80011e
a1fb68:   add     r17, r17
a1fb6a:   subi    r28, 0x16       ; 22
a1fb6c:   sbci    r29, 0x00       ; 0
a1fb6e:   out     0x05, r16       ; 5
a1fb70:   breq    .+4             ;  0x1fb76
a1fb72:   sts     0x0118, r17     ;  0x800118
a1fb76:   ldi     r17, 0x04       ; 4
a1fb78:   out     0x1c, r17       ; 28
a1fb7a:   ori     r16, 0x08       ; 8
a1fb7c:   in      r17, 0x04       ; 4
a1fb7e:   andi    r17, 0xF3       ; 243
a1fb80:   mov     r20, r16
a1fb82:   andi    r20, 0xF3       ; 243
a1fb84:   pop     r21
a1fb86:   rjmp    .+0             ;  0x1fb88
a1fb88:   rjmp    .+0             ;  0x1fb8a
a1fb8a:   out     0x05, r16       ; 5
a1fb8c:   out     0x04, r17       ; 4
a1fb8e:   out     0x05, r20       ; 5
a1fb90:   rjmp    .-264           ;  0x1fa8a
a1fb92:   in      r24, 0x34       ; 52
a1fb94:   andi    r24, 0x0A       ; 10
a1fb96:   brne    .+2             ;  0x1fb9a
a1fb98:   rjmp    .+1070          ;  0x1ffc8
a1fb9a:   out     0x34, r1        ; 52
a1fb9c:   ldi     r24, 0x18       ; 24
a1fb9e:   in      r0, 0x3f        ; 63
a1fba0:   cli
a1fba2:   sts     0x0060, r24     ;  0x800060
a1fba6:   sts     0x0060, r1      ;  0x800060
a1fbaa:   out     0x3f, r0        ; 63
a1fbac:   ldi     r24, 0x01       ; 1
a1fbae:   out     0x35, r24       ; 53
a1fbb0:   ldi     r24, 0x02       ; 2
a1fbb2:   out     0x35, r24       ; 53
a1fbb4:   lds     r24, 0x0069     ;  0x800069
a1fbb8:   ori     r24, 0x30       ; 48
a1fbba:   sts     0x0069, r24     ;  0x800069
a1fbbe:   sbi     0x1d, 2 ; 29
a1fbc0:   sbi     0x04, 3 ; 4
a1fbc2:   ldi     r18, 0x00       ; 0
a1fbc4:   rjmp    .+8             ;  0x1fbce
a1fbc6:   ldi     r24, 0xB8       ; 184
a1fbc8:   ldi     r25, 0x0B       ; 11
a1fbca:   sbiw    r24, 0x01       ; 1
a1fbcc:   brne    .-4             ;  0x1fbca
a1fbce:   subi    r18, 0x01       ; 1
a1fbd0:   brne    .-12            ;  0x1fbc6
a1fbd2:   cbi     0x04, 3 ; 4
a1fbd4:   sei
a1fbd6:   sbi     0x04, 7 ; 4
a1fbd8:   sbi     0x05, 7 ; 5
a1fbda:   eor     r12, r12
a1fbdc:   eor     r13, r13
a1fbde:   lds     r25, 0x011D     ;  0x80011d
a1fbe2:   subi    r25, 0x03       ; 3
a1fbe4:   sbrc    r25, 7
a1fbe6:   rjmp    .+698           ;  0x1fea2
a1fbe8:   lds     r24, 0x011A     ;  0x80011a
a1fbec:   ldi     r16, 0x0C       ; 12
a1fbee:   ldi     r17, 0x00       ; 0
a1fbf0:   sub     r16, r24
a1fbf2:   sbc     r17, r1
a1fbf4:   subi    r16, 0xDF       ; 223
a1fbf6:   sbci    r17, 0xFE       ; 254
a1fbf8:   lds     r24, 0x0119     ;  0x800119
a1fbfc:   cpi     r24, 0x2D       ; 45
a1fbfe:   breq    .+2             ;  0x1fc02
a1fc00:   rjmp    .+450           ;  0x1fdc4
a1fc02:   cpi     r25, 0x08       ; 8
a1fc04:   breq    .+2             ;  0x1fc08
a1fc06:   rjmp    .+662           ;  0x1fe9e
a1fc08:   ldi     r24, 0xC3       ; 195
a1fc0a:   sts     0x010D, r24     ;  0x80010d
a1fc0e:   ldi     r24, 0x5A       ; 90
a1fc10:   sts     0x0100, r24     ;  0x800100
a1fc14:   sts     0x0106, r1      ;  0x800106
a1fc18:   movw    r26, r16
a1fc1a:   ld      r19, X
a1fc1c:   mov     r24, r19
a1fc1e:   andi    r24, 0x60       ; 96
a1fc20:   adiw    r26, 0x01       ; 1
a1fc22:   ld      r18, X
a1fc24:   and     r24, r24
a1fc26:   brne    .+2             ;  0x1fc2a
a1fc28:   rjmp    .+176           ;  0x1fcda
a1fc2a:   ldi     r24, 0x02       ; 2
a1fc2c:   ldi     r25, 0x01       ; 1
a1fc2e:   sts     0x011C, r25     ;  0x80011c
a1fc32:   sts     0x011B, r24     ;  0x80011b
a1fc36:   cpi     r18, 0x03       ; 3
a1fc38:   brne    .+86            ;  0x1fc90
a1fc3a:   cli
a1fc3c:   movw    r26, r16
a1fc3e:   adiw    r26, 0x02       ; 2
a1fc40:   ld      r30, X
a1fc42:   sbiw    r26, 0x02       ; 2
a1fc44:   cpi     r30, 0x30       ; 48
a1fc46:   brne    .+20            ;  0x1fc5c
a1fc48:   adiw    r26, 0x04       ; 4
a1fc4a:   ld      r30, X
a1fc4c:   add     r30, r30
a1fc4e:   andi    r30, 0x06       ; 6
a1fc50:   ldi     r31, 0x00       ; 0
a1fc52:   ldi     r24, 0x21       ; 33
a1fc54:   sts     0x0057, r24     ;  0x800057
a1fc58:   lpm     r30, Z
a1fc5a:   rjmp    .+42            ;  0x1fc86
a1fc5c:   cpi     r30, 0x50       ; 80
a1fc5e:   breq    .+8             ;  0x1fc68
a1fc60:   cpi     r30, 0x58       ; 88
a1fc62:   breq    .+4             ;  0x1fc68
a1fc64:   ldi     r30, 0x00       ; 0
a1fc66:   rjmp    .+30            ;  0x1fc86
a1fc68:   andi    r30, 0x0F       ; 15
a1fc6a:   lsr     r30
a1fc6c:   lsr     r30
a1fc6e:   lsr     r30
a1fc70:   movw    r26, r16
a1fc72:   adiw    r26, 0x03       ; 3
a1fc74:   ld      r24, X
a1fc76:   lsr     r24
a1fc78:   lsr     r24
a1fc7a:   or      r30, r24
a1fc7c:   ldi     r31, 0x00       ; 0
a1fc7e:   ldi     r24, 0x09       ; 9
a1fc80:   sts     0x0057, r24     ;  0x800057
a1fc84:   lpm     r30, Z
a1fc86:   sei
a1fc88:   sts     0x0105, r30     ;  0x800105
a1fc8c:   ldi     r25, 0x04       ; 4
a1fc8e:   rjmp    .+286           ;  0x1fdae
a1fc90:   cpi     r18, 0x05       ; 5
a1fc92:   brne    .+4             ;  0x1fc98
a1fc94:   ldi     r25, 0x01       ; 1
a1fc96:   rjmp    .+278           ;  0x1fdae
a1fc98:   mov     r24, r18
a1fc9a:   subi    r24, 0x04       ; 4
a1fc9c:   cpi     r24, 0x06       ; 6
a1fc9e:   brcc    .+44            ;  0x1fccc
a1fca0:   movw    r30, r16
a1fca2:   ldd     r24, Z+2        ; 0x02
a1fca4:   ldd     r25, Z+3        ; 0x03
a1fca6:   sts     0x0109, r25     ;  0x800109
a1fcaa:   sts     0x0108, r24     ;  0x800108
a1fcae:   cpi     r18, 0x09       ; 9
a1fcb0:   breq    .+36            ;  0x1fcd6
a1fcb2:   ldd     r25, Z+6        ; 0x06
a1fcb4:   sts     0x010A, r25     ;  0x80010a
a1fcb8:   ldd     r24, Z+5        ; 0x05
a1fcba:   andi    r24, 0x02       ; 2
a1fcbc:   sts     0x010B, r24     ;  0x80010b
a1fcc0:   sts     0x010C, r18     ;  0x80010c
a1fcc4:   sbrc    r19, 7
a1fcc6:   rjmp    .+220           ;  0x1fda4
a1fcc8:   ldi     r18, 0xFF       ; 255
a1fcca:   rjmp    .+218           ;  0x1fda6
a1fccc:   cpi     r18, 0x02       ; 2
a1fcce:   brne    .+6             ;  0x1fcd6
a1fcd0:   ldi     r24, 0x01       ; 1
a1fcd2:   sts     0x0107, r24     ;  0x800107
a1fcd6:   ldi     r25, 0x00       ; 0
a1fcd8:   rjmp    .+212           ;  0x1fdae
a1fcda:   movw    r26, r16
a1fcdc:   adiw    r26, 0x02       ; 2
a1fcde:   ld      r24, X
a1fce0:   sts     0x0116, r1      ;  0x800116
a1fce4:   and     r18, r18
a1fce6:   brne    .+12            ;  0x1fcf4
a1fce8:   sts     0x0117, r1      ;  0x800117
a1fcec:   ldi     r18, 0x16       ; 22
a1fcee:   ldi     r19, 0x01       ; 1
a1fcf0:   ldi     r25, 0x02       ; 2
a1fcf2:   rjmp    .+166           ;  0x1fd9a
a1fcf4:   cpi     r18, 0x05       ; 5
a1fcf6:   brne    .+6             ;  0x1fcfe
a1fcf8:   sts     0x011E, r24     ;  0x80011e
a1fcfc:   rjmp    .+150           ;  0x1fd94
a1fcfe:   cpi     r18, 0x06       ; 6
a1fd00:   brne    .+114           ;  0x1fd74
a1fd02:   movw    r30, r16
a1fd04:   ldd     r24, Z+3        ; 0x03
a1fd06:   cpi     r24, 0x01       ; 1
a1fd08:   brne    .+6             ;  0x1fd10
a1fd0a:   ldi     r24, 0xAA       ; 170
a1fd0c:   ldi     r25, 0xF8       ; 248
a1fd0e:   rjmp    .+8             ;  0x1fd18
a1fd10:   cpi     r24, 0x02       ; 2
a1fd12:   brne    .+16            ;  0x1fd24
a1fd14:   ldi     r24, 0xBC       ; 188
a1fd16:   ldi     r25, 0xF8       ; 248
a1fd18:   sts     0x011C, r25     ;  0x80011c
a1fd1c:   sts     0x011B, r24     ;  0x80011b
a1fd20:   ldi     r25, 0x12       ; 18
a1fd22:   rjmp    .+72            ;  0x1fd6c
a1fd24:   cpi     r24, 0x03       ; 3
a1fd26:   brne    .+66            ;  0x1fd6a
a1fd28:   movw    r26, r16
a1fd2a:   adiw    r26, 0x02       ; 2
a1fd2c:   ld      r24, X
a1fd2e:   and     r24, r24
a1fd30:   brne    .+16            ;  0x1fd42
a1fd32:   ldi     r24, 0x7C       ; 124
a1fd34:   ldi     r25, 0xF8       ; 248
a1fd36:   sts     0x011C, r25     ;  0x80011c
a1fd3a:   sts     0x011B, r24     ;  0x80011b
a1fd3e:   ldi     r25, 0x04       ; 4
a1fd40:   rjmp    .+42            ;  0x1fd6c
a1fd42:   cpi     r24, 0x01       ; 1
a1fd44:   brne    .+16            ;  0x1fd56
a1fd46:   ldi     r24, 0x80       ; 128
a1fd48:   ldi     r25, 0xF8       ; 248
a1fd4a:   sts     0x011C, r25     ;  0x80011c
a1fd4e:   sts     0x011B, r24     ;  0x80011b
a1fd52:   ldi     r25, 0x1C       ; 28
a1fd54:   rjmp    .+22            ;  0x1fd6c
a1fd56:   cpi     r24, 0x02       ; 2
a1fd58:   brne    .+16            ;  0x1fd6a
a1fd5a:   ldi     r24, 0x9C       ; 156
a1fd5c:   ldi     r25, 0xF8       ; 248
a1fd5e:   sts     0x011C, r25     ;  0x80011c
a1fd62:   sts     0x011B, r24     ;  0x80011b
a1fd66:   ldi     r25, 0x0E       ; 14
a1fd68:   rjmp    .+2             ;  0x1fd6c
a1fd6a:   ldi     r25, 0x00       ; 0
a1fd6c:   ldi     r24, 0x40       ; 64
a1fd6e:   sts     0x0106, r24     ;  0x800106
a1fd72:   rjmp    .+58            ;  0x1fdae
a1fd74:   cpi     r18, 0x08       ; 8
a1fd76:   brne    .+6             ;  0x1fd7e
a1fd78:   ldi     r18, 0x20       ; 32
a1fd7a:   ldi     r19, 0x01       ; 1
a1fd7c:   rjmp    .+18            ;  0x1fd90
a1fd7e:   cpi     r18, 0x09       ; 9
a1fd80:   brne    .+6             ;  0x1fd88
a1fd82:   sts     0x0120, r24     ;  0x800120
a1fd86:   rjmp    .+12            ;  0x1fd94
a1fd88:   cpi     r18, 0x0A       ; 10
a1fd8a:   brne    .+8             ;  0x1fd94
a1fd8c:   ldi     r18, 0x16       ; 22
a1fd8e:   ldi     r19, 0x01       ; 1
a1fd90:   ldi     r25, 0x01       ; 1
a1fd92:   rjmp    .+6             ;  0x1fd9a
a1fd94:   ldi     r18, 0x16       ; 22
a1fd96:   ldi     r19, 0x01       ; 1
a1fd98:   ldi     r25, 0x00       ; 0
a1fd9a:   sts     0x011C, r19     ;  0x80011c
a1fd9e:   sts     0x011B, r18     ;  0x80011b
a1fda2:   rjmp    .+10            ;  0x1fdae
a1fda4:   mov     r18, r25
a1fda6:   ldi     r24, 0x80       ; 128
a1fda8:   sts     0x0106, r24     ;  0x800106
a1fdac:   rjmp    .+16            ;  0x1fdbe
a1fdae:   movw    r30, r16
a1fdb0:   ldd     r24, Z+7        ; 0x07
a1fdb2:   and     r24, r24
a1fdb4:   brne    .+6             ;  0x1fdbc
a1fdb6:   ldd     r18, Z+6        ; 0x06
a1fdb8:   cp      r18, r25
a1fdba:   brcs    .+2             ;  0x1fdbe
a1fdbc:   mov     r18, r25
a1fdbe:   sts     0x0101, r18     ;  0x800101
a1fdc2:   rjmp    .+218           ;  0x1fe9e
a1fdc4:   lds     r24, 0x0106     ;  0x800106
a1fdc8:   sbrs    r24, 7
a1fdca:   rjmp    .+210           ;  0x1fe9e
a1fdcc:   lds     r24, 0x010A     ;  0x80010a
a1fdd0:   mov     r15, r25
a1fdd2:   cp      r24, r25
a1fdd4:   brcc    .+2             ;  0x1fdd8
a1fdd6:   mov     r15, r24
a1fdd8:   sub     r24, r15
a1fdda:   sts     0x010A, r24     ;  0x80010a
a1fdde:   eor     r14, r14
a1fde0:   and     r24, r24
a1fde2:   brne    .+4             ;  0x1fde8
a1fde4:   eor     r14, r14
a1fde6:   inc     r14
a1fde8:   lds     r24, 0x010C     ;  0x80010c
a1fdec:   cpi     r24, 0x07       ; 7
a1fdee:   brcc    .+4             ;  0x1fdf4
a1fdf0:   ldi     r19, 0x00       ; 0
a1fdf2:   rjmp    .+156           ;  0x1fe90
a1fdf4:   movw    r28, r16
a1fdf6:   rjmp    .+24            ;  0x1fe10
a1fdf8:   lds     r24, 0x0108     ;  0x800108
a1fdfc:   lds     r25, 0x0109     ;  0x800109
a1fe00:   adiw    r24, 0x01       ; 1
a1fe02:   sts     0x0109, r25     ;  0x800109
a1fe06:   sts     0x0108, r24     ;  0x800108
a1fe0a:   sbiw    r24, 0x01       ; 1
a1fe0c:   ld      r22, Y+
a1fe0e:   rcall   .+462           ;  0x1ffde
a1fe10:   movw    r18, r28
a1fe12:   sub     r18, r16
a1fe14:   cp      r18, r15
a1fe16:   brcs    .-32            ;  0x1fdf8
a1fe18:   rjmp    .+124           ;  0x1fe96
a1fe1a:   lds     r30, 0x0108     ;  0x800108
a1fe1e:   lds     r31, 0x0109     ;  0x800109
a1fe22:   and     r30, r30
a1fe24:   brne    .+18            ;  0x1fe38
a1fe26:   cli
a1fe28:   ldi     r24, 0x03       ; 3
a1fe2a:   sts     0x0057, r24     ;  0x800057
a1fe2e:   spm
a1fe30:   sei
a1fe32:   in      r0, 0x37        ; 55
a1fe34:   sbrc    r0, 0
a1fe36:   rjmp    .-6             ;  0x1fe32
a1fe38:   subi    r19, 0xFE       ; 254
a1fe3a:   cli
a1fe3c:   movw    r26, r16
a1fe3e:   ld      r24, X+
a1fe40:   ld      r25, X+
a1fe42:   movw    r16, r26
a1fe44:   ldi     r18, 0x01       ; 1
a1fe46:   movw    r0, r24
a1fe48:   sts     0x0057, r18     ;  0x800057
a1fe4c:   spm
a1fe4e:   eor     r1, r1
a1fe50:   sei
a1fe52:   movw    r24, r30
a1fe54:   adiw    r24, 0x02       ; 2
a1fe56:   sts     0x0109, r25     ;  0x800109
a1fe5a:   sts     0x0108, r24     ;  0x800108
a1fe5e:   and     r24, r24
a1fe60:   breq    .+16            ;  0x1fe72
a1fe62:   and     r14, r14
a1fe64:   breq    .+42            ;  0x1fe90
a1fe66:   cp      r19, r15
a1fe68:   brcs    .+38            ;  0x1fe90
a1fe6a:   lds     r24, 0x010B     ;  0x80010b
a1fe6e:   and     r24, r24
a1fe70:   breq    .+30            ;  0x1fe90
a1fe72:   cli
a1fe74:   ldi     r24, 0x05       ; 5
a1fe76:   sts     0x0057, r24     ;  0x800057
a1fe7a:   spm
a1fe7c:   sei
a1fe7e:   in      r0, 0x37        ; 55
a1fe80:   sbrc    r0, 0
a1fe82:   rjmp    .-6             ;  0x1fe7e
a1fe84:   cli
a1fe86:   ldi     r24, 0x11       ; 17
a1fe88:   sts     0x0057, r24     ;  0x800057
a1fe8c:   spm
a1fe8e:   sei
a1fe90:   cp      r19, r15
a1fe92:   brcc    .+2             ;  0x1fe96
a1fe94:   rjmp    .-124           ;  0x1fe1a
a1fe96:   and     r14, r14
a1fe98:   breq    .+4             ;  0x1fe9e
a1fe9a:   sts     0x0101, r1      ;  0x800101
a1fe9e:   sts     0x011D, r1      ;  0x80011d
a1fea2:   lds     r24, 0x0100     ;  0x800100
a1fea6:   sbrs    r24, 4
a1fea8:   rjmp    .+226           ;  0x1ff8c
a1feaa:   lds     r24, 0x0101     ;  0x800101
a1feae:   cpi     r24, 0xFF       ; 255
a1feb0:   brne    .+2             ;  0x1feb4
a1feb2:   rjmp    .+216           ;  0x1ff8c
a1feb4:   mov     r17, r24
a1feb6:   cpi     r24, 0x09       ; 9
a1feb8:   brcs    .+2             ;  0x1febc
a1feba:   ldi     r17, 0x08       ; 8
a1febc:   sub     r24, r17
a1febe:   sts     0x0101, r24     ;  0x800101
a1fec2:   lds     r24, 0x010D     ;  0x80010d
a1fec6:   ldi     r25, 0x88       ; 136
a1fec8:   eor     r24, r25
a1feca:   sts     0x010D, r24     ;  0x80010d
a1fece:   and     r17, r17
a1fed0:   brne    .+2             ;  0x1fed4
a1fed2:   rjmp    .+148           ;  0x1ff68
a1fed4:   lds     r24, 0x0106     ;  0x800106
a1fed8:   sbrs    r24, 7
a1feda:   rjmp    .+84            ;  0x1ff30
a1fedc:   lds     r24, 0x010A     ;  0x80010a
a1fee0:   cp      r24, r17
a1fee2:   brcc    .+2             ;  0x1fee6
a1fee4:   mov     r17, r24
a1fee6:   sub     r24, r17
a1fee8:   sts     0x010A, r24     ;  0x80010a
a1feec:   ldi     r28, 0x0E       ; 14
a1feee:   ldi     r29, 0x01       ; 1
a1fef0:   rjmp    .+46            ;  0x1ff20
a1fef2:   lds     r24, 0x010C     ;  0x80010c
a1fef6:   lds     r30, 0x0108     ;  0x800108
a1fefa:   lds     r31, 0x0109     ;  0x800109
a1fefe:   cpi     r24, 0x07       ; 7
a1ff00:   brcs    .+6             ;  0x1ff08
a1ff02:   movw    r24, r30
a1ff04:   rcall   .+200           ;  0x1ffce
a1ff06:   rjmp    .+2             ;  0x1ff0a
a1ff08:   lpm     r24, Z
a1ff0a:   st      Y, r24
a1ff0c:   adiw    r28, 0x01       ; 1
a1ff0e:   lds     r24, 0x0108     ;  0x800108
a1ff12:   lds     r25, 0x0109     ;  0x800109
a1ff16:   adiw    r24, 0x01       ; 1
a1ff18:   sts     0x0109, r25     ;  0x800109
a1ff1c:   sts     0x0108, r24     ;  0x800108
a1ff20:   mov     r24, r17
a1ff22:   ldi     r25, 0x00       ; 0
a1ff24:   subi    r24, 0xF2       ; 242
a1ff26:   sbci    r25, 0xFE       ; 254
a1ff28:   cp      r28, r24
a1ff2a:   cpc     r29, r25
a1ff2c:   brne    .-60            ;  0x1fef2
a1ff2e:   rjmp    .+52            ;  0x1ff64
a1ff30:   lds     r30, 0x011B     ;  0x80011b
a1ff34:   lds     r31, 0x011C     ;  0x80011c
a1ff38:   sbrs    r24, 6
a1ff3a:   rjmp    .+18            ;  0x1ff4e
a1ff3c:   mov     r25, r17
a1ff3e:   ldi     r26, 0x0E       ; 14
a1ff40:   ldi     r27, 0x01       ; 1
a1ff42:   lpm     r24, Z
a1ff44:   st      X+, r24
a1ff46:   adiw    r30, 0x01       ; 1
a1ff48:   subi    r25, 0x01       ; 1
a1ff4a:   brne    .-10            ;  0x1ff42
a1ff4c:   rjmp    .+14            ;  0x1ff5c
a1ff4e:   mov     r25, r17
a1ff50:   ldi     r26, 0x0E       ; 14
a1ff52:   ldi     r27, 0x01       ; 1
a1ff54:   ld      r24, Z+
a1ff56:   st      X+, r24
a1ff58:   subi    r25, 0x01       ; 1
a1ff5a:   brne    .-8             ;  0x1ff54
a1ff5c:   sts     0x011C, r31     ;  0x80011c
a1ff60:   sts     0x011B, r30     ;  0x80011b
a1ff64:   cpi     r17, 0x09       ; 9
a1ff66:   brcc    .+24            ;  0x1ff80
a1ff68:   ldi     r24, 0x0E       ; 14
a1ff6a:   ldi     r25, 0x01       ; 1
a1ff6c:   mov     r22, r17
a1ff6e:   rcall   .-1600          ;  0x1f930
a1ff70:   mov     r22, r17
a1ff72:   subi    r22, 0xFC       ; 252
a1ff74:   cpi     r22, 0x0C       ; 12
a1ff76:   breq    .+16            ;  0x1ff88
a1ff78:   ldi     r24, 0xFF       ; 255
a1ff7a:   sts     0x0101, r24     ;  0x800101
a1ff7e:   rjmp    .+8             ;  0x1ff88
a1ff80:   ldi     r24, 0xFF       ; 255
a1ff82:   sts     0x0101, r24     ;  0x800101
a1ff86:   ldi     r22, 0x1E       ; 30
a1ff88:   sts     0x0100, r22     ;  0x800100
a1ff8c:   ldi     r25, 0x14       ; 20
a1ff8e:   in      r24, 0x03       ; 3
a1ff90:   andi    r24, 0x0C       ; 12
a1ff92:   brne    .+12            ;  0x1ffa0
a1ff94:   subi    r25, 0x01       ; 1
a1ff96:   brne    .-10            ;  0x1ff8e
a1ff98:   sts     0x011E, r1      ;  0x80011e
a1ff9c:   sts     0x0118, r1      ;  0x800118
a1ffa0:   lds     r24, 0x0107     ;  0x800107
a1ffa4:   and     r24, r24
a1ffa6:   brne    .+2             ;  0x1ffaa
a1ffa8:   rjmp    .-972           ;  0x1fbde
a1ffaa:   dec     r12
a1ffac:   breq    .+2             ;  0x1ffb0
a1ffae:   rjmp    .-978           ;  0x1fbde
a1ffb0:   dec     r13
a1ffb2:   breq    .+2             ;  0x1ffb6
a1ffb4:   rjmp    .-984           ;  0x1fbde
a1ffb6:   cbi     0x05, 7 ; 5
a1ffb8:   cbi     0x04, 7 ; 4
a1ffba:   cli
a1ffbc:   out     0x1d, r1        ; 29
a1ffbe:   sts     0x0069, r1      ;  0x800069
a1ffc2:   ldi     r24, 0x01       ; 1
a1ffc4:   out     0x35, r24       ; 53
a1ffc6:   out     0x35, r1        ; 53
a1ffc8:   jmp     0       ;  0x0
a1ffcc:   ret
a1ffce:   sbic    0x1f, 1 ; 31
a1ffd0:   rjmp    .-4             ;  0x1ffce
a1ffd2:   out     0x22, r25       ; 34
a1ffd4:   out     0x21, r24       ; 33
a1ffd6:   sbi     0x1f, 0 ; 31
a1ffd8:   eor     r25, r25
a1ffda:   in      r24, 0x20       ; 32
a1ffdc:   ret
a1ffde:   mov     r18, r22
a1ffe0:   sbic    0x1f, 1 ; 31
a1ffe2:   rjmp    .-4             ;  0x1ffe0
a1ffe4:   out     0x1f, r1        ; 31
a1ffe6:   out     0x22, r25       ; 34
a1ffe8:   out     0x21, r24       ; 33
a1ffea:   out     0x20, r18       ; 32
a1ffec:   in      r0, 0x3f        ; 63
a1ffee:   cli
a1fff0:   sbi     0x1f, 2 ; 31
a1fff2:   sbi     0x1f, 1 ; 31
a1fff4:   out     0x3f, r0        ; 63
a1fff6:   adiw    r24, 0x01       ; 1
a1fff8:   ret
a1fffa:   cli
a1fffc:   rjmp    .-2             ;  0x1fffc
a1fffe:   .word   0xff5a  ; ????
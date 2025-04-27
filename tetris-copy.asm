; PRG CRC32 checksum: 943dfbbe
; CHR CRC32 checksum: 251af21c
; Overall CRC32 checksum: 1394f57e
; Code base address: $8000

.setcpu "6502x"
.segment "HEADER"

.byte "NES", $1a                 ; Magic string that always begins an iNES header
.byte $02                        ; Number of 16KB PRG-ROM banks
.byte $02                        ; Number of 8KB CHR-ROM banks
.byte $10                        ; Control bits 1
.byte $00                        ; Control bits 2
.byte $00                        ; Number of 8KB PRG-RAM banks
.byte $00                        ; Video format NTSC/PAL

APU_DMC_FREQ = $4010
APU_DMC_LEN = $4013
APU_DMC_RAW = $4011
APU_DMC_START = $4012
APU_FRAME = $4017
APU_NOISE_HI = $400F
APU_NOISE_LO = $400E
APU_NOISE_VOL = $400C
APU_PL1_HI = $4003
APU_PL1_LO = $4002
APU_PL1_SWEEP = $4001
APU_PL1_VOL = $4000
APU_PL2_HI = $4007
APU_PL2_LO = $4006
APU_PL2_SWEEP = $4005
APU_PL2_VOL = $4004
APU_SND_CHN = $4015
APU_TRI_LINEAR = $4008
JOYPAD1 = $4016
JOYPAD2 = $4017
OAM_ADDR = $2003
OAM_DMA = $4014
PPU_ADDR = $2006
PPU_CTRL = $2000
PPU_DATA = $2007
PPU_MASK = $2001
PPU_SCROLL = $2005
PPU_STATUS = $2002


_var_0000_indexed = $0000
_var_0001_indexed = $0001
_var_0002 = $0002
_var_0005_indexed = $0005
_var_0006 = $0006
_var_0014_indexed = $0014
_var_0015 = $0015
_var_0017 = $0017
_var_0019 = $0019
_var_001a = $001A
_var_0033 = $0033
_var_0040_indexed = $0040
_var_0041 = $0041
_var_0042 = $0042
_var_0044 = $0044
_var_0045 = $0045
_var_0046 = $0046
_var_0048 = $0048
_var_0049 = $0049
_var_004a_indexed = $004A
_var_004b = $004B
_var_004c = $004C
_var_004d = $004D
_var_004e = $004E
_var_004f = $004F
_var_0050 = $0050
_var_0051 = $0051
_var_0052 = $0052
_var_0053 = $0053
_var_0054 = $0054
_var_0055 = $0055
_var_0056 = $0056
_var_0057 = $0057
_var_0058 = $0058
_var_0059 = $0059
_var_0060_indexed = $0060
_var_0064 = $0064
_var_0065 = $0065
_var_0067 = $0067
_var_0068 = $0068
_var_0069 = $0069
_var_0070 = $0070
_var_0071 = $0071
_var_0072 = $0072
_var_0073 = $0073
_var_0074 = $0074
_var_0075 = $0075
_var_0079 = $0079
_var_0080_indexed = $0080
_var_0085 = $0085
_var_0088 = $0088
_var_0089 = $0089
_var_0090 = $0090
_var_0091 = $0091
_var_0092 = $0092
_var_00a0 = $00A0
_var_00a1 = $00A1
_var_00a2 = $00A2
_var_00a3 = $00A3
_var_00a4 = $00A4
_var_00a5 = $00A5
_var_00a6 = $00A6
_var_00a7 = $00A7
_var_00a8_indexed = $00A8
_var_00a9 = $00A9
_var_00aa = $00AA
_var_00ab = $00AB
_var_00ac_indexed = $00AC
_var_00ad_indexed = $00AD
_var_00ae = $00AE
_var_00af = $00AF
_var_00b0 = $00B0
_var_00b1 = $00B1
_var_00b2 = $00B2
_var_00b3 = $00B3
_var_00b5 = $00B5
_var_00b6 = $00B6
_var_00b7 = $00B7
_var_00b8_indexed = $00B8
_var_00b9 = $00B9
_var_00ba = $00BA
_var_00bb = $00BB
_var_00bc = $00BC
_var_00bd = $00BD
_var_00be = $00BE
_var_00bf = $00BF
_var_00c0 = $00C0
_var_00c1 = $00C1
_var_00c2 = $00C2
_var_00c3 = $00C3
_var_00c4 = $00C4
_var_00c5 = $00C5
_var_00c6_indexed = $00C6
_var_00c7 = $00C7
_var_00c8_indexed = $00C8
_var_00c9 = $00C9
_var_00ca = $00CA
_var_00cb = $00CB
_var_00cc = $00CC
_var_00cd = $00CD
_var_00ce = $00CE
_var_00cf = $00CF
_var_00d0 = $00D0
_var_00d1_indexed = $00D1
_var_00d2 = $00D2
_var_00d3 = $00D3
_var_00d4 = $00D4
_var_00d5 = $00D5
_var_00d8_indexed = $00D8
_var_00dc = $00DC
_var_00dd = $00DD
_var_00de = $00DE
_var_00df = $00DF
_var_00e0_indexed = $00E0
_var_00e1 = $00E1
_var_00e2_indexed = $00E2
_var_00e3 = $00E3
_var_00e4 = $00E4
_var_00e6_indexed = $00E6
_var_00e7 = $00E7
_var_00ee = $00EE
_var_00ef = $00EF
_var_00f5_indexed = $00F5
_var_00f6 = $00F6
_var_00f7_indexed = $00F7
_var_00fc = $00FC
_var_00fd = $00FD
_var_00fe = $00FE
_var_00ff = $00FF
_var_0103_indexed = $0103
_var_0104_indexed = $0104
_var_0200_indexed = $0200
_var_03ef_indexed = $03EF
_var_03f0_indexed = $03F0
_var_03f1_indexed = $03F1
_var_0400_indexed = $0400
_var_0500_indexed = $0500
_var_0680_indexed = $0680
_var_0681_indexed = $0681
_var_0682 = $0682
_var_0683 = $0683
_var_068a = $068A
_var_068b = $068B
_var_068d = $068D
_var_0690_indexed = $0690
_var_0691 = $0691
_var_0692_indexed = $0692
_var_0693_indexed = $0693
_var_069a_indexed = $069A
_var_069c = $069C
_var_069d_indexed = $069D
_var_06a0_indexed = $06A0
_var_06a1_indexed = $06A1
_var_06a7_indexed = $06A7
_var_06a8_indexed = $06A8
_var_06ac_indexed = $06AC
_var_06b0_indexed = $06B0
_var_06b4_indexed = $06B4
_var_06b8_indexed = $06B8
_var_06bc_indexed = $06BC
_var_06c0_indexed = $06C0
_var_06c3_indexed = $06C3
_var_06c8_indexed = $06C8
_var_06cc = $06CC
_var_06cd_indexed = $06CD
_var_06d1_indexed = $06D1
_var_06ef_indexed = $06EF
_var_06f0_indexed = $06F0
_var_06f1 = $06F1
_var_06f5 = $06F5
_var_06f8_indexed = $06F8
_var_06fd = $06FD
_var_0700_indexed = $0700
_var_0730_indexed = $0730
_var_0733_indexed = $0733
_var_0748_indexed = $0748
_var_0749_indexed = $0749
_var_0750 = $0750
_var_0751 = $0751
_var_0752 = $0752
_var_0753 = $0753
_var_0754 = $0754


.segment "CODE"

_data_8000:
  ldx #$00                       ; $8000  A2 00
  jmp _label_805a                ; $8002  4C 5A 80

NMI:
  pha                            ; $8005  48
  txa                            ; $8006  8A
  pha                            ; $8007  48
  tya                            ; $8008  98
  pha                            ; $8009  48
  lda #$00                       ; $800A  A9 00
  sta z:_var_00b3                ; $800C  85 B3
  jsr _func_804b                 ; $800E  20 4B 80
  dec z:_var_00c3                ; $8011  C6 C3
  lda z:_var_00c3                ; $8013  A5 C3
  cmp #$FF                       ; $8015  C9 FF
  bne _label_801b                ; $8017  D0 02
  inc z:_var_00c3                ; $8019  E6 C3

_label_801b:
  jsr _func_ab5e                 ; $801B  20 5E AB
  lda z:_var_00b1                ; $801E  A5 B1
  clc                            ; $8020  18
  adc #$01                       ; $8021  69 01
  sta z:_var_00b1                ; $8023  85 B1
  lda #$00                       ; $8025  A9 00
  adc z:_var_00b2                ; $8027  65 B2
  sta z:_var_00b2                ; $8029  85 B2
  ldx #$17                       ; $802B  A2 17
  ldy #$02                       ; $802D  A0 02
  jsr _func_ab47                 ; $802F  20 47 AB
  lda #$00                       ; $8032  A9 00
  sta z:_var_00fd                ; $8034  85 FD
  sta PPU_SCROLL                 ; $8036  8D 05 20
  sta z:_var_00fc                ; $8039  85 FC
  sta PPU_SCROLL                 ; $803B  8D 05 20
  lda #$01                       ; $803E  A9 01
  sta z:_var_0033                ; $8040  85 33
  jsr _func_9d51                 ; $8042  20 51 9D
  pla                            ; $8045  68
  tay                            ; $8046  A8
  pla                            ; $8047  68
  tax                            ; $8048  AA
  pla                            ; $8049  68

IRQ:
  rti                            ; $804A  40

_func_804b:
  lda z:_var_00bd                ; $804B  A5 BD
  jsr _jump_engine_ac82          ; $804D  20 82 AC

  .word _label_82b1              ; $8050  B1 82
  .word _label_85da              ; $8052  DA 85
  .word _label_a344              ; $8054  44 A3
  .word _label_94ee              ; $8056  EE 94
  .word _label_9f95              ; $8058  95 9F

_label_805a:
  ldy #$06                       ; $805A  A0 06
  sty z:_var_0001_indexed        ; $805C  84 01
  ldy #$00                       ; $805E  A0 00
  sty z:_var_0000_indexed        ; $8060  84 00
  lda #$00                       ; $8062  A9 00

_label_8064:
  sta (_var_0000_indexed),Y      ; $8064  91 00
  dey                            ; $8066  88
  bne _label_8064                ; $8067  D0 FB
  dec z:_var_0001_indexed        ; $8069  C6 01
  bpl _label_8064                ; $806B  10 F7
  lda a:_var_0750                ; $806D  AD 50 07
  cmp #$12                       ; $8070  C9 12
  bne _label_8095                ; $8072  D0 21
  lda a:_var_0751                ; $8074  AD 51 07
  cmp #$34                       ; $8077  C9 34
  bne _label_8095                ; $8079  D0 1A
  lda a:_var_0752                ; $807B  AD 52 07
  cmp #$56                       ; $807E  C9 56
  bne _label_8095                ; $8080  D0 13
  lda a:_var_0753                ; $8082  AD 53 07
  cmp #$78                       ; $8085  C9 78
  bne _label_8095                ; $8087  D0 0C
  lda a:_var_0754                ; $8089  AD 54 07
  cmp #$9A                       ; $808C  C9 9A
  bne _label_8095                ; $808E  D0 05
  jmp _label_80bc                ; $8090  4C BC 80

.byte $a2, $00                   ; $8093

_label_8095:
  lda a:_data_ad67_indexed,X     ; $8095  BD 67 AD
  cmp #$FF                       ; $8098  C9 FF
  beq _label_80a3                ; $809A  F0 07
  sta a:_var_0700_indexed,X      ; $809C  9D 00 07
  inx                            ; $809F  E8
  jmp _label_8095                ; $80A0  4C 95 80

_label_80a3:
  lda #$12                       ; $80A3  A9 12
  sta a:_var_0750                ; $80A5  8D 50 07
  lda #$34                       ; $80A8  A9 34
  sta a:_var_0751                ; $80AA  8D 51 07
  lda #$56                       ; $80AD  A9 56
  sta a:_var_0752                ; $80AF  8D 52 07
  lda #$78                       ; $80B2  A9 78
  sta a:_var_0753                ; $80B4  8D 53 07
  lda #$9A                       ; $80B7  A9 9A
  sta a:_var_0754                ; $80B9  8D 54 07

_label_80bc:
  ldx #$89                       ; $80BC  A2 89
  stx z:_var_0017                ; $80BE  86 17
  dex                            ; $80C0  CA
  stx z:$18                      ; $80C1  86 18
  ldy #$00                       ; $80C3  A0 00
  sty z:_var_00fd                ; $80C5  84 FD
  sty PPU_SCROLL                 ; $80C7  8C 05 20
  ldy #$00                       ; $80CA  A0 00
  sty z:_var_00fc                ; $80CC  84 FC
  sty PPU_SCROLL                 ; $80CE  8C 05 20
  lda #$90                       ; $80D1  A9 90
  sta z:_var_00ff                ; $80D3  85 FF
  sta PPU_CTRL                   ; $80D5  8D 00 20
  lda #$06                       ; $80D8  A9 06
  sta PPU_MASK                   ; $80DA  8D 01 20
  jsr _func_e006                 ; $80DD  20 06 E0
  jsr _func_e003                 ; $80E0  20 03 E0
  lda #$C0                       ; $80E3  A9 C0
  sta a:$0100                    ; $80E5  8D 00 01
  lda #$80                       ; $80E8  A9 80
  sta a:$0101                    ; $80EA  8D 01 01
  lda #$35                       ; $80ED  A9 35
  sta a:_var_0103_indexed        ; $80EF  8D 03 01
  lda #$AC                       ; $80F2  A9 AC
  sta a:_var_0104_indexed        ; $80F4  8D 04 01
  jsr _func_aa52                 ; $80F7  20 52 AA
  jsr _func_aa78                 ; $80FA  20 78 AA
  lda #$20                       ; $80FD  A9 20
  jsr _func_aa82                 ; $80FF  20 82 AA
  lda #$24                       ; $8102  A9 24
  jsr _func_aa82                 ; $8104  20 82 AA
  lda #$28                       ; $8107  A9 28
  jsr _func_aa82                 ; $8109  20 82 AA
  lda #$2C                       ; $810C  A9 2C
  jsr _func_aa82                 ; $810E  20 82 AA
  lda #$EF                       ; $8111  A9 EF
  ldx #$04                       ; $8113  A2 04
  ldy #$05                       ; $8115  A0 05
  jsr _func_ac6a                 ; $8117  20 6A AC
  jsr _func_aa6b                 ; $811A  20 6B AA
  jsr _func_aa2f                 ; $811D  20 2F AA
  jsr _func_aa5f                 ; $8120  20 5F AA
  jsr _func_aa2f                 ; $8123  20 2F AA
  lda #$0E                       ; $8126  A9 0E
  sta z:$34                      ; $8128  85 34
  lda #$00                       ; $812A  A9 00
  sta z:_var_00a7                ; $812C  85 A7
  sta z:_var_00c0                ; $812E  85 C0
  lda #$01                       ; $8130  A9 01
  sta z:_var_00be                ; $8132  85 BE
  lda #$00                       ; $8134  A9 00
  sta z:_var_00b2                ; $8136  85 B2

_label_8138:
  jsr _func_8161                 ; $8138  20 61 81
  cmp z:_var_00a7                ; $813B  C5 A7
  bne _label_8142                ; $813D  D0 03
  jsr _func_aa2f                 ; $813F  20 2F AA

_label_8142:
  lda z:_var_00c0                ; $8142  A5 C0
  cmp #$05                       ; $8144  C9 05
  bne _label_815a                ; $8146  D0 12
  lda z:_var_00d2                ; $8148  A5 D2
  cmp #$DF                       ; $814A  C9 DF
  bne _label_815a                ; $814C  D0 0C
  lda #$DD                       ; $814E  A9 DD
  sta z:_var_00d2                ; $8150  85 D2
  lda #$00                       ; $8152  A9 00
  sta z:_var_00b2                ; $8154  85 B2
  lda #$01                       ; $8156  A9 01
  sta z:_var_00c0                ; $8158  85 C0

_label_815a:
  jmp _label_8138                ; $815A  4C 38 81

_label_815d:
  jsr _func_819b                 ; $815D  20 9B 81
  rts                            ; $8160  60

_func_8161:
  lda z:_var_00c0                ; $8161  A5 C0
  jsr _jump_engine_ac82          ; $8163  20 82 AC

  .word _label_8200              ; $8166  00 82
  .word _label_824f              ; $8168  4F 82
  .word _label_82d1              ; $816A  D1 82
  .word _label_83d7              ; $816C  D7 83
  .word _label_815d              ; $816E  5D 81
  .word _label_815d              ; $8170  5D 81
  .word _label_9df6              ; $8172  F6 9D

_label_8174:
  jsr _func_8776                 ; $8174  20 76 87
  jsr _func_81b2                 ; $8177  20 B2 81
  jsr _func_8a0a                 ; $817A  20 0A 8A
  jsr _func_87ae                 ; $817D  20 AE 87
  jsr _func_8bce                 ; $8180  20 CE 8B
  inc z:_var_00a7                ; $8183  E6 A7
  rts                            ; $8185  60

_label_8186:
  lda z:_var_00be                ; $8186  A5 BE
  cmp #$02                       ; $8188  C9 02
  bne _label_8198                ; $818A  D0 0C
  jsr _func_8792                 ; $818C  20 92 87
  jsr _func_81d9                 ; $818F  20 D9 81
  jsr _func_8a0a                 ; $8192  20 0A 8A
  jsr _func_87c8                 ; $8195  20 C8 87

_label_8198:
  inc z:_var_00a7                ; $8198  E6 A7
  rts                            ; $819A  60

_func_819b:
  lda z:_var_00a7                ; $819B  A5 A7
  jsr _jump_engine_ac82          ; $819D  20 82 AC

  .word _label_85f0              ; $81A0  F0 85
  .word _label_86dc              ; $81A2  DC 86
  .word _label_8884              ; $81A4  84 88
  .word _label_9cbf              ; $81A6  BF 9C
  .word _label_8174              ; $81A8  74 81
  .word _label_8186              ; $81AA  86 81
  .word _label_9e16              ; $81AC  16 9E
  .word _label_a37f              ; $81AE  7F A3
  .word _label_9e27              ; $81B0  27 9E

_func_81b2:
  lda z:_var_0048                ; $81B2  A5 48
  jsr _jump_engine_ac82          ; $81B4  20 82 AC

  .word _label_9e2f              ; $81B7  2F 9E
  .word _label_81cf              ; $81B9  CF 81
  .word _label_99a2              ; $81BB  A2 99
  .word _label_9a6b              ; $81BD  6B 9A
  .word _label_9e39              ; $81BF  39 9E
  .word _label_9b58              ; $81C1  58 9B
  .word _label_a3f2              ; $81C3  F2 A3
  .word _label_9b03              ; $81C5  03 9B
  .word _label_988e              ; $81C7  8E 98
  .word _label_9e39              ; $81C9  39 9E
  .word _label_9a11              ; $81CB  11 9A
  .word _label_9e37              ; $81CD  37 9E

_label_81cf:
  jsr _func_89ae                 ; $81CF  20 AE 89
  jsr _func_88ab                 ; $81D2  20 AB 88
  jsr _func_8914                 ; $81D5  20 14 89
  rts                            ; $81D8  60

_func_81d9:
  lda z:_var_0048                ; $81D9  A5 48
  jsr _jump_engine_ac82          ; $81DB  20 82 AC

  .word _label_9e2f              ; $81DE  2F 9E
  .word _label_81f6              ; $81E0  F6 81
  .word _label_99a2              ; $81E2  A2 99
  .word _label_9a6b              ; $81E4  6B 9A
  .word _label_9e39              ; $81E6  39 9E
  .word _label_9b58              ; $81E8  58 9B
  .word _label_a3f2              ; $81EA  F2 A3
  .word _label_9b03              ; $81EC  03 9B
  .word _label_988e              ; $81EE  8E 98
  .word _label_9e39              ; $81F0  39 9E
  .word _label_9a11              ; $81F2  11 9A
  .word _label_9e37              ; $81F4  37 9E

_label_81f6:
  jsr _func_89ae                 ; $81F6  20 AE 89
  jsr _func_88ab                 ; $81F9  20 AB 88
  jsr _func_8914                 ; $81FC  20 14 89
  rts                            ; $81FF  60

_label_8200:
  jsr _func_e003                 ; $8200  20 03 E0
  lda #$00                       ; $8203  A9 00
  sta z:_var_00bd                ; $8205  85 BD
  jsr _func_aa52                 ; $8207  20 52 AA
  jsr _func_aa78                 ; $820A  20 78 AA
  lda #$00                       ; $820D  A9 00
  jsr _func_acb7                 ; $820F  20 B7 AC
  lda #$00                       ; $8212  A9 00
  jsr _func_accb                 ; $8214  20 CB AC
  jsr _func_aa98                 ; $8217  20 98 AA
  slo z:_var_00ad_indexed,X      ; $821A  17 AD
  jsr _func_aa98                 ; $821C  20 98 AA
  clv                            ; $821F  B8
  lda a:$6B20                    ; $8220  AD 20 6B
  tax                            ; $8223  AA
  jsr _func_aa2f                 ; $8224  20 2F AA
  jsr _func_aa5f                 ; $8227  20 5F AA
  jsr _func_aa2f                 ; $822A  20 2F AA
  lda #$00                       ; $822D  A9 00
  ldx #$02                       ; $822F  A2 02
  ldy #$02                       ; $8231  A0 02
  jsr _func_ac6a                 ; $8233  20 6A AC
  lda #$FF                       ; $8236  A9 FF
  jsr _func_a459                 ; $8238  20 59 A4
  lda #$FF                       ; $823B  A9 FF
  sta z:_var_00a8_indexed        ; $823D  85 A8

_label_823f:
  lda z:_var_00f5_indexed        ; $823F  A5 F5
  cmp #$10                       ; $8241  C9 10
  beq _label_824c                ; $8243  F0 07
  jsr _func_aa2f                 ; $8245  20 2F AA
  dec z:_var_00a8_indexed        ; $8248  C6 A8
  bne _label_823f                ; $824A  D0 F3

_label_824c:
  inc z:_var_00c0                ; $824C  E6 C0
  rts                            ; $824E  60

_label_824f:
  jsr _func_e003                 ; $824F  20 03 E0
  lda #$00                       ; $8252  A9 00
  sta z:_var_00bd                ; $8254  85 BD
  sta z:_var_00d0                ; $8256  85 D0
  sta z:_var_00df                ; $8258  85 DF
  jsr _func_aa52                 ; $825A  20 52 AA
  jsr _func_aa78                 ; $825D  20 78 AA
  lda #$00                       ; $8260  A9 00
  jsr _func_acb7                 ; $8262  20 B7 AC
  lda #$00                       ; $8265  A9 00
  jsr _func_accb                 ; $8267  20 CB AC
  jsr _func_aa98                 ; $826A  20 98 AA

.byte $2b, $ad, $20, $98, $aa, $19, $b2, $20, $6b, $aa, $20, $2f, $aa, $20, $5f, $aa ; $826D
.byte $20, $2f, $aa, $a9, $00, $a2, $02, $a0, $02, $20, $6a, $ac, $a9, $00, $85, $b2 ; $827D
.byte $20, $2f, $aa, $a5, $f5, $c9, $10, $f0, $09, $a5, $b2, $c9, $05, $f0, $0b, $4c ; $828D
.byte $8d, $82, $a9, $02, $8d, $f1, $06, $e6, $c0, $60, $a9, $02, $8d, $f1, $06, $a9 ; $829D
.byte $06, $85, $c0, $60         ; $82AD

_label_82b1:
  lda z:_var_00ff                ; $82B1  A5 FF
  and #$FC                       ; $82B3  29 FC
  sta z:_var_00ff                ; $82B5  85 FF
  lda #$00                       ; $82B7  A9 00
  sta z:_var_00fd                ; $82B9  85 FD
  sta PPU_SCROLL                 ; $82BB  8D 05 20
  sta z:_var_00fc                ; $82BE  85 FC
  sta PPU_SCROLL                 ; $82C0  8D 05 20
  rts                            ; $82C3  60

.byte $a9, $00, $85, $64, $a9, $00, $85, $c1, $a9, $04, $a5, $c0, $60 ; $82C4

_label_82d1:
  inc a:_data_8000               ; $82D1  EE 00 80
  lda #$10                       ; $82D4  A9 10
  jsr _func_aca3                 ; $82D6  20 A3 AC
  lda #$01                       ; $82D9  A9 01
  sta z:_var_00bd                ; $82DB  85 BD
  jsr _func_aa52                 ; $82DD  20 52 AA
  jsr _func_aa78                 ; $82E0  20 78 AA
  jsr _func_aa98                 ; $82E3  20 98 AA

.byte $2b, $ad, $20, $98, $aa, $7a, $b6, $a9, $00, $20, $b7, $ac, $a9, $00, $20, $cb ; $82E6
.byte $ac, $20, $6b, $aa, $20, $2f, $aa, $20, $5f, $aa, $20, $2f, $aa, $a6, $c2, $bd ; $82F6
.byte $d2, $85, $20, $07, $9e, $a9, $ff, $a2, $02, $a0, $02, $20, $6a, $ac, $a5, $f5 ; $8306
.byte $c9, $01, $d0, $0c, $a9, $01, $85, $c1, $a9, $01, $8d, $f1, $06, $4c, $35, $83 ; $8316
.byte $a5, $f5, $c9, $02, $d0, $09, $a9, $00, $85, $c1, $a9, $01, $8d, $f1, $06, $a5 ; $8326
.byte $f5, $c9, $04, $d0, $15, $a9, $01, $8d, $f1, $06, $a5, $c2, $c9, $03, $f0, $23 ; $8336
.byte $e6, $c2, $a6, $c2, $bd, $d2, $85, $20, $07, $9e, $a5, $f5, $c9, $08, $d0, $13 ; $8346
.byte $a9, $01, $8d, $f1, $06, $a5, $c2, $f0, $0a, $c6, $c2, $a6, $c2, $bd, $d2, $85 ; $8356
.byte $20, $07, $9e, $a5, $f5, $c9, $10, $d0, $08, $a9, $02, $8d, $f1, $06, $e6, $c0 ; $8366
.byte $60, $a5, $f5, $c9, $40, $d0, $0c, $a9, $02, $8d, $f1, $06, $a9, $00, $85, $b2 ; $8376
.byte $c6, $c0, $60, $a0, $00, $a5, $c1, $0a, $85, $a8, $0a, $65, $a8, $0a, $0a, $0a ; $8386
.byte $0a, $18, $69, $3f, $85, $a0, $a9, $3f, $85, $a1, $a9, $01, $85, $a2, $a5, $b1 ; $8396
.byte $29, $03, $d0              ; $83A6

_func_83a9:
.byte $04, $a9                   ; $83A9  04 A9  disambiguous instruction: nop z:$A9

.byte $02, $85, $a2, $20, $27, $8c, $a5, $c2, $0a, $0a, $0a, $0a, $18, $69, $8f, $85 ; $83AB
.byte $a1, $a9, $53, $85, $a2, $a9, $67, $85, $a0, $a5, $b1, $29, $03, $d0, $04, $a9 ; $83BB
.byte $02, $85, $a2, $20, $27, $8c, $20, $2f, $aa, $4c, $0b, $83 ; $83CB

_label_83d7:
  inc a:_data_8000               ; $83D7  EE 00 80
  lda #$10                       ; $83DA  A9 10
  jsr _func_aca3                 ; $83DC  20 A3 AC
  jsr _func_e003                 ; $83DF  20 03 E0
  lda #$01                       ; $83E2  A9 01
  sta z:_var_00bd                ; $83E4  85 BD
  jsr _func_aa52                 ; $83E6  20 52 AA
  jsr _func_aa78                 ; $83E9  20 78 AA
  lda #$00                       ; $83EC  A9 00
  jsr _func_acb7                 ; $83EE  20 B7 AC
  lda #$00                       ; $83F1  A9 00
  jsr _func_accb                 ; $83F3  20 CB AC
  jsr _func_aa98                 ; $83F6  20 98 AA

.byte $2b, $ad, $20, $98, $aa, $db, $ba, $a5, $c1, $d0, $05, $20, $98, $aa, $5d, $c9 ; $83F9
.byte $20, $f2, $9f, $20, $6b, $aa, $20, $2f, $aa, $a9, $00, $8d, $05, $20, $a9, $00 ; $8409
.byte $8d, $05, $20, $20, $5f, $aa, $20, $2f, $aa, $a9, $00, $85, $ae, $85, $af, $a5 ; $8419
.byte $67, $c9, $0a, $90, $08, $38, $e9, $0a, $85, $67, $4c, $28, $84, $a9, $00, $85 ; $8429
.byte $b7, $a5, $67, $85, $47, $a5, $79, $85, $59, $a5, $ae, $85, $ad, $a5, $f5, $85 ; $8439
.byte $b5, $20, $ae, $84, $a5, $47, $85, $67, $a5, $59, $85, $79, $a5, $ad, $85, $ae ; $8449
.byte $a5, $f5, $c9, $10, $d0, $19, $a5, $f7, $c9, $90, $d0, $07, $a5, $67, $18, $69 ; $8459
.byte $0a, $85, $67, $a9, $00, $85, $a7, $a9, $02, $8d, $f1, $06, $e6, $c0, $60, $a5 ; $8469
.byte $f5, $c9, $40, $d0, $08, $a9, $02, $8d, $f1, $06, $c6, $c0, $60, $a2, $17, $a0 ; $8479
.byte $02, $20, $47, $ab, $a5, $17, $29, $0f, $c9, $0a, $10, $f1, $85, $7a, $a2, $17 ; $8489
.byte $a0, $02, $20, $47, $ab, $a5, $17, $29, $0f, $c9, $0a, $10, $f1, $85, $9a, $20 ; $8499
.byte $2f, $aa, $4c, $36, $84, $a5, $b5, $c9, $01, $d0, $1c, $a9, $01, $8d, $f1, $06 ; $84A9
.byte $a5, $ad, $d0, $0b, $a5, $47, $c9, $09, $f0, $0d, $e6, $47, $4c, $d0, $84, $a5 ; $84B9
.byte $59, $c9, $05, $f0, $02, $e6, $59, $a5, $b5, $c9, $02, $d0, $18, $a9, $01, $8d ; $84C9
.byte $f1, $06, $a5, $ad, $d0, $09, $a5, $47, $f0, $0b, $c6, $47, $4c, $ee, $84, $a5 ; $84D9
.byte $59, $f0, $02, $c6, $59, $a5, $b5, $c9, $04, $d0, $23, $a9, $01, $8d, $f1, $06 ; $84E9
.byte $a5, $ad, $d0, $0e, $a5, $47, $c9, $05, $10, $14, $18, $69, $05, $85, $47, $4c ; $84F9
.byte $17, $85, $a5, $59, $c9, $03, $10, $06, $e6, $59, $e6, $59, $e6, $59, $a5, $b5 ; $8509
.byte $c9, $08, $d0, $23, $a9, $01, $8d, $f1, $06, $a5, $ad, $d0, $0e, $a5, $47, $c9 ; $8519
.byte $05, $30, $14, $38, $e9, $05, $85, $47, $4c, $40, $85, $a5, $59, $c9, $03, $30 ; $8529
.byte $06, $c6, $59, $c6, $59, $c6, $59, $a5, $c1, $f0, $11, $a5, $b5, $c9, $80, $d0 ; $8539
.byte $0b, $a9, $01, $8d, $f1, $06, $a5, $ad, $49, $01, $85, $ad, $a5, $ad, $d0, $06 ; $8549
.byte $a5, $b1, $29, $03, $f0, $22, $a6, $47, $bd, $b2, $85, $85, $a1, $a9, $00, $85 ; $8559
.byte $a2, $a6, $47, $bd, $bc, $85, $85, $a0, $a5, $b7, $c9, $01, $d0, $07, $18, $a5 ; $8569
.byte $a1, $69, $50, $85, $a1, $20, $27, $8c, $a5, $c1, $f0, $2c, $a5, $ad, $f0, $06 ; $8579
.byte $a5, $b1, $29, $03, $f0, $22, $a6, $59, $bd, $c6, $85, $85, $a1, $a9, $00, $85 ; $8589
.byte $a2, $a6, $59, $bd, $cc, $85, $85, $a0, $a5, $b7, $c9, $01, $d0, $07, $18, $a5 ; $8599
.byte $a1, $69, $50, $85, $a1, $20, $27, $8c, $60, $53, $53, $53, $53, $53, $63, $63 ; $85A9
.byte $63, $63, $63, $34, $44, $54, $64, $74, $34, $44, $54, $64, $74, $53, $53, $53 ; $85B9
.byte $63, $63, $63, $9c, $ac, $bc, $9c, $ac, $bc ; $85C9

_data_85d2_indexed:
.byte $03, $04, $05, $ff, $06, $07, $08, $ff ; $85D2

_label_85da:
  lda z:_var_00ff                ; $85DA  A5 FF
  and #$FC                       ; $85DC  29 FC
  sta z:_var_00ff                ; $85DE  85 FF
  sta PPU_CTRL                   ; $85E0  8D 00 20
  lda #$00                       ; $85E3  A9 00
  sta z:_var_00fd                ; $85E5  85 FD
  sta PPU_SCROLL                 ; $85E7  8D 05 20
  sta z:_var_00fc                ; $85EA  85 FC
  sta PPU_SCROLL                 ; $85EC  8D 05 20
  rts                            ; $85EF  60

_label_85f0:
  jsr _func_aa52                 ; $85F0  20 52 AA
  jsr _func_aa78                 ; $85F3  20 78 AA
  lda #$03                       ; $85F6  A9 03
  jsr _func_acb7                 ; $85F8  20 B7 AC
  lda #$03                       ; $85FB  A9 03
  jsr _func_accb                 ; $85FD  20 CB AC
  jsr _func_aa98                 ; $8600  20 98 AA
  isc (_var_00ac_indexed),Y      ; $8603  F3 AC
  jsr _func_aa98                 ; $8605  20 98 AA
.byte $3c, $bf, $a9              ; $8608  3C BF A9  disambiguous instruction: nop a:$A9BF,X
  jsr a:_var_068d                ; $860B  20 8D 06
  jsr _func_83a9                 ; $860E  20 A9 83
  sta PPU_ADDR                   ; $8611  8D 06 20
  lda z:_var_00c1                ; $8614  A5 C1
  bne _label_863c                ; $8616  D0 24
  lda #$0A                       ; $8618  A9 0A
  sta PPU_DATA                   ; $861A  8D 07 20
  lda #$20                       ; $861D  A9 20
  sta PPU_ADDR                   ; $861F  8D 06 20
  lda #$B8                       ; $8622  A9 B8
  sta PPU_ADDR                   ; $8624  8D 06 20
  lda a:_var_0730_indexed        ; $8627  AD 30 07
  jsr _func_9712                 ; $862A  20 12 97
  lda a:$0731                    ; $862D  AD 31 07
  jsr _func_9712                 ; $8630  20 12 97
  lda a:$0732                    ; $8633  AD 32 07
  jsr _func_9712                 ; $8636  20 12 97
  jmp _label_8693                ; $8639  4C 93 86

_label_863c:
  lda #$0B                       ; $863C  A9 0B
  sta PPU_DATA                   ; $863E  8D 07 20
  lda #$20                       ; $8641  A9 20
  sta PPU_ADDR                   ; $8643  8D 06 20
  lda #$B8                       ; $8646  A9 B8
  sta PPU_ADDR                   ; $8648  8D 06 20
  lda a:$073C                    ; $864B  AD 3C 07
  jsr _func_9712                 ; $864E  20 12 97
  lda a:$073D                    ; $8651  AD 3D 07
  jsr _func_9712                 ; $8654  20 12 97
  lda a:$073E                    ; $8657  AD 3E 07
  jsr _func_9712                 ; $865A  20 12 97
  ldx #$00                       ; $865D  A2 00

_label_865f:
  lda a:_data_86b0_indexed,X     ; $865F  BD B0 86
  inx                            ; $8662  E8
  sta PPU_ADDR                   ; $8663  8D 06 20
  lda a:_data_86b0_indexed,X     ; $8666  BD B0 86
  inx                            ; $8669  E8
  sta PPU_ADDR                   ; $866A  8D 06 20

_label_866d:
  lda a:_data_86b0_indexed,X     ; $866D  BD B0 86
  inx                            ; $8670  E8
  cmp #$FE                       ; $8671  C9 FE
  beq _label_865f                ; $8673  F0 EA
  cmp #$FD                       ; $8675  C9 FD
  beq _label_867f                ; $8677  F0 06
  sta PPU_DATA                   ; $8679  8D 07 20
  jmp _label_866d                ; $867C  4C 6D 86

_label_867f:
  lda #$23                       ; $867F  A9 23
  sta PPU_ADDR                   ; $8681  8D 06 20
  lda #$3B                       ; $8684  A9 3B
  sta PPU_ADDR                   ; $8686  8D 06 20
  lda z:_var_0059                ; $8689  A5 59
  and #$0F                       ; $868B  29 0F
  sta PPU_DATA                   ; $868D  8D 07 20
  jmp _label_8693                ; $8690  4C 93 86

_label_8693:
  jsr _func_aa6b                 ; $8693  20 6B AA
  jsr _func_aa2f                 ; $8696  20 2F AA
  jsr _func_aa5f                 ; $8699  20 5F AA
  jsr _func_aa2f                 ; $869C  20 2F AA
  lda #$01                       ; $869F  A9 01
  sta z:_var_0068                ; $86A1  85 68
  sta z:_var_0088                ; $86A3  85 88
  lda z:_var_0067                ; $86A5  A5 67
  sta z:_var_0064                ; $86A7  85 64
  lda z:$87                      ; $86A9  A5 87
  sta z:$84                      ; $86AB  85 84
  inc z:_var_00a7                ; $86AD  E6 A7
  rts                            ; $86AF  60

_data_86b0_indexed:
.byte $22, $f7, $38, $39, $39, $39, $39, $39, $39, $3a, $fe, $23, $17, $3b, $11, $0e ; $86B0
.byte $12, $10, $11, $1d, $3c, $fe, $23, $37, $3b, $ff, $ff, $ff, $ff, $ff, $ff, $3c ; $86C0
.byte $fe, $23, $57, $3d, $3e, $3e, $3e, $3e, $3e, $3e, $3f, $fd ; $86D0

_label_86dc:
  lda #$EF                       ; $86DC  A9 EF
  ldx #$04                       ; $86DE  A2 04
  ldy #$04                       ; $86E0  A0 04
  jsr _func_ac6a                 ; $86E2  20 6A AC
  ldx #$0F                       ; $86E5  A2 0F
  lda #$00                       ; $86E7  A9 00

_label_86e9:
  sta a:_var_03ef_indexed,X      ; $86E9  9D EF 03
  dex                            ; $86EC  CA
  bne _label_86e9                ; $86ED  D0 FA
  lda #$05                       ; $86EF  A9 05
  sta z:_var_0060_indexed        ; $86F1  85 60
  sta z:_var_0080_indexed        ; $86F3  85 80
  lda #$00                       ; $86F5  A9 00
  sta z:$61                      ; $86F7  85 61
  sta z:$81                      ; $86F9  85 81
  sta z:_var_0069                ; $86FB  85 69
  sta z:_var_0089                ; $86FD  85 89
  sta z:_var_0065                ; $86FF  85 65
  sta z:_var_0085                ; $8701  85 85
  sta z:_var_00bb                ; $8703  85 BB
  sta z:_var_00bc                ; $8705  85 BC
  sta z:_var_0073                ; $8707  85 73
  sta z:_var_0074                ; $8709  85 74
  sta z:_var_0075                ; $870B  85 75
  sta z:$93                      ; $870D  85 93
  sta z:$94                      ; $870F  85 94
  sta z:$95                      ; $8711  85 95
  sta z:_var_0070                ; $8713  85 70
  sta z:_var_0071                ; $8715  85 71
  sta z:_var_0090                ; $8717  85 90
  sta z:_var_0091                ; $8719  85 91
  sta z:_var_00a4                ; $871B  85 A4
  sta z:_var_00d8_indexed        ; $871D  85 D8
  sta z:$D9                      ; $871F  85 D9
  sta z:$DA                      ; $8721  85 DA
  sta z:$DB                      ; $8723  85 DB
  sta z:_var_00ba                ; $8725  85 BA
  sta z:_var_00ce                ; $8727  85 CE
  sta z:_var_00cf                ; $8729  85 CF
  sta z:_var_00d3                ; $872B  85 D3
  sta z:_var_00d1_indexed        ; $872D  85 D1
  sta z:_var_0019                ; $872F  85 19
  lda #$DD                       ; $8731  A9 DD
  sta z:_var_00d2                ; $8733  85 D2
  lda #$03                       ; $8735  A9 03
  sta z:_var_00bd                ; $8737  85 BD
  lda #$A0                       ; $8739  A9 A0
  sta z:$6E                      ; $873B  85 6E
  sta z:$8E                      ; $873D  85 8E
  jsr _func_98eb                 ; $873F  20 EB 98
  sta z:$62                      ; $8742  85 62
  sta z:$82                      ; $8744  85 82
  jsr _func_9969                 ; $8746  20 69 99
  ldx #$17                       ; $8749  A2 17
  ldy #$02                       ; $874B  A0 02
  jsr _func_ab47                 ; $874D  20 47 AB
  jsr _func_98eb                 ; $8750  20 EB 98
  sta z:_var_00bf                ; $8753  85 BF
  sta z:_var_00a6                ; $8755  85 A6
  lda z:_var_00c1                ; $8757  A5 C1
  beq _label_8761                ; $8759  F0 06
  lda #$25                       ; $875B  A9 25
  sta z:_var_0070                ; $875D  85 70
  sta z:_var_0090                ; $875F  85 90

_label_8761:
  lda #$47                       ; $8761  A9 47
  sta z:_var_00a3                ; $8763  85 A3
  jsr _func_aa2f                 ; $8765  20 2F AA
  jsr _func_87dc                 ; $8768  20 DC 87
  ldx z:_var_00c2                ; $876B  A6 C2
  lda a:_data_85d2_indexed,X     ; $876D  BD D2 85
  jsr _func_9e07                 ; $8770  20 07 9E
  inc z:_var_00a7                ; $8773  E6 A7
  rts                            ; $8775  60

_func_8776:
  lda #$01                       ; $8776  A9 01
  sta z:_var_00b7                ; $8778  85 B7
  lda #$04                       ; $877A  A9 04
  sta z:_var_00b9                ; $877C  85 B9
  lda z:_var_00f5_indexed        ; $877E  A5 F5
  sta z:_var_00b5                ; $8780  85 B5
  lda z:_var_00f7_indexed        ; $8782  A5 F7
  sta z:_var_00b6                ; $8784  85 B6
  ldx #$1F                       ; $8786  A2 1F

_label_8788:
  lda z:_var_0060_indexed,X      ; $8788  B5 60
  sta z:_var_0040_indexed,X      ; $878A  95 40
  dex                            ; $878C  CA
  cpx #$FF                       ; $878D  E0 FF
  bne _label_8788                ; $878F  D0 F7
  rts                            ; $8791  60

_func_8792:
  lda #$02                       ; $8792  A9 02
  sta z:_var_00b7                ; $8794  85 B7
  lda #$05                       ; $8796  A9 05
  sta z:_var_00b9                ; $8798  85 B9
  lda z:_var_00f6                ; $879A  A5 F6
  sta z:_var_00b5                ; $879C  85 B5
  lda z:$F8                      ; $879E  A5 F8
  sta z:_var_00b6                ; $87A0  85 B6
  ldx #$1F                       ; $87A2  A2 1F

_label_87a4:
  lda z:_var_0080_indexed,X      ; $87A4  B5 80
  sta z:_var_0040_indexed,X      ; $87A6  95 40
  dex                            ; $87A8  CA
  cpx #$FF                       ; $87A9  E0 FF
  bne _label_87a4                ; $87AB  D0 F7
  rts                            ; $87AD  60

_func_87ae:
  ldx #$1F                       ; $87AE  A2 1F

_label_87b0:
  lda z:_var_0040_indexed,X      ; $87B0  B5 40
  sta z:_var_0060_indexed,X      ; $87B2  95 60
  dex                            ; $87B4  CA
  cpx #$FF                       ; $87B5  E0 FF
  bne _label_87b0                ; $87B7  D0 F7
  lda z:_var_00be                ; $87B9  A5 BE
  cmp #$01                       ; $87BB  C9 01
  beq _label_87c7                ; $87BD  F0 08
  ldx z:_var_00bb                ; $87BF  A6 BB
  lda z:_var_00bc                ; $87C1  A5 BC
  sta z:_var_00bb                ; $87C3  85 BB
  stx z:_var_00bc                ; $87C5  86 BC

_label_87c7:
  rts                            ; $87C7  60

_func_87c8:
  ldx #$1F                       ; $87C8  A2 1F

_label_87ca:
  lda z:_var_0040_indexed,X      ; $87CA  B5 40
  sta z:_var_0080_indexed,X      ; $87CC  95 80
  dex                            ; $87CE  CA
  cpx #$FF                       ; $87CF  E0 FF
  bne _label_87ca                ; $87D1  D0 F7
  ldx z:_var_00bb                ; $87D3  A6 BB
  lda z:_var_00bc                ; $87D5  A5 BC
  sta z:_var_00bb                ; $87D7  85 BB
  stx z:_var_00bc                ; $87D9  86 BC
  rts                            ; $87DB  60

_func_87dc:
  lda z:_var_00c1                ; $87DC  A5 C1
  bne _label_87e3                ; $87DE  D0 03
  jmp _label_8875                ; $87E0  4C 75 88

_label_87e3:
  lda #$0C                       ; $87E3  A9 0C
  sta z:_var_00a8_indexed        ; $87E5  85 A8

_label_87e7:
  lda z:_var_00a8_indexed        ; $87E7  A5 A8
  beq _label_884a                ; $87E9  F0 5F
  lda #$14                       ; $87EB  A9 14
  sec                            ; $87ED  38
  sbc z:_var_00a8_indexed        ; $87EE  E5 A8
  sta z:_var_00a9                ; $87F0  85 A9
  lda #$00                       ; $87F2  A9 00
  sta z:_var_0069                ; $87F4  85 69
  sta z:_var_0089                ; $87F6  85 89
  lda #$09                       ; $87F8  A9 09
  sta z:_var_00aa                ; $87FA  85 AA

_label_87fc:
  ldx #$17                       ; $87FC  A2 17
  ldy #$02                       ; $87FE  A0 02
  jsr _func_ab47                 ; $8800  20 47 AB
  lda z:_var_0017                ; $8803  A5 17
  and #$07                       ; $8805  29 07
  tay                            ; $8807  A8
  lda a:_data_887c_indexed,Y     ; $8808  B9 7C 88
  sta z:_var_00ab                ; $880B  85 AB
  ldx z:_var_00a9                ; $880D  A6 A9
  lda a:_data_96d6_indexed,X     ; $880F  BD D6 96
  clc                            ; $8812  18
  adc z:_var_00aa                ; $8813  65 AA
  tay                            ; $8815  A8
  lda z:_var_00ab                ; $8816  A5 AB
  sta a:_var_0400_indexed,Y      ; $8818  99 00 04
  lda z:_var_00aa                ; $881B  A5 AA
  beq _label_8824                ; $881D  F0 05
  dec z:_var_00aa                ; $881F  C6 AA
  jmp _label_87fc                ; $8821  4C FC 87

_label_8824:
  ldx #$17                       ; $8824  A2 17
  ldy #$02                       ; $8826  A0 02
  jsr _func_ab47                 ; $8828  20 47 AB
  lda z:_var_0017                ; $882B  A5 17
  and #$0F                       ; $882D  29 0F
  cmp #$0A                       ; $882F  C9 0A
  bpl _label_8824                ; $8831  10 F1
  sta z:_var_00ac_indexed        ; $8833  85 AC
  ldx z:_var_00a9                ; $8835  A6 A9
  lda a:_data_96d6_indexed,X     ; $8837  BD D6 96
  clc                            ; $883A  18
  adc z:_var_00ac_indexed        ; $883B  65 AC
  tay                            ; $883D  A8
  lda #$EF                       ; $883E  A9 EF
  sta a:_var_0400_indexed,Y      ; $8840  99 00 04
  jsr _func_aa2f                 ; $8843  20 2F AA
  dec z:_var_00a8_indexed        ; $8846  C6 A8
  bne _label_87e7                ; $8848  D0 9D

_label_884a:
  ldx #$C8                       ; $884A  A2 C8

_label_884c:
  lda a:_var_0400_indexed,X      ; $884C  BD 00 04
  sta a:_var_0500_indexed,X      ; $884F  9D 00 05
  dex                            ; $8852  CA
  bne _label_884c                ; $8853  D0 F7
  ldx z:_var_0079                ; $8855  A6 79
  lda a:_data_8876_indexed,X     ; $8857  BD 76 88
  tay                            ; $885A  A8
  lda #$EF                       ; $885B  A9 EF

_label_885d:
  sta a:_var_0400_indexed,Y      ; $885D  99 00 04
  dey                            ; $8860  88
  cpy #$FF                       ; $8861  C0 FF
  bne _label_885d                ; $8863  D0 F8
  ldx z:$99                      ; $8865  A6 99
  lda a:_data_8876_indexed,X     ; $8867  BD 76 88
  tay                            ; $886A  A8
  lda #$EF                       ; $886B  A9 EF

_label_886d:
  sta a:_var_0500_indexed,Y      ; $886D  99 00 05
  dey                            ; $8870  88
  cpy #$FF                       ; $8871  C0 FF
  bne _label_886d                ; $8873  D0 F8

_label_8875:
  rts                            ; $8875  60

_data_8876_indexed:
.byte $c8, $aa, $96, $78, $64, $50 ; $8876

_data_887c_indexed:
.byte $ef, $7b, $ef, $7c, $7d, $7d, $ef, $ef ; $887C

_label_8884:
  lda #$03                       ; $8884  A9 03
  jsr _func_acb7                 ; $8886  20 B7 AC
  lda #$03                       ; $8889  A9 03
  jsr _func_accb                 ; $888B  20 CB AC
  lda #$00                       ; $888E  A9 00
  sta z:_var_00b3                ; $8890  85 B3
  inc z:_var_0065                ; $8892  E6 65
  inc z:_var_0085                ; $8894  E6 85
  lda z:_var_00a4                ; $8896  A5 A4
  beq _label_889c                ; $8898  F0 02
  inc z:_var_00a4                ; $889A  E6 A4

_label_889c:
  lda z:_var_00f5_indexed        ; $889C  A5 F5
  and #$20                       ; $889E  29 20
  beq _label_88a8                ; $88A0  F0 06
  lda z:_var_00df                ; $88A2  A5 DF
  eor #$01                       ; $88A4  49 01
  sta z:_var_00df                ; $88A6  85 DF

_label_88a8:
  inc z:_var_00a7                ; $88A8  E6 A7
  rts                            ; $88AA  60

_func_88ab:
  lda z:_var_0042                ; $88AB  A5 42
  sta z:_var_00ae                ; $88AD  85 AE
  clc                            ; $88AF  18
  lda z:_var_0042                ; $88B0  A5 42
  asl a                          ; $88B2  0A
  tax                            ; $88B3  AA
  lda z:_var_00b5                ; $88B4  A5 B5
  and #$80                       ; $88B6  29 80
  cmp #$80                       ; $88B8  C9 80
  bne _label_88cf                ; $88BA  D0 13
  inx                            ; $88BC  E8
  lda a:_data_88ee_indexed,X     ; $88BD  BD EE 88
  sta z:_var_0042                ; $88C0  85 42
  jsr _func_948b                 ; $88C2  20 8B 94
  bne _label_88e9                ; $88C5  D0 22
  lda #$05                       ; $88C7  A9 05
  sta a:_var_06f1                ; $88C9  8D F1 06
  jmp _label_88ed                ; $88CC  4C ED 88

_label_88cf:
  lda z:_var_00b5                ; $88CF  A5 B5
  and #$40                       ; $88D1  29 40
  cmp #$40                       ; $88D3  C9 40
  bne _label_88ed                ; $88D5  D0 16
  lda a:_data_88ee_indexed,X     ; $88D7  BD EE 88
  sta z:_var_0042                ; $88DA  85 42
  jsr _func_948b                 ; $88DC  20 8B 94
  bne _label_88e9                ; $88DF  D0 08
  lda #$05                       ; $88E1  A9 05
  sta a:_var_06f1                ; $88E3  8D F1 06
  jmp _label_88ed                ; $88E6  4C ED 88

_label_88e9:
  lda z:_var_00ae                ; $88E9  A5 AE
  sta z:_var_0042                ; $88EB  85 42

_label_88ed:
  rts                            ; $88ED  60

_data_88ee_indexed:
.byte $03, $01, $00, $02, $01, $03, $02, $00, $07, $05, $04, $06, $05, $07, $06, $04 ; $88EE
.byte $09, $09, $08, $08, $0a, $0a, $0c, $0c, $0b, $0b, $10, $0e, $0d, $0f, $0e, $10 ; $88FE
.byte $0f, $0d, $12, $12, $11, $11 ; $890E

;                     ===T-BLOCK===
; i:            0,  1,   2,   3,   4,   5,   6,   7,
; curr_piece: $00, $00, $01, $01, $02, $02, $03, $03
; rotation:   CCW  CW   CCW  CW   CCW  CW   CCW  CW
; rt[i]:      $03, $01, $00, $02, $01, $03, $02, $00
;                     ===J-BLOCK===
; i:            8,  9,   10,  11,  12,  13,  14,  15,
; curr_piece: $04, $04, $05, $05, $06, $06, $07, $07
; rotation:   CCW  CW   CCW  CW   CCW  CW   CCW  CW
; rt[i]:      $07, $05, $04, $06, $05, $07, $06, $04
;                     ===Z-BLOCK===
; i:           16,  17,  18,  19,  20,  21,  22,  23,
; curr_piece: $08, $08, $09, $09, $0A, $0A, $0B, $0B
; rotation:   CCW  CW   CCW  CW   CCW  CW   CCW  CW
; rt[i]:      $0B, $09, $08, $0A, $09, $0B, $0A, $08
;                     ===O-BLOCK===
; i:           24,  25,
; curr_piece: $0C, $0C
; rotation:   CCW  CW
; rt[i]:      $0C, $0C
;                     ===S-BLOCK===
; i:           26,  27,  28,  29,  30,  31,  32,  33,
; curr_piece: $0D, $0D, $0E, $0E, $0F, $0F, $10, $10
; rotation:   CCW  CW   CCW  CW   CCW  CW   CCW  CW
; rt[i]:      $10, $0E, $0D, $0F, $0E, $10, $0F, $0D
;                     ===L-BLOCK===
; i:           34,  35,  36,  37,  38,  39,  40,  41,
; curr_piece: $11, $11, $12, $12, $13, $13, $14, $14
; rotation:   CCW  CW   CCW  CW   CCW  CW   CCW  CW
; rt[i]:      $14, $12, $11, $13, $12, $14, $13, $11
;                     ===I-BLOCK===
; i:           42,  43,  44,  45,  46,  47,  48,  49,
; curr_piece: $15, $15, $16, $16, $17, $17, $18, $18
; rotation:   CCW  CW   CCW  CW   CCW  CW   CCW  CW
; rt[i]:      $18, $16, $15, $17, $16, $18, $17, $15

; _data_88ee_indexed:
; .byte $03, $01, $00, $02, $01, $03, $02, $00, $07, $05, $04, $06, $05, $07, $06, $04,
; .byte $08, $08, $09, $09, $0A, $0A, $0B, $0B, $0C, $0C, $10, $0E, $0D, $0F, $0E, $10, 
; .byte $0F, $0D, $14, $12, $11, $13, $12, $14, $13, $11, $18, $16, $15, $17, $16, $18, 
; .byte $17, $15

_func_8914:
  lda z:_var_004e                ; $8914  A5 4E
  bpl _label_8922                ; $8916  10 0A
  lda z:_var_00b5                ; $8918  A5 B5
  and #$04                       ; $891A  29 04
  beq _label_8989                ; $891C  F0 6B
  lda #$00                       ; $891E  A9 00
  sta z:_var_004e                ; $8920  85 4E

_label_8922:
  bne _label_8939                ; $8922  D0 15
  lda z:_var_00b6                ; $8924  A5 B6
  and #$03                       ; $8926  29 03
  bne _label_8973                ; $8928  D0 49
  lda z:_var_00b5                ; $892A  A5 B5
  and #$0F                       ; $892C  29 0F
  cmp #$04                       ; $892E  C9 04
  bne _label_8973                ; $8930  D0 41
  lda #$01                       ; $8932  A9 01
  sta z:_var_004e                ; $8934  85 4E
  jmp _label_8973                ; $8936  4C 73 89

_label_8939:
  lda z:_var_00b6                ; $8939  A5 B6
  and #$0F                       ; $893B  29 0F
  cmp #$04                       ; $893D  C9 04
  beq _label_894a                ; $893F  F0 09
  lda #$00                       ; $8941  A9 00
  sta z:_var_004e                ; $8943  85 4E
  sta z:_var_004f                ; $8945  85 4F
  jmp _label_8973                ; $8947  4C 73 89

_label_894a:
  inc z:_var_004e                ; $894A  E6 4E
  lda z:_var_004e                ; $894C  A5 4E
  cmp #$03                       ; $894E  C9 03
  bcc _label_8973                ; $8950  90 21
  lda #$01                       ; $8952  A9 01
  sta z:_var_004e                ; $8954  85 4E
  inc z:_var_004f                ; $8956  E6 4F

_label_8958:
  lda #$00                       ; $8958  A9 00
  sta z:_var_0045                ; $895A  85 45
  lda z:_var_0041                ; $895C  A5 41
  sta z:_var_00ae                ; $895E  85 AE
  inc z:_var_0041                ; $8960  E6 41
  jsr _func_948b                 ; $8962  20 8B 94
  beq _label_8972                ; $8965  F0 0B
  lda z:_var_00ae                ; $8967  A5 AE
  sta z:_var_0041                ; $8969  85 41
  lda #$02                       ; $896B  A9 02
  sta z:_var_0048                ; $896D  85 48
  jsr _func_9caf                 ; $896F  20 AF 9C

_label_8972:
  rts                            ; $8972  60

_label_8973:
  lda #$01                       ; $8973  A9 01
  ldx z:_var_0044                ; $8975  A6 44
  cpx #$1D                       ; $8977  E0 1D
  bcs _label_897e                ; $8979  B0 03
  lda a:_data_898e_indexed,X     ; $897B  BD 8E 89

_label_897e:
  sta z:_var_00af                ; $897E  85 AF
  lda z:_var_0045                ; $8980  A5 45
  cmp z:_var_00af                ; $8982  C5 AF
  bpl _label_8958                ; $8984  10 D2
  jmp _label_8972                ; $8986  4C 72 89

_label_8989:
  inc z:_var_004e                ; $8989  E6 4E
  jmp _label_8972                ; $898B  4C 72 89

_data_898e_indexed:
.byte $30, $2b, $26, $21, $1c, $17, $12, $0d, $08, $06, $05, $05, $05, $04, $04, $04 ; $898E
.byte $03, $03, $03, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01 ; $899E

_func_89ae:
  lda z:_var_0040_indexed        ; $89AE  A5 40
  sta z:_var_00ae                ; $89B0  85 AE
  lda z:_var_00b6                ; $89B2  A5 B6
  and #$04                       ; $89B4  29 04
  bne _label_8a09                ; $89B6  D0 51
  lda z:_var_00b5                ; $89B8  A5 B5
  and #$03                       ; $89BA  29 03
  bne _label_89d3                ; $89BC  D0 15
  lda z:_var_00b6                ; $89BE  A5 B6
  and #$03                       ; $89C0  29 03
  beq _label_8a09                ; $89C2  F0 45
  inc z:_var_0046                ; $89C4  E6 46
  lda z:_var_0046                ; $89C6  A5 46
  cmp #$10                       ; $89C8  C9 10
  bmi _label_8a09                ; $89CA  30 3D
  lda #$0A                       ; $89CC  A9 0A
  sta z:_var_0046                ; $89CE  85 46
  jmp _label_89d7                ; $89D0  4C D7 89

_label_89d3:
  lda #$00                       ; $89D3  A9 00
  sta z:_var_0046                ; $89D5  85 46

_label_89d7:
  lda z:_var_00b6                ; $89D7  A5 B6
  and #$01                       ; $89D9  29 01
  beq _label_89ec                ; $89DB  F0 0F
  inc z:_var_0040_indexed        ; $89DD  E6 40
  jsr _func_948b                 ; $89DF  20 8B 94
  bne _label_8a01                ; $89E2  D0 1D
  lda #$03                       ; $89E4  A9 03
  sta a:_var_06f1                ; $89E6  8D F1 06
  jmp _label_8a09                ; $89E9  4C 09 8A

_label_89ec:
  lda z:_var_00b6                ; $89EC  A5 B6
  and #$02                       ; $89EE  29 02
  beq _label_8a09                ; $89F0  F0 17
  dec z:_var_0040_indexed        ; $89F2  C6 40
  jsr _func_948b                 ; $89F4  20 8B 94
  bne _label_8a01                ; $89F7  D0 08
  lda #$03                       ; $89F9  A9 03
  sta a:_var_06f1                ; $89FB  8D F1 06
  jmp _label_8a09                ; $89FE  4C 09 8A

_label_8a01:
  lda z:_var_00ae                ; $8A01  A5 AE
  sta z:_var_0040_indexed        ; $8A03  85 40
  lda #$10                       ; $8A05  A9 10
  sta z:_var_0046                ; $8A07  85 46

_label_8a09:
  rts                            ; $8A09  60

_func_8a0a:
  lda z:_var_0040_indexed        ; $8A0A  A5 40
  asl a                          ; $8A0C  0A
  asl a                          ; $8A0D  0A
  asl a                          ; $8A0E  0A
  adc #$60                       ; $8A0F  69 60
  sta z:_var_00aa                ; $8A11  85 AA
  lda z:_var_00be                ; $8A13  A5 BE
  cmp #$01                       ; $8A15  C9 01
  beq _label_8a2c                ; $8A17  F0 13
  lda z:_var_00aa                ; $8A19  A5 AA
  sec                            ; $8A1B  38
  sbc #$40                       ; $8A1C  E9 40
  sta z:_var_00aa                ; $8A1E  85 AA
  lda z:_var_00b7                ; $8A20  A5 B7
  cmp #$01                       ; $8A22  C9 01
  beq _label_8a2c                ; $8A24  F0 06
  lda z:_var_00aa                ; $8A26  A5 AA
  adc #$6F                       ; $8A28  69 6F
  sta z:_var_00aa                ; $8A2A  85 AA

_label_8a2c:
  clc                            ; $8A2C  18
  lda z:_var_0041                ; $8A2D  A5 41
  rol a                          ; $8A2F  2A
  rol a                          ; $8A30  2A
  rol a                          ; $8A31  2A
  adc #$2F                       ; $8A32  69 2F
  sta z:_var_00ab                ; $8A34  85 AB
  lda z:_var_0042                ; $8A36  A5 42
  sta z:_var_00ac_indexed        ; $8A38  85 AC
  clc                            ; $8A3A  18
  lda z:_var_00ac_indexed        ; $8A3B  A5 AC
  rol a                          ; $8A3D  2A
  rol a                          ; $8A3E  2A
  sta z:_var_00a8_indexed        ; $8A3F  85 A8
  rol a                          ; $8A41  2A
  adc z:_var_00a8_indexed        ; $8A42  65 A8
  tax                            ; $8A44  AA
  ldy z:_var_00b3                ; $8A45  A4 B3
  lda #$04                       ; $8A47  A9 04
  sta z:_var_00a9                ; $8A49  85 A9

_label_8a4b:
  lda a:_data_8a9c_indexed,X     ; $8A4B  BD 9C 8A
  asl a                          ; $8A4E  0A
  asl a                          ; $8A4F  0A
  asl a                          ; $8A50  0A
  clc                            ; $8A51  18
  adc z:_var_00ab                ; $8A52  65 AB
  sta a:_var_0200_indexed,Y      ; $8A54  99 00 02
  sta z:_var_00ae                ; $8A57  85 AE
  inc z:_var_00b3                ; $8A59  E6 B3
  iny                            ; $8A5B  C8
  inx                            ; $8A5C  E8
  lda a:_data_8a9c_indexed,X     ; $8A5D  BD 9C 8A
  sta a:_var_0200_indexed,Y      ; $8A60  99 00 02
  inc z:_var_00b3                ; $8A63  E6 B3
  iny                            ; $8A65  C8
  inx                            ; $8A66  E8
  lda #$02                       ; $8A67  A9 02
  sta a:_var_0200_indexed,Y      ; $8A69  99 00 02
  lda z:_var_00ae                ; $8A6C  A5 AE
  cmp #$2F                       ; $8A6E  C9 2F
  bcs _label_8a84                ; $8A70  B0 12
  inc z:_var_00b3                ; $8A72  E6 B3
  dey                            ; $8A74  88
  lda #$FF                       ; $8A75  A9 FF
  sta a:_var_0200_indexed,Y      ; $8A77  99 00 02
  iny                            ; $8A7A  C8
  iny                            ; $8A7B  C8
  lda #$00                       ; $8A7C  A9 00
  sta a:_var_0200_indexed,Y      ; $8A7E  99 00 02
  jmp _label_8a93                ; $8A81  4C 93 8A

_label_8a84:
  inc z:_var_00b3                ; $8A84  E6 B3
  iny                            ; $8A86  C8
  lda a:_data_8a9c_indexed,X     ; $8A87  BD 9C 8A
  asl a                          ; $8A8A  0A
  asl a                          ; $8A8B  0A
  asl a                          ; $8A8C  0A
  clc                            ; $8A8D  18
  adc z:_var_00aa                ; $8A8E  65 AA
  sta a:_var_0200_indexed,Y      ; $8A90  99 00 02

_label_8a93:
  inc z:_var_00b3                ; $8A93  E6 B3
  iny                            ; $8A95  C8
  inx                            ; $8A96  E8
  dec z:_var_00a9                ; $8A97  C6 A9
  bne _label_8a4b                ; $8A99  D0 B0
  rts                            ; $8A9B  60

_data_8a9c_indexed:
.byte $00, $7b, $ff, $00, $7b, $00, $00, $7b, $01, $ff, $7b, $00, $ff, $7b, $00, $00 ; $8A9C
.byte $7b, $00, $00, $7b, $01, $01, $7b, $00, $00, $7b, $ff, $00, $7b, $00, $00, $7b ; $8AAC
.byte $01, $01, $7b, $00, $ff, $7b, $00, $00, $7b, $ff, $00, $7b, $00, $01, $7b, $00 ; $8ABC
.byte $ff, $7d, $00, $00, $7d, $00, $01, $7d, $ff, $01, $7d, $00, $ff, $7d, $ff, $00 ; $8ACC
.byte $7d, $ff, $00, $7d, $00, $00, $7d, $01, $ff, $7d, $00, $ff, $7d, $01, $00, $7d ; $8ADC
.byte $00, $01, $7d, $00, $00, $7d, $ff, $00, $7d, $00, $00, $7d, $01, $01, $7d, $01 ; $8AEC
.byte $00, $7c, $ff, $00, $7c, $00, $01, $7c, $00, $01, $7c, $01, $ff, $7c, $01, $00 ; $8AFC
.byte $7c, $00, $00, $7c, $01, $01, $7c, $00, $00, $7b, $ff, $00, $7b, $00, $01, $7b ; $8B0C
.byte $ff, $01, $7b, $00, $00, $7d, $00, $00, $7d, $01, $01, $7d, $ff, $01, $7d, $00 ; $8B1C
.byte $ff, $7d, $00, $00, $7d, $00, $00, $7d, $01, $01, $7d, $01, $ff, $7c, $00, $00 ; $8B2C
.byte $7c, $00, $01, $7c, $00, $01, $7c, $01, $00, $7c, $ff, $00, $7c, $00, $00, $7c ; $8B3C
.byte $01, $01, $7c, $ff, $ff, $7c, $ff, $ff, $7c, $00, $00, $7c, $00, $01, $7c, $00 ; $8B4C
.byte $ff, $7c, $01, $00, $7c, $ff, $00, $7c, $00, $00, $7c, $01, $fe, $7b, $00, $ff ; $8B5C
.byte $7b, $00, $00, $7b, $00, $01, $7b, $00, $00, $7b, $fe, $00, $7b, $ff, $00, $7b ; $8B6C
.byte $00, $00, $7b, $01, $00, $ff, $00, $00, $ff, $00, $00, $ff, $00, $00, $ff, $00 ; $8B7C
.byte $a5, $a2, $0a, $0a, $85, $a8, $0a, $18, $65, $a8, $a8, $a6, $b3, $a9, $04, $85 ; $8B8C
.byte $a9, $b9, $9c, $8a, $18, $0a, $0a, $0a, $65, $a1, $9d, $00, $02, $e8, $c8, $b9 ; $8B9C
.byte $9c, $8a, $9d, $00, $02, $e8, $c8, $a9, $02, $9d, $00, $02, $e8, $b9, $9c, $8a ; $8BAC
.byte $18, $0a, $0a, $0a, $65, $a0, $9d, $00, $02, $e8, $c8, $c6, $a9, $d0, $d2, $86 ; $8BBC
.byte $b3, $60                   ; $8BCC

_func_8bce:
  lda z:_var_00df                ; $8BCE  A5 DF
  bne _label_8be4                ; $8BD0  D0 12
  lda #$C8                       ; $8BD2  A9 C8
  sta z:_var_00a0                ; $8BD4  85 A0
  lda #$77                       ; $8BD6  A9 77
  sta z:_var_00a1                ; $8BD8  85 A1
  ldx z:_var_00bf                ; $8BDA  A6 BF
  lda a:_data_8be5_indexed,X     ; $8BDC  BD E5 8B
  sta z:_var_00a2                ; $8BDF  85 A2
  jmp _func_8c27                 ; $8BE1  4C 27 8C

_label_8be4:
  rts                            ; $8BE4  60

_data_8be5_indexed:
.byte $00, $00, $06, $00, $00, $00, $00, $09, $08, $00, $0b, $07, $00, $00, $0a, $00 ; $8BE5
.byte $00, $00, $0c, $00, $00, $0f, $00, $00, $00, $00, $12, $11, $00, $14, $10, $00 ; $8BF5
.byte $00, $13, $00, $00, $00, $15, $00, $ff, $fe, $fd, $fc, $fd, $fe, $ff, $00, $01 ; $8C05
.byte $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11 ; $8C15
.byte $12, $13                   ; $8C25

_func_8c27:
  clc                            ; $8C27  18
  lda z:_var_00a2                ; $8C28  A5 A2
  rol a                          ; $8C2A  2A
  tax                            ; $8C2B  AA
  lda a:_data_8c6c_indexed,X     ; $8C2C  BD 6C 8C
  sta z:_var_00a8_indexed        ; $8C2F  85 A8
  inx                            ; $8C31  E8
  lda a:_data_8c6c_indexed,X     ; $8C32  BD 6C 8C
  sta z:_var_00a9                ; $8C35  85 A9
  ldx z:_var_00b3                ; $8C37  A6 B3
  ldy #$00                       ; $8C39  A0 00

_label_8c3b:
  lda (_var_00a8_indexed),Y      ; $8C3B  B1 A8
  cmp #$FF                       ; $8C3D  C9 FF
  beq _label_8c6b                ; $8C3F  F0 2A
  clc                            ; $8C41  18
  adc z:_var_00a1                ; $8C42  65 A1
  sta a:_var_0200_indexed,X      ; $8C44  9D 00 02
  inx                            ; $8C47  E8
  iny                            ; $8C48  C8
  lda (_var_00a8_indexed),Y      ; $8C49  B1 A8
  sta a:_var_0200_indexed,X      ; $8C4B  9D 00 02
  inx                            ; $8C4E  E8
  iny                            ; $8C4F  C8
  lda (_var_00a8_indexed),Y      ; $8C50  B1 A8
  sta a:_var_0200_indexed,X      ; $8C52  9D 00 02
  inx                            ; $8C55  E8
  iny                            ; $8C56  C8
  lda (_var_00a8_indexed),Y      ; $8C57  B1 A8
  clc                            ; $8C59  18
  adc z:_var_00a0                ; $8C5A  65 A0
  sta a:_var_0200_indexed,X      ; $8C5C  9D 00 02
  inx                            ; $8C5F  E8
  iny                            ; $8C60  C8
  lda #$04                       ; $8C61  A9 04
  clc                            ; $8C63  18
  adc z:_var_00b3                ; $8C64  65 B3
  sta z:_var_00b3                ; $8C66  85 B3
  jmp _label_8c3b                ; $8C68  4C 3B 8C

_label_8c6b:
  rts                            ; $8C6B  60

_data_8c6c_indexed:
.byte $20, $8d, $31, $8d, $3a, $8d, $3f, $8d, $54, $8d, $54, $8d, $69, $8d, $7a, $8d ; $8C6C
.byte $8b, $8d, $9c, $8d, $ad, $8d, $be, $8d, $cf, $8d, $e0, $8d, $e0, $8d, $e5, $8d ; $8C7C
.byte $f6, $8d, $07, $8e, $18, $8e, $29, $8e, $3a, $8e, $4b, $8e, $5c, $8e, $6d, $8e ; $8C8C
.byte $7a, $8e, $83, $8e, $8c, $8e, $a5, $8e, $be, $8e, $d7, $8e, $f8, $8e, $19, $8f ; $8C9C
.byte $2e, $8f, $43, $8f, $4c, $8f, $55, $8f, $5e, $8f, $7f, $8f, $98, $8f, $a1, $8f ; $8CAC
.byte $c6, $8f, $df, $8f, $04, $90, $29, $90, $29, $90, $2e, $90, $33, $90, $44, $90 ; $8CBC
.byte $55, $90, $66, $90, $77, $90, $88, $90, $99, $90, $b2, $90, $cb, $90, $e4, $90 ; $8CCC
.byte $fd, $90, $26, $91, $4f, $91, $78, $91, $9d, $91, $b2, $91, $c7, $91, $cc, $91 ; $8CDC
.byte $d1, $91, $d6, $91, $df, $91, $e4, $91, $e9, $91, $0a, $92, $13, $92, $1c, $92 ; $8CEC
.byte $75, $92, $7e, $92, $8f, $92, $68, $93, $9d, $93, $d2, $93, $e7, $93, $fc, $93 ; $8CFC
.byte $11, $94, $22, $94, $27, $94, $30, $94, $39, $94, $62, $94, $8b, $94, $8b, $94 ; $8D0C
.byte $8b, $94, $8b, $94, $00, $fc, $20, $00, $00, $fc, $20, $08, $08, $fc, $20, $00 ; $8D1C
.byte $08, $fc, $20, $08, $ff, $00, $27, $00, $00, $00, $27, $40, $3a, $ff, $00, $ff ; $8D2C
.byte $00, $00, $ff, $00, $19, $02, $00, $00, $0a, $02, $08, $00, $1e, $02, $10, $00 ; $8D3C
.byte $1c, $02, $18, $00, $0e, $02, $20, $ff, $00, $19, $00, $00, $00, $0a, $00, $08 ; $8D4C
.byte $00, $1e, $00, $10, $00, $1c, $00, $18, $00, $0e, $00, $20, $ff, $00, $7b, $02 ; $8D5C
.byte $fc, $00, $7b, $02, $04, $00, $7b, $02, $0c, $08, $7b, $02, $04, $ff, $00, $7d ; $8D6C
.byte $02, $04, $00, $7d, $02, $0c, $08, $7d, $02, $fc, $08, $7d, $02, $04, $ff, $00 ; $8D7C
.byte $7c, $02, $fc, $00, $7c, $02, $04, $08, $7c, $02, $04, $08, $7c, $02, $0c, $ff ; $8D8C
.byte $00, $7d, $02, $fc, $00, $7d, $02, $04, $00, $7d, $02, $0c, $08, $7d, $02, $0c ; $8D9C
.byte $ff, $00, $7c, $02, $fc, $00, $7c, $02, $04, $00, $7c, $02, $0c, $08, $7c, $02 ; $8DAC
.byte $fc, $ff, $00, $7b, $02, $00, $00, $7b, $02, $08, $08, $7b, $02, $00, $08, $7b ; $8DBC
.byte $02, $08, $ff, $04, $7b, $02, $f8, $04, $7b, $02, $00, $04, $7b, $02, $08, $04 ; $8DCC
.byte $7b, $02, $10, $ff, $00, $fc, $21, $00, $ff, $02, $7b, $02, $fc, $02, $7b, $02 ; $8DDC
.byte $04, $02, $7b, $02, $0c, $0a, $7b, $02, $04, $ff, $00, $7d, $02, $06, $00, $7d ; $8DEC
.byte $02, $0e, $08, $7d, $02, $fe, $08, $7d, $02, $06, $ff, $00, $7c, $02, $fa, $00 ; $8DFC
.byte $7c, $02, $02, $08, $7c, $02, $02, $08, $7c, $02, $0a, $ff, $08, $7d, $02, $00 ; $8E0C
.byte $08, $7d, $02, $08, $08, $7d, $02, $10, $10, $7d, $02, $10, $ff, $08, $7c, $02 ; $8E1C
.byte $f8, $08, $7c, $02, $00, $08, $7c, $02, $08, $10, $7c, $02, $f8, $ff, $00, $7b ; $8E2C
.byte $02, $00, $00, $7b, $02, $08, $08, $7b, $02, $00, $08, $7b, $02, $08, $ff, $08 ; $8E3C
.byte $7b, $02, $f8, $08, $7b, $02, $00, $08, $7b, $02, $08, $08, $7b, $02, $10, $ff ; $8E4C
.byte $f0, $95, $01, $10, $f8, $a3, $01, $00, $f8, $a4, $01, $08, $f8, $a5, $01, $10 ; $8E5C
.byte $ff, $f8, $83, $01, $00, $f8, $84, $01, $08, $f8, $85, $01, $10, $ff, $f0, $90 ; $8E6C
.byte $00, $00, $f8, $a0, $00, $00, $ff, $f0, $c4, $00, $00, $f8, $d4, $00, $00, $ff ; $8E7C
.byte $e8, $28, $00, $08, $e8, $2a, $00, $10, $f0, $c8, $03, $10, $f8, $d6, $03, $00 ; $8E8C
.byte $f8, $d7, $03, $08, $f8, $d8, $03, $10, $ff, $e8, $28, $00, $08, $e8, $2a, $00 ; $8E9C
.byte $10, $f0, $b9, $03, $10, $f8, $f6, $03, $00, $f8, $f7, $03, $08, $f8, $f8, $03 ; $8EAC
.byte $10, $ff, $e8, $c9, $02, $00, $e8, $cb, $02, $10, $f0, $d9, $02, $00, $f0, $db ; $8EBC
.byte $02, $10, $f8, $e9, $02, $00, $f8, $eb, $02, $10, $ff, $e8, $46, $02, $f8, $e8 ; $8ECC
.byte $47, $02, $00, $e8, $cb, $02, $10, $f0, $56, $02, $f8, $f0, $57, $02, $00, $f0 ; $8EDC
.byte $db, $02, $10, $f8, $87, $02, $00, $f8, $eb, $02, $10, $ff, $e8, $c9, $02, $00 ; $8EEC
.byte $e8, $66, $02, $10, $e8, $67, $02, $18, $f0, $d9, $02, $00, $f0, $76, $02, $10 ; $8EFC
.byte $f0, $77, $02, $18, $f8, $e9, $02, $00, $f8, $86, $02, $10, $ff, $f8, $e1, $00 ; $8F0C
.byte $08, $f8, $e2, $00, $10, $00, $f1, $00, $08, $00, $c5, $00, $10, $00, $d5, $00 ; $8F1C
.byte $18, $ff, $f8, $e4, $00, $08, $f8, $e5, $00, $10, $00, $f4, $00, $08, $00, $f5 ; $8F2C
.byte $00, $10, $00, $f3, $00, $18, $ff, $00, $63, $01, $00, $00, $64, $01, $08, $ff ; $8F3C
.byte $00, $73, $01, $00, $00, $74, $01, $08, $ff, $08, $a8, $23, $18, $08, $a9, $23 ; $8F4C
.byte $20, $ff, $08, $aa, $23, $10, $08, $ab, $23, $18, $08, $ac, $23, $20, $08, $ad ; $8F5C
.byte $23, $28, $10, $ba, $23, $10, $10, $bb, $23, $18, $10, $bc, $23, $20, $10, $bd ; $8F6C
.byte $23, $28, $ff, $00, $60, $21, $00, $00, $61, $21, $08, $00, $62, $21, $10, $08 ; $8F7C
.byte $70, $21, $00, $08, $71, $21, $08, $08, $72, $21, $10, $ff, $00, $80, $21, $00 ; $8F8C
.byte $00, $81, $21, $08, $ff, $f0, $30, $03, $00, $f0, $31, $03, $08, $f0, $32, $03 ; $8F9C
.byte $10, $f8, $40, $03, $00, $f8, $41, $03, $08, $f8, $42, $03, $10, $00, $50, $03 ; $8FAC
.byte $00, $00, $51, $03, $08, $00, $52, $03, $10, $ff, $f8, $23, $03, $00, $f8, $24 ; $8FBC
.byte $03, $08, $f8, $25, $03, $10, $00, $33, $03, $00, $00, $34, $03, $08, $00, $35 ; $8FCC
.byte $03, $10, $ff, $f0, $30, $00, $00, $f0, $31, $00, $08, $f0, $32, $00, $10, $f8 ; $8FDC
.byte $29, $00, $00, $f8, $41, $00, $08, $f8, $2b, $00, $10, $00, $2c, $00, $00, $00 ; $8FEC
.byte $2d, $00, $08, $00, $2e, $00, $10, $ff, $f0, $32, $40, $00, $f0, $31, $40, $08 ; $8FFC
.byte $f0, $30, $40, $10, $f8, $2b, $40, $00, $f8, $41, $40, $08, $f8, $29, $40, $10 ; $900C
.byte $00, $2e, $40, $00, $00, $2d, $40, $08, $00, $2c, $40, $10, $ff, $00, $20, $23 ; $901C
.byte $00, $ff, $00, $21, $23, $00, $ff, $f8, $22, $21, $00, $f8, $23, $21, $08, $00 ; $902C
.byte $32, $21, $00, $00, $33, $21, $08, $ff, $f8, $24, $21, $00, $f8, $25, $21, $08 ; $903C
.byte $00, $34, $21, $00, $00, $35, $21, $08, $ff, $f8, $26, $21, $f0, $f8, $27, $21 ; $904C
.byte $f8, $00, $36, $21, $f0, $00, $37, $21, $f8, $ff, $f8, $28, $21, $f0, $f8, $27 ; $905C
.byte $21, $f8, $00, $29, $21, $f0, $00, $37, $21, $f8, $ff, $f8, $46, $21, $f0, $f8 ; $906C
.byte $47, $21, $f8, $00, $56, $21, $f0, $00, $57, $21, $f8, $ff, $f8, $46, $21, $f0 ; $907C
.byte $f8, $47, $21, $f8, $00, $66, $21, $f0, $00, $67, $21, $f8, $ff, $f8, $43, $22 ; $908C
.byte $00, $f8, $44, $22, $08, $f8, $45, $22, $10, $00, $53, $22, $00, $00, $54, $22 ; $909C
.byte $08, $00, $55, $22, $10, $ff, $f8, $63, $22, $00, $f8, $64, $22, $08, $f8, $65 ; $90AC
.byte $22, $10, $00, $73, $22, $00, $00, $74, $22, $08, $00, $75, $22, $10, $ff, $f8 ; $90BC
.byte $40, $21, $e8, $f8, $41, $21, $f0, $f8, $42, $21, $f8, $00, $50, $21, $e8, $00 ; $90CC
.byte $51, $21, $f0, $00, $52, $21, $f8, $ff, $f8, $40, $21, $e8, $f8, $41, $21, $f0 ; $90DC
.byte $f8, $42, $21, $f8, $00, $50, $21, $e8, $00, $30, $21, $f0, $00, $52, $21, $f8 ; $90EC
.byte $ff, $f8, $90, $23, $08, $f8, $a2, $23, $10, $00, $91, $23, $f0, $00, $92, $23 ; $90FC
.byte $f8, $00, $b0, $23, $00, $00, $a0, $23, $08, $00, $b2, $23, $10, $00, $b3, $23 ; $910C
.byte $18, $08, $c0, $23, $00, $08, $c1, $23, $08, $ff, $f8, $a1, $23, $08, $f8, $a2 ; $911C
.byte $23, $10, $00, $91, $23, $f0, $00, $92, $23, $f8, $00, $b0, $23, $00, $00, $b1 ; $912C
.byte $23, $08, $00, $b2, $23, $10, $00, $b3, $23, $18, $08, $c0, $23, $00, $08, $c1 ; $913C
.byte $23, $08, $ff, $f8, $d3, $21, $f0, $00, $e1, $21, $e0, $00, $e2, $21, $e8, $00 ; $914C
.byte $e3, $21, $f0, $08, $f0, $21, $d8, $08, $f1, $21, $e0, $08, $f2, $21, $e8, $08 ; $915C
.byte $f3, $21, $f0, $08, $d1, $21, $f8, $08, $d2, $21, $00, $ff, $f8, $d3, $21, $f0 ; $916C
.byte $00, $e1, $21, $e0, $00, $e2, $21, $e8, $00, $e3, $21, $f0, $08, $f0, $21, $d8 ; $917C
.byte $08, $f1, $21, $e0, $08, $f2, $21, $e8, $08, $f3, $21, $f0, $08, $d0, $21, $f8 ; $918C
.byte $ff, $f8, $83, $23, $e8, $f8, $84, $23, $f0, $f8, $85, $23, $f8, $00, $93, $23 ; $919C
.byte $e8, $00, $94, $23, $f0, $ff, $f8, $a3, $23, $e8, $f8, $a4, $23, $f0, $f8, $a5 ; $91AC
.byte $23, $f8, $00, $93, $23, $e8, $00, $94, $23, $f0, $ff, $00, $a6, $23, $00, $ff ; $91BC
.byte $08, $a7, $23, $00, $ff, $08, $f4, $23, $00, $ff, $f8, $b4, $21, $00, $00, $c4 ; $91CC
.byte $21, $00, $ff, $08, $d4, $23, $00, $ff, $08, $e4, $23, $00, $ff, $e8, $b5, $23 ; $91DC
.byte $00, $e8, $b6, $23, $08, $f0, $c5, $23, $00, $f0, $c6, $23, $08, $f8, $d5, $23 ; $91EC
.byte $00, $f8, $d6, $23, $08, $00, $e5, $23, $00, $00, $e6, $23, $08, $ff, $08, $f5 ; $91FC
.byte $23, $00, $08, $f6, $23, $08, $ff, $08, $b7, $23, $00, $08, $b8, $23, $08, $ff ; $920C
.byte $d0, $c2, $21, $08, $d0, $c3, $21, $10, $d8, $cb, $21, $08, $d8, $eb, $21, $10 ; $921C
.byte $e0, $db, $21, $08, $e0, $fb, $21, $10, $e8, $c7, $21, $00, $e8, $c8, $21, $08 ; $922C
.byte $e8, $c9, $21, $10, $e8, $ca, $21, $18, $f0, $d7, $21, $00, $f0, $d8, $21, $08 ; $923C
.byte $f0, $d9, $21, $10, $f0, $da, $21, $18, $f8, $e7, $21, $00, $f8, $e8, $21, $08 ; $924C
.byte $f8, $e9, $21, $10, $f8, $ea, $21, $18, $00, $f7, $21, $00, $00, $f8, $21, $08 ; $925C
.byte $00, $f9, $21, $10, $00, $fa, $21, $18, $ff, $08, $2a, $23, $08, $08, $2b, $23 ; $926C
.byte $10, $ff, $08, $2c, $23, $08, $08, $2d, $23, $10, $10, $2e, $23, $08, $10, $2f ; $927C
.byte $23, $10, $ff, $c8, $38, $23, $20, $d0, $39, $23, $08, $d0, $3b, $23, $18, $d0 ; $928C
.byte $3c, $23, $20, $d0, $3e, $23, $30, $d0, $3f, $23, $38, $d8, $48, $23, $00, $d8 ; $929C
.byte $49, $23, $08, $d8, $4a, $23, $10, $d8, $4b, $23, $18, $d8, $4c, $23, $20, $d8 ; $92AC
.byte $4d, $23, $28, $d8, $4e, $20, $30, $d8, $4f, $20, $38, $e0, $58, $23, $00, $e0 ; $92BC
.byte $59, $23, $08, $e0, $5a, $23, $10, $e0, $5b, $23, $18, $e0, $5c, $23, $20, $e0 ; $92CC
.byte $5d, $23, $28, $e0, $5e, $20, $30, $e0, $5f, $20, $38, $e8, $68, $23, $00, $e8 ; $92DC
.byte $69, $23, $08, $e8, $6a, $23, $10, $e8, $6b, $23, $18, $e8, $6c, $23, $20, $e8 ; $92EC
.byte $6d, $23, $28, $e8, $6e, $23, $30, $e8, $6f, $23, $38, $f0, $78, $23, $00, $f0 ; $92FC
.byte $79, $23, $08, $f0, $7a, $23, $10, $f0, $7b, $23, $18, $f0, $7c, $23, $20, $f0 ; $930C
.byte $7d, $23, $28, $f0, $7e, $23, $30, $f0, $7f, $23, $38, $f8, $88, $20, $00, $f8 ; $931C
.byte $89, $20, $08, $f8, $8a, $20, $10, $f8, $8b, $20, $18, $f8, $8c, $20, $20, $f8 ; $932C
.byte $8d, $20, $28, $f8, $8e, $20, $30, $f8, $8f, $20, $38, $00, $98, $20, $00, $00 ; $933C
.byte $99, $20, $08, $00, $9a, $20, $10, $00, $9b, $20, $18, $00, $9c, $20, $20, $00 ; $934C
.byte $9d, $20, $28, $00, $9e, $20, $30, $00, $9f, $20, $38, $ff, $e0, $91, $21, $08 ; $935C
.byte $e0, $92, $21, $10, $e8, $a0, $21, $00, $e8, $a1, $21, $08, $e8, $a2, $21, $10 ; $936C
.byte $f0, $b0, $21, $00, $f0, $b1, $21, $08, $f0, $b2, $21, $10, $f8, $c0, $21, $00 ; $937C
.byte $f8, $c1, $21, $08, $f8, $c2, $21, $10, $00, $d0, $21, $00, $00, $d2, $21, $10 ; $938C
.byte $ff, $e0, $c4, $21, $08, $e0, $c5, $21, $10, $e8, $d3, $21, $00, $e8, $d4, $21 ; $939C
.byte $08, $e8, $d5, $21, $10, $f0, $e3, $21, $00, $f0, $e4, $21, $08, $f0, $e5, $21 ; $93AC
.byte $10, $f8, $f3, $21, $00, $f8, $f4, $21, $08, $f8, $f5, $21, $10, $00, $b3, $21 ; $93BC
.byte $00, $00, $b4, $21, $08, $ff, $f0, $39, $22, $04, $f8, $aa, $22, $00, $f8, $ab ; $93CC
.byte $22, $08, $00, $ba, $22, $00, $00, $bb, $22, $08, $ff, $f0, $3a, $23, $04, $f8 ; $93DC
.byte $ac, $23, $00, $f8, $ad, $23, $08, $00, $bc, $23, $00, $00, $bd, $23, $08, $ff ; $93EC
.byte $f0, $38, $23, $08, $f8, $49, $23, $00, $f8, $4a, $23, $08, $00, $3b, $23, $00 ; $93FC
.byte $00, $3c, $23, $08, $ff, $f8, $4e, $20, $00, $f8, $4f, $20, $08, $00, $5e, $20 ; $940C
.byte $00, $00, $5f, $20, $08, $ff, $08, $5b, $23, $04, $ff, $08, $48, $23, $04, $10 ; $941C
.byte $58, $23, $04, $ff, $00, $27, $00, $00, $00, $27, $40, $4a, $ff, $e8, $a9, $21 ; $942C
.byte $00, $e8, $aa, $21, $08, $f0, $b8, $21, $f8, $f0, $b9, $21, $00, $f0, $ba, $21 ; $943C
.byte $08, $f8, $c9, $21, $00, $f8, $ca, $21, $08, $f8, $cb, $21, $10, $00, $d9, $21 ; $944C
.byte $00, $00, $da, $21, $08, $ff, $e8, $ad, $21, $00, $e8, $ae, $21, $08, $f0, $bc ; $945C
.byte $21, $f8, $f0, $bd, $21, $00, $f0, $be, $21, $08, $f8, $cd, $21, $00, $f8, $ce ; $946C
.byte $21, $08, $f8, $cf, $21, $10, $00, $dd, $21, $00, $00, $de, $21, $08, $ff ; $947C

_func_948b:
  lda z:_var_0041                ; $948B  A5 41
  asl a                          ; $948D  0A
  sta z:_var_00a8_indexed        ; $948E  85 A8
  asl a                          ; $9490  0A
  asl a                          ; $9491  0A
  clc                            ; $9492  18
  adc z:_var_00a8_indexed        ; $9493  65 A8
  adc z:_var_0040_indexed        ; $9495  65 40
  sta z:_var_00a8_indexed        ; $9497  85 A8
  lda z:_var_0042                ; $9499  A5 42
  asl a                          ; $949B  0A
  asl a                          ; $949C  0A
  sta z:_var_00a9                ; $949D  85 A9
  asl a                          ; $949F  0A
  clc                            ; $94A0  18
  adc z:_var_00a9                ; $94A1  65 A9
  tax                            ; $94A3  AA
  ldy #$00                       ; $94A4  A0 00
  lda #$04                       ; $94A6  A9 04
  sta z:_var_00aa                ; $94A8  85 AA

_label_94aa:
  lda a:_data_8a9c_indexed,X     ; $94AA  BD 9C 8A
  clc                            ; $94AD  18
  adc z:_var_0041                ; $94AE  65 41
  adc #$02                       ; $94B0  69 02
  cmp #$16                       ; $94B2  C9 16
  bcs _label_94e9                ; $94B4  B0 33
  lda a:_data_8a9c_indexed,X     ; $94B6  BD 9C 8A
  asl a                          ; $94B9  0A
  sta z:_var_00ab                ; $94BA  85 AB
  asl a                          ; $94BC  0A
  asl a                          ; $94BD  0A
  clc                            ; $94BE  18
  adc z:_var_00ab                ; $94BF  65 AB
  clc                            ; $94C1  18
  adc z:_var_00a8_indexed        ; $94C2  65 A8
  sta z:_var_00ad_indexed        ; $94C4  85 AD
  inx                            ; $94C6  E8
  inx                            ; $94C7  E8
  lda a:_data_8a9c_indexed,X     ; $94C8  BD 9C 8A
  clc                            ; $94CB  18
  adc z:_var_00ad_indexed        ; $94CC  65 AD
  tay                            ; $94CE  A8
  lda (_var_00b8_indexed),Y      ; $94CF  B1 B8
  cmp #$EF                       ; $94D1  C9 EF
  bcc _label_94e9                ; $94D3  90 14
  lda a:_data_8a9c_indexed,X     ; $94D5  BD 9C 8A
  clc                            ; $94D8  18
  adc z:_var_0040_indexed        ; $94D9  65 40
  cmp #$0A                       ; $94DB  C9 0A
  bcs _label_94e9                ; $94DD  B0 0A
  inx                            ; $94DF  E8
  dec z:_var_00aa                ; $94E0  C6 AA
  bne _label_94aa                ; $94E2  D0 C6
  lda #$00                       ; $94E4  A9 00
  sta z:_var_00a8_indexed        ; $94E6  85 A8
  rts                            ; $94E8  60

_label_94e9:
  lda #$FF                       ; $94E9  A9 FF
  sta z:_var_00a8_indexed        ; $94EB  85 A8
  rts                            ; $94ED  60

_label_94ee:
  lda z:_var_0068                ; $94EE  A5 68
  cmp #$04                       ; $94F0  C9 04
  bne _label_9522                ; $94F2  D0 2E
  lda #$04                       ; $94F4  A9 04
  sta z:_var_00b9                ; $94F6  85 B9
  lda z:_var_0072                ; $94F8  A5 72
  sta z:_var_0052                ; $94FA  85 52
  lda z:$6A                      ; $94FC  A5 6A
  sta z:_var_004a_indexed        ; $94FE  85 4A
  lda z:$6B                      ; $9500  A5 6B
  sta z:_var_004b                ; $9502  85 4B
  lda z:$6C                      ; $9504  A5 6C
  sta z:_var_004c                ; $9506  85 4C
  lda z:$6D                      ; $9508  A5 6D
  sta z:_var_004d                ; $950A  85 4D
  lda z:_var_0068                ; $950C  A5 68
  sta z:_var_0048                ; $950E  85 48
  jsr _func_977f                 ; $9510  20 7F 97
  lda z:_var_0052                ; $9513  A5 52
  sta z:_var_0072                ; $9515  85 72
  lda z:_var_0048                ; $9517  A5 48
  sta z:_var_0068                ; $9519  85 68
  lda #$00                       ; $951B  A9 00
  sta z:_var_0069                ; $951D  85 69
  jmp _label_953a                ; $951F  4C 3A 95

_label_9522:
  lda z:_var_0069                ; $9522  A5 69
  sta z:_var_0049                ; $9524  85 49
  lda #$04                       ; $9526  A9 04
  sta z:_var_00b9                ; $9528  85 B9
  jsr _func_9725                 ; $952A  20 25 97
  jsr _func_9725                 ; $952D  20 25 97
  jsr _func_9725                 ; $9530  20 25 97
  jsr _func_9725                 ; $9533  20 25 97
  lda z:_var_0049                ; $9536  A5 49
  sta z:_var_0069                ; $9538  85 69

_label_953a:
  lda z:_var_00be                ; $953A  A5 BE
  cmp #$02                       ; $953C  C9 02
  bne _label_958c                ; $953E  D0 4C
  lda z:_var_0088                ; $9540  A5 88
  cmp #$04                       ; $9542  C9 04
  bne _label_9574                ; $9544  D0 2E
  lda #$05                       ; $9546  A9 05
  sta z:_var_00b9                ; $9548  85 B9
  lda z:_var_0092                ; $954A  A5 92
  sta z:_var_0052                ; $954C  85 52
  lda z:$8A                      ; $954E  A5 8A
  sta z:_var_004a_indexed        ; $9550  85 4A
  lda z:$8B                      ; $9552  A5 8B
  sta z:_var_004b                ; $9554  85 4B
  lda z:$8C                      ; $9556  A5 8C
  sta z:_var_004c                ; $9558  85 4C
  lda z:$8D                      ; $955A  A5 8D
  sta z:_var_004d                ; $955C  85 4D
  lda z:_var_0088                ; $955E  A5 88
  sta z:_var_0048                ; $9560  85 48
  jsr _func_977f                 ; $9562  20 7F 97
  lda z:_var_0052                ; $9565  A5 52
  sta z:_var_0092                ; $9567  85 92
  lda z:_var_0048                ; $9569  A5 48
  sta z:_var_0088                ; $956B  85 88
  lda #$00                       ; $956D  A9 00
  sta z:_var_0089                ; $956F  85 89
  jmp _label_958c                ; $9571  4C 8C 95

_label_9574:
  lda z:_var_0089                ; $9574  A5 89
  sta z:_var_0049                ; $9576  85 49
  lda #$05                       ; $9578  A9 05
  sta z:_var_00b9                ; $957A  85 B9
  jsr _func_9725                 ; $957C  20 25 97
  jsr _func_9725                 ; $957F  20 25 97
  jsr _func_9725                 ; $9582  20 25 97
  jsr _func_9725                 ; $9585  20 25 97
  lda z:_var_0049                ; $9588  A5 49
  sta z:_var_0089                ; $958A  85 89

_label_958c:
  lda z:_var_00a3                ; $958C  A5 A3
  and #$01                       ; $958E  29 01
  beq _label_95e3                ; $9590  F0 51
  lda z:_var_00be                ; $9592  A5 BE
  cmp #$02                       ; $9594  C9 02
  beq _label_95b5                ; $9596  F0 1D
  lda #$20                       ; $9598  A9 20
  sta PPU_ADDR                   ; $959A  8D 06 20
  lda #$73                       ; $959D  A9 73
  sta PPU_ADDR                   ; $959F  8D 06 20
  lda z:_var_0071                ; $95A2  A5 71
  sta PPU_DATA                   ; $95A4  8D 07 20
  lda z:_var_0070                ; $95A7  A5 70
  jsr _func_9712                 ; $95A9  20 12 97
  lda z:_var_00a3                ; $95AC  A5 A3
  and #$FE                       ; $95AE  29 FE
  sta z:_var_00a3                ; $95B0  85 A3
  jmp _label_95e3                ; $95B2  4C E3 95

_label_95b5:
  lda #$20                       ; $95B5  A9 20
  sta PPU_ADDR                   ; $95B7  8D 06 20
  lda #$68                       ; $95BA  A9 68
  sta PPU_ADDR                   ; $95BC  8D 06 20
  lda z:_var_0071                ; $95BF  A5 71
  sta PPU_DATA                   ; $95C1  8D 07 20
  lda z:_var_0070                ; $95C4  A5 70
  jsr _func_9712                 ; $95C6  20 12 97
  lda #$20                       ; $95C9  A9 20
  sta PPU_ADDR                   ; $95CB  8D 06 20
  lda #$7A                       ; $95CE  A9 7A
  sta PPU_ADDR                   ; $95D0  8D 06 20
  lda z:_var_0091                ; $95D3  A5 91
  sta PPU_DATA                   ; $95D5  8D 07 20
  lda z:_var_0090                ; $95D8  A5 90
  jsr _func_9712                 ; $95DA  20 12 97
  lda z:_var_00a3                ; $95DD  A5 A3
  and #$FE                       ; $95DF  29 FE
  sta z:_var_00a3                ; $95E1  85 A3

_label_95e3:
  lda z:_var_00a3                ; $95E3  A5 A3
  and #$02                       ; $95E5  29 02
  beq _label_960e                ; $95E7  F0 25
  lda z:_var_00be                ; $95E9  A5 BE
  cmp #$02                       ; $95EB  C9 02
  beq _label_960e                ; $95ED  F0 1F
  ldx z:_var_0064                ; $95EF  A6 64
  lda a:_data_96b8_indexed,X     ; $95F1  BD B8 96
  sta z:_var_00a8_indexed        ; $95F4  85 A8
  lda #$22                       ; $95F6  A9 22
  sta PPU_ADDR                   ; $95F8  8D 06 20
  lda #$BA                       ; $95FB  A9 BA
  sta PPU_ADDR                   ; $95FD  8D 06 20
  lda z:_var_00a8_indexed        ; $9600  A5 A8
  jsr _func_9712                 ; $9602  20 12 97
  jsr _func_9808                 ; $9605  20 08 98
  lda z:_var_00a3                ; $9608  A5 A3
  and #$FD                       ; $960A  29 FD
  sta z:_var_00a3                ; $960C  85 A3

_label_960e:
  lda z:_var_00be                ; $960E  A5 BE
  cmp #$02                       ; $9610  C9 02
  beq _label_9639                ; $9612  F0 25
  lda z:_var_00a3                ; $9614  A5 A3
  and #$04                       ; $9616  29 04
  beq _label_9639                ; $9618  F0 1F
  lda #$21                       ; $961A  A9 21
  sta PPU_ADDR                   ; $961C  8D 06 20
  lda #$18                       ; $961F  A9 18
  sta PPU_ADDR                   ; $9621  8D 06 20
  lda z:_var_0075                ; $9624  A5 75
  jsr _func_9712                 ; $9626  20 12 97
  lda z:_var_0074                ; $9629  A5 74
  jsr _func_9712                 ; $962B  20 12 97
  lda z:_var_0073                ; $962E  A5 73
  jsr _func_9712                 ; $9630  20 12 97
  lda z:_var_00a3                ; $9633  A5 A3
  and #$FB                       ; $9635  29 FB
  sta z:_var_00a3                ; $9637  85 A3

_label_9639:
  lda z:_var_00be                ; $9639  A5 BE
  cmp #$02                       ; $963B  C9 02
  beq _label_9673                ; $963D  F0 34
  lda z:_var_00a3                ; $963F  A5 A3
  and #$40                       ; $9641  29 40
  beq _label_9673                ; $9643  F0 2E
  lda #$00                       ; $9645  A9 00
  sta z:_var_00b0                ; $9647  85 B0

_label_9649:
  lda z:_var_00b0                ; $9649  A5 B0
  asl a                          ; $964B  0A
  tax                            ; $964C  AA
  lda a:_data_96aa_indexed,X     ; $964D  BD AA 96
  sta PPU_ADDR                   ; $9650  8D 06 20
  lda a:_data_96ab_indexed,X     ; $9653  BD AB 96
  sta PPU_ADDR                   ; $9656  8D 06 20
  lda a:_var_03f1_indexed,X      ; $9659  BD F1 03
  sta PPU_DATA                   ; $965C  8D 07 20
  lda a:_var_03f0_indexed,X      ; $965F  BD F0 03
  jsr _func_9712                 ; $9662  20 12 97
  inc z:_var_00b0                ; $9665  E6 B0
  lda z:_var_00b0                ; $9667  A5 B0
  cmp #$07                       ; $9669  C9 07
  bne _label_9649                ; $966B  D0 DC
  lda z:_var_00a3                ; $966D  A5 A3
  and #$BF                       ; $966F  29 BF
  sta z:_var_00a3                ; $9671  85 A3

_label_9673:
  lda #$3F                       ; $9673  A9 3F
  sta PPU_ADDR                   ; $9675  8D 06 20
  lda #$0E                       ; $9678  A9 0E
  sta PPU_ADDR                   ; $967A  8D 06 20
  ldx #$00                       ; $967D  A2 00
  lda z:_var_0056                ; $967F  A5 56
  cmp #$04                       ; $9681  C9 04
  bne _label_9698                ; $9683  D0 13
  lda z:_var_00b1                ; $9685  A5 B1
  and #$03                       ; $9687  29 03
  bne _label_9698                ; $9689  D0 0D
  ldx #$30                       ; $968B  A2 30
  lda z:_var_00b1                ; $968D  A5 B1
  and #$07                       ; $968F  29 07
  bne _label_9698                ; $9691  D0 05
  lda #$09                       ; $9693  A9 09
  sta a:_var_06f1                ; $9695  8D F1 06

_label_9698:
  stx PPU_DATA                   ; $9698  8E 07 20
  ldy #$00                       ; $969B  A0 00
  sty z:_var_00fd                ; $969D  84 FD
  sty PPU_SCROLL                 ; $969F  8C 05 20
  ldy #$00                       ; $96A2  A0 00
  sty z:_var_00fc                ; $96A4  84 FC
  sty PPU_SCROLL                 ; $96A6  8C 05 20
  rts                            ; $96A9  60

_data_96aa_indexed:
.byte $21                        ; $96AA

_data_96ab_indexed:
.byte $86, $21, $c6, $22, $06, $22, $46, $22, $86, $22, $c6, $23, $06 ; $96AB

_data_96b8_indexed:
.byte $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $10, $11, $12, $13, $14, $15 ; $96B8
.byte $16, $17, $18, $19, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29 ; $96C8

_data_96d6_indexed:
.byte $00, $0a, $14, $1e, $28, $32, $3c, $46, $50, $5a, $64, $6e, $78, $82, $8c, $96 ; $96D6
.byte $a0, $aa, $b4, $be         ; $96E6

_data_96ea_indexed:
.byte $c6, $20, $e6, $20, $06, $21, $26, $21, $46, $21, $66, $21, $86, $21, $a6, $21 ; $96EA
.byte $c6, $21, $e6, $21, $06, $22, $26, $22, $46, $22, $66, $22, $86, $22, $a6, $22 ; $96FA
.byte $c6, $22, $e6, $22, $06, $23, $26, $23 ; $970A

_func_9712:
  sta z:_var_00a8_indexed        ; $9712  85 A8
  and #$F0                       ; $9714  29 F0
  lsr a                          ; $9716  4A
  lsr a                          ; $9717  4A
  lsr a                          ; $9718  4A
  lsr a                          ; $9719  4A
  sta PPU_DATA                   ; $971A  8D 07 20
  lda z:_var_00a8_indexed        ; $971D  A5 A8
  and #$0F                       ; $971F  29 0F
  sta PPU_DATA                   ; $9721  8D 07 20
  rts                            ; $9724  60

_func_9725:
  ldx z:_var_0049                ; $9725  A6 49
  cpx #$15                       ; $9727  E0 15
  bpl _label_977e                ; $9729  10 53
  lda a:_data_96d6_indexed,X     ; $972B  BD D6 96
  tay                            ; $972E  A8
  txa                            ; $972F  8A
  asl a                          ; $9730  0A
  tax                            ; $9731  AA
  inx                            ; $9732  E8
  lda a:_data_96ea_indexed,X     ; $9733  BD EA 96
  sta PPU_ADDR                   ; $9736  8D 06 20
  dex                            ; $9739  CA
  lda z:_var_00be                ; $973A  A5 BE
  cmp #$01                       ; $973C  C9 01
  beq _label_975e                ; $973E  F0 1E
  lda z:_var_00b9                ; $9740  A5 B9
  cmp #$05                       ; $9742  C9 05
  beq _label_9752                ; $9744  F0 0C
  lda a:_data_96ea_indexed,X     ; $9746  BD EA 96
  sec                            ; $9749  38
  sbc #$02                       ; $974A  E9 02
  sta PPU_ADDR                   ; $974C  8D 06 20
  jmp _label_9767                ; $974F  4C 67 97

_label_9752:
  lda a:_data_96ea_indexed,X     ; $9752  BD EA 96
  clc                            ; $9755  18
  adc #$0C                       ; $9756  69 0C
  sta PPU_ADDR                   ; $9758  8D 06 20
  jmp _label_9767                ; $975B  4C 67 97

_label_975e:
  lda a:_data_96ea_indexed,X     ; $975E  BD EA 96
  clc                            ; $9761  18
  adc #$06                       ; $9762  69 06
  sta PPU_ADDR                   ; $9764  8D 06 20

_label_9767:
  ldx #$0A                       ; $9767  A2 0A

_label_9769:
  lda (_var_00b8_indexed),Y      ; $9769  B1 B8
  sta PPU_DATA                   ; $976B  8D 07 20
  iny                            ; $976E  C8
  dex                            ; $976F  CA
  bne _label_9769                ; $9770  D0 F7
  inc z:_var_0049                ; $9772  E6 49
  lda z:_var_0049                ; $9774  A5 49
  cmp #$14                       ; $9776  C9 14
  bmi _label_977e                ; $9778  30 04
  lda #$20                       ; $977A  A9 20
  sta z:_var_0049                ; $977C  85 49

_label_977e:
  rts                            ; $977E  60

_func_977f:
  lda z:_var_00b1                ; $977F  A5 B1
  and #$03                       ; $9781  29 03
  bne _label_97fd                ; $9783  D0 78
  lda #$00                       ; $9785  A9 00
  sta z:_var_00aa                ; $9787  85 AA

_label_9789:
  ldx z:_var_00aa                ; $9789  A6 AA
  lda z:_var_004a_indexed,X      ; $978B  B5 4A
  beq _label_97eb                ; $978D  F0 5C
  asl a                          ; $978F  0A
  tay                            ; $9790  A8
  lda a:_data_96ea_indexed,Y     ; $9791  B9 EA 96
  sta z:_var_00a8_indexed        ; $9794  85 A8
  lda z:_var_00be                ; $9796  A5 BE
  cmp #$01                       ; $9798  C9 01
  bne _label_97a6                ; $979A  D0 0A
  lda z:_var_00a8_indexed        ; $979C  A5 A8
  clc                            ; $979E  18
  adc #$06                       ; $979F  69 06
  sta z:_var_00a8_indexed        ; $97A1  85 A8
  jmp _label_97bd                ; $97A3  4C BD 97

_label_97a6:
  lda z:_var_00b9                ; $97A6  A5 B9
  cmp #$04                       ; $97A8  C9 04
  bne _label_97b6                ; $97AA  D0 0A
  lda z:_var_00a8_indexed        ; $97AC  A5 A8
  sec                            ; $97AE  38
  sbc #$02                       ; $97AF  E9 02
  sta z:_var_00a8_indexed        ; $97B1  85 A8
  jmp _label_97bd                ; $97B3  4C BD 97

_label_97b6:
  lda z:_var_00a8_indexed        ; $97B6  A5 A8
  clc                            ; $97B8  18
  adc #$0C                       ; $97B9  69 0C
  sta z:_var_00a8_indexed        ; $97BB  85 A8

_label_97bd:
  iny                            ; $97BD  C8
  lda a:_data_96ea_indexed,Y     ; $97BE  B9 EA 96
  sta z:_var_00a9                ; $97C1  85 A9
  sta PPU_ADDR                   ; $97C3  8D 06 20
  ldx z:_var_0052                ; $97C6  A6 52
  lda a:_data_97fe_indexed,X     ; $97C8  BD FE 97
  clc                            ; $97CB  18
  adc z:_var_00a8_indexed        ; $97CC  65 A8
  sta PPU_ADDR                   ; $97CE  8D 06 20
  lda #$FF                       ; $97D1  A9 FF
  sta PPU_DATA                   ; $97D3  8D 07 20
  lda z:_var_00a9                ; $97D6  A5 A9
  sta PPU_ADDR                   ; $97D8  8D 06 20
  ldx z:_var_0052                ; $97DB  A6 52
  lda a:_data_9803_indexed,X     ; $97DD  BD 03 98
  clc                            ; $97E0  18
  adc z:_var_00a8_indexed        ; $97E1  65 A8
  sta PPU_ADDR                   ; $97E3  8D 06 20
  lda #$FF                       ; $97E6  A9 FF
  sta PPU_DATA                   ; $97E8  8D 07 20

_label_97eb:
  inc z:_var_00aa                ; $97EB  E6 AA
  lda z:_var_00aa                ; $97ED  A5 AA
  cmp #$04                       ; $97EF  C9 04
  bne _label_9789                ; $97F1  D0 96
  inc z:_var_0052                ; $97F3  E6 52
  lda z:_var_0052                ; $97F5  A5 52
  cmp #$05                       ; $97F7  C9 05
  bmi _label_97fd                ; $97F9  30 02
  inc z:_var_0048                ; $97FB  E6 48

_label_97fd:
  rts                            ; $97FD  60

_data_97fe_indexed:
.byte $04, $03, $02, $01, $00    ; $97FE

_data_9803_indexed:
.byte $05, $06, $07, $08, $09    ; $9803

_func_9808:
  lda z:_var_0064                ; $9808  A5 64

_label_980a:
  cmp #$0A                       ; $980A  C9 0A
  bmi _label_9814                ; $980C  30 06
  sec                            ; $980E  38
  sbc #$0A                       ; $980F  E9 0A
  jmp _label_980a                ; $9811  4C 0A 98

_label_9814:
  asl a                          ; $9814  0A
  asl a                          ; $9815  0A
  tax                            ; $9816  AA
  lda #$00                       ; $9817  A9 00
  sta z:_var_00a8_indexed        ; $9819  85 A8

_label_981b:
  lda #$3F                       ; $981B  A9 3F
  sta PPU_ADDR                   ; $981D  8D 06 20
  lda #$08                       ; $9820  A9 08
  clc                            ; $9822  18
  adc z:_var_00a8_indexed        ; $9823  65 A8
  sta PPU_ADDR                   ; $9825  8D 06 20
  lda a:_data_984c_indexed,X     ; $9828  BD 4C 98
  sta PPU_DATA                   ; $982B  8D 07 20
  lda a:_data_984d_indexed,X     ; $982E  BD 4D 98
  sta PPU_DATA                   ; $9831  8D 07 20
  lda a:_data_984e_indexed,X     ; $9834  BD 4E 98
  sta PPU_DATA                   ; $9837  8D 07 20
  lda a:_data_984f_indexed,X     ; $983A  BD 4F 98
  sta PPU_DATA                   ; $983D  8D 07 20
  lda z:_var_00a8_indexed        ; $9840  A5 A8
  clc                            ; $9842  18
  adc #$10                       ; $9843  69 10
  sta z:_var_00a8_indexed        ; $9845  85 A8
  cmp #$20                       ; $9847  C9 20
  bne _label_981b                ; $9849  D0 D0
  rts                            ; $984B  60

_data_984c_indexed:
.byte $0f                        ; $984C

_data_984d_indexed:
.byte $30                        ; $984D

_data_984e_indexed:
.byte $21                        ; $984E

_data_984f_indexed:
.byte $12, $0f, $30, $29, $1a, $0f, $30, $24, $14, $0f, $30, $2a, $12, $0f, $30, $2b ; $984F
.byte $15, $0f, $30, $22, $2b, $0f, $30, $00, $16, $0f, $30, $05, $13, $0f, $30, $16 ; $985F
.byte $12, $0f, $30, $27, $16    ; $986F

_func_9874:
  rts                            ; $9874  60

.byte $e6, $69, $a5, $69, $c9, $14, $30, $04, $a9, $20, $85, $69, $e6, $89, $a5, $89 ; $9875
.byte $c9, $14, $30, $04, $a9, $20, $85, $89, $60 ; $9885

_label_988e:
  lda z:_var_0049                ; $988E  A5 49
  cmp #$20                       ; $9890  C9 20
  bmi _label_98ea                ; $9892  30 56
  lda z:_var_00be                ; $9894  A5 BE
  cmp #$01                       ; $9896  C9 01
  beq _label_98ba                ; $9898  F0 20
  lda z:_var_00a4                ; $989A  A5 A4
  cmp #$00                       ; $989C  C9 00
  bne _label_98ae                ; $989E  D0 0E
  inc z:_var_00a4                ; $98A0  E6 A4
  lda z:_var_00b7                ; $98A2  A5 B7
  sta z:_var_00a5                ; $98A4  85 A5
  jsr _func_98eb                 ; $98A6  20 EB 98
  sta z:_var_00a6                ; $98A9  85 A6
  jmp _label_98ea                ; $98AB  4C EA 98

_label_98ae:
  lda z:_var_00a5                ; $98AE  A5 A5
  cmp z:_var_00b7                ; $98B0  C5 B7
  bne _label_98ea                ; $98B2  D0 36
  lda z:_var_00a4                ; $98B4  A5 A4
  cmp #$1C                       ; $98B6  C9 1C
  bne _label_98ea                ; $98B8  D0 30

_label_98ba:
  lda #$00                       ; $98BA  A9 00
  sta z:_var_00a4                ; $98BC  85 A4
  sta z:_var_0045                ; $98BE  85 45
  sta z:_var_0041                ; $98C0  85 41
  lda #$01                       ; $98C2  A9 01
  sta z:_var_0048                ; $98C4  85 48
  lda #$05                       ; $98C6  A9 05
  sta z:_var_0040_indexed        ; $98C8  85 40
  ldx z:_var_00bf                ; $98CA  A6 BF
  lda a:_data_9956_indexed,X     ; $98CC  BD 56 99
  sta z:_var_0042                ; $98CF  85 42
  jsr _func_9969                 ; $98D1  20 69 99
  lda z:_var_00be                ; $98D4  A5 BE
  cmp #$01                       ; $98D6  C9 01
  beq _label_98e1                ; $98D8  F0 07
  lda z:_var_00a6                ; $98DA  A5 A6
  sta z:_var_00bf                ; $98DC  85 BF
  jmp _label_98e6                ; $98DE  4C E6 98

_label_98e1:
  jsr _func_98eb                 ; $98E1  20 EB 98
  sta z:_var_00bf                ; $98E4  85 BF

_label_98e6:
  lda #$00                       ; $98E6  A9 00
  sta z:_var_004e                ; $98E8  85 4E

_label_98ea:
  rts                            ; $98EA  60

_func_98eb:
  lda z:_var_00c0                ; $98EB  A5 C0
  cmp #$05                       ; $98ED  C9 05
  bne _label_9903                ; $98EF  D0 12
  ldx z:_var_00d3                ; $98F1  A6 D3
  inc z:_var_00d3                ; $98F3  E6 D3
  lda a:_data_df00_indexed,X     ; $98F5  BD 00 DF
  lsr a                          ; $98F8  4A
  lsr a                          ; $98F9  4A
  lsr a                          ; $98FA  4A
  lsr a                          ; $98FB  4A
  and #$07                       ; $98FC  29 07
  tax                            ; $98FE  AA
  lda a:_data_994e_indexed,X     ; $98FF  BD 4E 99
  rts                            ; $9902  60

_label_9903:
  jsr _func_9907                 ; $9903  20 07 99
  rts                            ; $9906  60

_func_9907:
  inc z:_var_001a                ; $9907  E6 1A
  lda z:_var_0017                ; $9909  A5 17
  clc                            ; $990B  18
  adc z:_var_001a                ; $990C  65 1A
  and #$07                       ; $990E  29 07
  cmp #$07                       ; $9910  C9 07
  beq _label_991c                ; $9912  F0 08
  tax                            ; $9914  AA
  lda a:_data_994e_indexed,X     ; $9915  BD 4E 99
  cmp z:_var_0019                ; $9918  C5 19
  bne _label_9938                ; $991A  D0 1C

_label_991c:
  ldx #$17                       ; $991C  A2 17
  ldy #$02                       ; $991E  A0 02
  jsr _func_ab47                 ; $9920  20 47 AB
  lda z:_var_0017                ; $9923  A5 17
  and #$07                       ; $9925  29 07
  clc                            ; $9927  18
  adc z:_var_0019                ; $9928  65 19

_label_992a:
  cmp #$07                       ; $992A  C9 07
  bcc _label_9934                ; $992C  90 06
  sec                            ; $992E  38
  sbc #$07                       ; $992F  E9 07
  jmp _label_992a                ; $9931  4C 2A 99

_label_9934:
  tax                            ; $9934  AA
  lda a:_data_994e_indexed,X     ; $9935  BD 4E 99

_label_9938:
  sta z:_var_0019                ; $9938  85 19
  rts                            ; $993A  60

_data_993b_indexed:
.byte $00, $00, $00, $00, $01, $01, $01, $01, $02, $02, $03, $04, $04, $05, $05, $05 ; $993B
.byte $05, $06, $06              ; $994B

_data_994e_indexed:
.byte $02, $07, $08, $0a, $0b, $0e, $12, $02 ; $994E

_data_9956_indexed:
.byte $02, $02, $02, $02, $07, $07, $07, $07, $08, $08, $0a, $0b, $0b, $0e, $0e, $0e ; $9956
.byte $0e, $12, $12              ; $9966

_func_9969:
  tax                            ; $9969  AA
  lda a:_data_993b_indexed,X     ; $996A  BD 3B 99
  asl a                          ; $996D  0A
  tax                            ; $996E  AA
  lda a:_var_03f0_indexed,X      ; $996F  BD F0 03
  clc                            ; $9972  18
  adc #$01                       ; $9973  69 01
  sta z:_var_00a8_indexed        ; $9975  85 A8
  and #$0F                       ; $9977  29 0F
  cmp #$0A                       ; $9979  C9 0A
  bmi _label_9996                ; $997B  30 19
  lda z:_var_00a8_indexed        ; $997D  A5 A8
  clc                            ; $997F  18
  adc #$06                       ; $9980  69 06
  sta z:_var_00a8_indexed        ; $9982  85 A8
  cmp #$A0                       ; $9984  C9 A0
  bcc _label_9996                ; $9986  90 0E
  clc                            ; $9988  18
  adc #$60                       ; $9989  69 60
  sta z:_var_00a8_indexed        ; $998B  85 A8
  lda a:_var_03f1_indexed,X      ; $998D  BD F1 03
  clc                            ; $9990  18
  adc #$01                       ; $9991  69 01
  sta a:_var_03f1_indexed,X      ; $9993  9D F1 03

_label_9996:
  lda z:_var_00a8_indexed        ; $9996  A5 A8
  sta a:_var_03f0_indexed,X      ; $9998  9D F0 03
  lda z:_var_00a3                ; $999B  A5 A3
  ora #$40                       ; $999D  09 40
  sta z:_var_00a3                ; $999F  85 A3
  rts                            ; $99A1  60

_label_99a2:
  jsr _func_948b                 ; $99A2  20 8B 94
  beq _label_99b8                ; $99A5  F0 11
  lda #$02                       ; $99A7  A9 02
  sta a:_var_06f0_indexed        ; $99A9  8D F0 06
  lda #$0A                       ; $99AC  A9 0A
  sta z:_var_0048                ; $99AE  85 48
  lda #$F0                       ; $99B0  A9 F0
  sta z:_var_0058                ; $99B2  85 58
  jsr _func_e003                 ; $99B4  20 03 E0
  rts                            ; $99B7  60

_label_99b8:
  lda z:_var_0049                ; $99B8  A5 49
  cmp #$20                       ; $99BA  C9 20
  bmi _label_9a10                ; $99BC  30 52
  lda z:_var_0041                ; $99BE  A5 41
  asl a                          ; $99C0  0A
  sta z:_var_00a8_indexed        ; $99C1  85 A8
  asl a                          ; $99C3  0A
  asl a                          ; $99C4  0A
  clc                            ; $99C5  18
  adc z:_var_00a8_indexed        ; $99C6  65 A8
  adc z:_var_0040_indexed        ; $99C8  65 40
  sta z:_var_00a8_indexed        ; $99CA  85 A8
  lda z:_var_0042                ; $99CC  A5 42
  asl a                          ; $99CE  0A
  asl a                          ; $99CF  0A
  sta z:_var_00a9                ; $99D0  85 A9
  asl a                          ; $99D2  0A
  clc                            ; $99D3  18
  adc z:_var_00a9                ; $99D4  65 A9
  tax                            ; $99D6  AA
  ldy #$00                       ; $99D7  A0 00
  lda #$04                       ; $99D9  A9 04
  sta z:_var_00aa                ; $99DB  85 AA

_label_99dd:
  lda a:_data_8a9c_indexed,X     ; $99DD  BD 9C 8A
  asl a                          ; $99E0  0A
  sta z:_var_00ab                ; $99E1  85 AB
  asl a                          ; $99E3  0A
  asl a                          ; $99E4  0A
  clc                            ; $99E5  18
  adc z:_var_00ab                ; $99E6  65 AB
  clc                            ; $99E8  18
  adc z:_var_00a8_indexed        ; $99E9  65 A8
  sta z:_var_00ad_indexed        ; $99EB  85 AD
  inx                            ; $99ED  E8
  lda a:_data_8a9c_indexed,X     ; $99EE  BD 9C 8A
  sta z:_var_00ac_indexed        ; $99F1  85 AC
  inx                            ; $99F3  E8
  lda a:_data_8a9c_indexed,X     ; $99F4  BD 9C 8A
  clc                            ; $99F7  18
  adc z:_var_00ad_indexed        ; $99F8  65 AD
  tay                            ; $99FA  A8
  lda z:_var_00ac_indexed        ; $99FB  A5 AC
  sta (_var_00b8_indexed),Y      ; $99FD  91 B8
  inx                            ; $99FF  E8
  dec z:_var_00aa                ; $9A00  C6 AA
  bne _label_99dd                ; $9A02  D0 D9
  lda #$00                       ; $9A04  A9 00
  sta z:_var_0057                ; $9A06  85 57
  jsr _func_9caf                 ; $9A08  20 AF 9C
  jsr _func_9d17                 ; $9A0B  20 17 9D
  inc z:_var_0048                ; $9A0E  E6 48

_label_9a10:
  rts                            ; $9A10  60

_label_9a11:
  lda z:_var_0058                ; $9A11  A5 58
  cmp #$14                       ; $9A13  C9 14
  beq _label_9a47                ; $9A15  F0 30
  lda z:_var_00b1                ; $9A17  A5 B1
  and #$03                       ; $9A19  29 03
  bne _label_9a46                ; $9A1B  D0 29
  ldx z:_var_0058                ; $9A1D  A6 58
  bmi _label_9a3e                ; $9A1F  30 1D
  lda a:_data_96d6_indexed,X     ; $9A21  BD D6 96
  tay                            ; $9A24  A8
  lda #$00                       ; $9A25  A9 00
  sta z:_var_00aa                ; $9A27  85 AA
  lda #$13                       ; $9A29  A9 13
  sta z:_var_0042                ; $9A2B  85 42

_label_9a2d:
  lda #$4F                       ; $9A2D  A9 4F
  sta (_var_00b8_indexed),Y      ; $9A2F  91 B8
  iny                            ; $9A31  C8
  inc z:_var_00aa                ; $9A32  E6 AA
  lda z:_var_00aa                ; $9A34  A5 AA
  cmp #$0A                       ; $9A36  C9 0A
  bne _label_9a2d                ; $9A38  D0 F3
  lda z:_var_0058                ; $9A3A  A5 58
  sta z:_var_0049                ; $9A3C  85 49

_label_9a3e:
  inc z:_var_0058                ; $9A3E  E6 58
  lda z:_var_0058                ; $9A40  A5 58
  cmp #$14                       ; $9A42  C9 14
  bne _label_9a46                ; $9A44  D0 00

_label_9a46:
  rts                            ; $9A46  60

_label_9a47:
  lda z:_var_00be                ; $9A47  A5 BE
  cmp #$02                       ; $9A49  C9 02
  beq _label_9a64                ; $9A4B  F0 17
  lda z:_var_0075                ; $9A4D  A5 75
  cmp #$03                       ; $9A4F  C9 03
  bcc _label_9a5e                ; $9A51  90 0B
  lda #$80                       ; $9A53  A9 80
  jsr _func_a459                 ; $9A55  20 59 A4
  jsr _func_9e3a                 ; $9A58  20 3A 9E
  jmp _label_9a64                ; $9A5B  4C 64 9A

_label_9a5e:
  lda z:_var_00f5_indexed        ; $9A5E  A5 F5
  cmp #$10                       ; $9A60  C9 10
  bne _label_9a6a                ; $9A62  D0 06

_label_9a64:
  lda #$00                       ; $9A64  A9 00
  sta z:_var_0048                ; $9A66  85 48
  sta z:_var_00f5_indexed        ; $9A68  85 F5

_label_9a6a:
  rts                            ; $9A6A  60

_label_9a6b:
  lda z:_var_0049                ; $9A6B  A5 49
  cmp #$20                       ; $9A6D  C9 20
  bpl _label_9a74                ; $9A6F  10 03
  jmp _label_9b02                ; $9A71  4C 02 9B

_label_9a74:
  lda z:_var_0041                ; $9A74  A5 41
  sec                            ; $9A76  38
  sbc #$02                       ; $9A77  E9 02
  bpl _label_9a7d                ; $9A79  10 02
  lda #$00                       ; $9A7B  A9 00

_label_9a7d:
  clc                            ; $9A7D  18
  adc z:_var_0057                ; $9A7E  65 57
  sta z:_var_00a9                ; $9A80  85 A9
  asl a                          ; $9A82  0A
  sta z:_var_00a8_indexed        ; $9A83  85 A8
  asl a                          ; $9A85  0A
  asl a                          ; $9A86  0A
  clc                            ; $9A87  18
  adc z:_var_00a8_indexed        ; $9A88  65 A8
  sta z:_var_00a8_indexed        ; $9A8A  85 A8
  tay                            ; $9A8C  A8
  ldx #$0A                       ; $9A8D  A2 0A

_label_9a8f:
  lda (_var_00b8_indexed),Y      ; $9A8F  B1 B8
  cmp #$EF                       ; $9A91  C9 EF
  beq _label_9acc                ; $9A93  F0 37
  iny                            ; $9A95  C8
  dex                            ; $9A96  CA
  bne _label_9a8f                ; $9A97  D0 F6
  lda #$0A                       ; $9A99  A9 0A
  sta a:_var_06f1                ; $9A9B  8D F1 06
  inc z:_var_0056                ; $9A9E  E6 56
  ldx z:_var_0057                ; $9AA0  A6 57
  lda z:_var_00a9                ; $9AA2  A5 A9
  sta z:_var_004a_indexed,X      ; $9AA4  95 4A
  ldy z:_var_00a8_indexed        ; $9AA6  A4 A8
  dey                            ; $9AA8  88

_label_9aa9:
  lda (_var_00b8_indexed),Y      ; $9AA9  B1 B8
  ldx #$0A                       ; $9AAB  A2 0A
  stx z:_var_00b8_indexed        ; $9AAD  86 B8
  sta (_var_00b8_indexed),Y      ; $9AAF  91 B8
  lda #$00                       ; $9AB1  A9 00
  sta z:_var_00b8_indexed        ; $9AB3  85 B8
  dey                            ; $9AB5  88
  cpy #$FF                       ; $9AB6  C0 FF
  bne _label_9aa9                ; $9AB8  D0 EF
  lda #$EF                       ; $9ABA  A9 EF
  ldy #$00                       ; $9ABC  A0 00

_label_9abe:
  sta (_var_00b8_indexed),Y      ; $9ABE  91 B8
  iny                            ; $9AC0  C8
  cpy #$0A                       ; $9AC1  C0 0A
  bne _label_9abe                ; $9AC3  D0 F9
  lda #$13                       ; $9AC5  A9 13
  sta z:_var_0042                ; $9AC7  85 42
  jmp _label_9ad2                ; $9AC9  4C D2 9A

_label_9acc:
  ldx z:_var_0057                ; $9ACC  A6 57
  lda #$00                       ; $9ACE  A9 00
  sta z:_var_004a_indexed,X      ; $9AD0  95 4A

_label_9ad2:
  inc z:_var_0057                ; $9AD2  E6 57
  lda z:_var_0057                ; $9AD4  A5 57
  cmp #$04                       ; $9AD6  C9 04
  bmi _label_9b02                ; $9AD8  30 28
  ldy z:_var_0056                ; $9ADA  A4 56
  lda a:_data_9b53_indexed,Y     ; $9ADC  B9 53 9B
  clc                            ; $9ADF  18
  adc z:_var_00bc                ; $9AE0  65 BC
  sta z:_var_00bc                ; $9AE2  85 BC
  lda #$00                       ; $9AE4  A9 00
  sta z:_var_0049                ; $9AE6  85 49
  sta z:_var_0052                ; $9AE8  85 52
  lda z:_var_0056                ; $9AEA  A5 56
  cmp #$04                       ; $9AEC  C9 04
  bne _label_9af5                ; $9AEE  D0 05
  lda #$04                       ; $9AF0  A9 04
  sta a:_var_06f1                ; $9AF2  8D F1 06

_label_9af5:
  inc z:_var_0048                ; $9AF5  E6 48
  lda z:_var_0056                ; $9AF7  A5 56
  bne _label_9b02                ; $9AF9  D0 07
  inc z:_var_0048                ; $9AFB  E6 48
  lda #$07                       ; $9AFD  A9 07
  sta a:_var_06f1                ; $9AFF  8D F1 06

_label_9b02:
  rts                            ; $9B02  60

_label_9b03:
  lda z:_var_00be                ; $9B03  A5 BE
  cmp #$01                       ; $9B05  C9 01
  beq _label_9b50                ; $9B07  F0 47
  ldy z:_var_00bb                ; $9B09  A4 BB
  beq _label_9b50                ; $9B0B  F0 43
  lda z:_var_0049                ; $9B0D  A5 49
  cmp #$20                       ; $9B0F  C9 20
  bmi _label_9b52                ; $9B11  30 3F
  lda a:_data_96d6_indexed,Y     ; $9B13  B9 D6 96
  sta z:_var_00a9                ; $9B16  85 A9
  lda #$00                       ; $9B18  A9 00
  sta z:_var_00a8_indexed        ; $9B1A  85 A8

_label_9b1c:
  ldy z:_var_00a9                ; $9B1C  A4 A9
  lda (_var_00b8_indexed),Y      ; $9B1E  B1 B8
  ldy z:_var_00a8_indexed        ; $9B20  A4 A8
  sta (_var_00b8_indexed),Y      ; $9B22  91 B8
  inc z:_var_00a8_indexed        ; $9B24  E6 A8
  inc z:_var_00a9                ; $9B26  E6 A9
  lda z:_var_00a9                ; $9B28  A5 A9
  cmp #$C8                       ; $9B2A  C9 C8
  bne _label_9b1c                ; $9B2C  D0 EE
  iny                            ; $9B2E  C8
  ldx #$00                       ; $9B2F  A2 00

_label_9b31:
  cpx z:$5A                      ; $9B31  E4 5A
  beq _label_9b3a                ; $9B33  F0 05
  lda #$78                       ; $9B35  A9 78
  jmp _label_9b3c                ; $9B37  4C 3C 9B

_label_9b3a:
  lda #$FF                       ; $9B3A  A9 FF

_label_9b3c:
  sta (_var_00b8_indexed),Y      ; $9B3C  91 B8
  inx                            ; $9B3E  E8
  cpx #$0A                       ; $9B3F  E0 0A
  bne _label_9b45                ; $9B41  D0 02
  ldx #$00                       ; $9B43  A2 00

_label_9b45:
  iny                            ; $9B45  C8
  cpy #$C8                       ; $9B46  C0 C8
  bne _label_9b31                ; $9B48  D0 E7
  lda #$00                       ; $9B4A  A9 00
  sta z:_var_00bb                ; $9B4C  85 BB
  sta z:_var_0049                ; $9B4E  85 49

_label_9b50:
  inc z:_var_0048                ; $9B50  E6 48

_label_9b52:
  rts                            ; $9B52  60

_data_9b53_indexed:
.byte $00, $00, $01, $02, $04    ; $9B53

_label_9b58:
  jsr _func_9d17                 ; $9B58  20 17 9D
  lda z:_var_0056                ; $9B5B  A5 56
  bne _label_9b62                ; $9B5D  D0 03
  jmp _label_9bfe                ; $9B5F  4C FE 9B

_label_9b62:
  tax                            ; $9B62  AA
  dex                            ; $9B63  CA
  lda z:_var_00d8_indexed,X      ; $9B64  B5 D8
  clc                            ; $9B66  18
  adc #$01                       ; $9B67  69 01
  sta z:_var_00d8_indexed,X      ; $9B69  95 D8
  and #$0F                       ; $9B6B  29 0F
  cmp #$0A                       ; $9B6D  C9 0A
  bmi _label_9b78                ; $9B6F  30 07
  lda z:_var_00d8_indexed,X      ; $9B71  B5 D8
  clc                            ; $9B73  18
  adc #$06                       ; $9B74  69 06
  sta z:_var_00d8_indexed,X      ; $9B76  95 D8

_label_9b78:
  lda z:_var_00a3                ; $9B78  A5 A3
  ora #$01                       ; $9B7A  09 01
  sta z:_var_00a3                ; $9B7C  85 A3
  lda z:_var_00c1                ; $9B7E  A5 C1
  beq _label_9ba6                ; $9B80  F0 24
  lda z:_var_0056                ; $9B82  A5 56
  sta z:_var_00a8_indexed        ; $9B84  85 A8
  lda z:_var_0050                ; $9B86  A5 50
  sec                            ; $9B88  38
  sbc z:_var_00a8_indexed        ; $9B89  E5 A8
  sta z:_var_0050                ; $9B8B  85 50
  bpl _label_9b96                ; $9B8D  10 07
  lda #$00                       ; $9B8F  A9 00
  sta z:_var_0050                ; $9B91  85 50
  jmp _label_9bfe                ; $9B93  4C FE 9B

_label_9b96:
  and #$0F                       ; $9B96  29 0F
  cmp #$0A                       ; $9B98  C9 0A
  bmi _label_9bfe                ; $9B9A  30 62
  lda z:_var_0050                ; $9B9C  A5 50
  sec                            ; $9B9E  38
  sbc #$06                       ; $9B9F  E9 06
  sta z:_var_0050                ; $9BA1  85 50
  jmp _label_9bfe                ; $9BA3  4C FE 9B

_label_9ba6:
  ldx z:_var_0056                ; $9BA6  A6 56

_label_9ba8:
  inc z:_var_0050                ; $9BA8  E6 50
  lda z:_var_0050                ; $9BAA  A5 50
  and #$0F                       ; $9BAC  29 0F
  cmp #$0A                       ; $9BAE  C9 0A
  bmi _label_9bc7                ; $9BB0  30 15
  lda z:_var_0050                ; $9BB2  A5 50
  clc                            ; $9BB4  18
  adc #$06                       ; $9BB5  69 06
  sta z:_var_0050                ; $9BB7  85 50
  and #$F0                       ; $9BB9  29 F0
  cmp #$A0                       ; $9BBB  C9 A0
  bcc _label_9bc7                ; $9BBD  90 08
  lda z:_var_0050                ; $9BBF  A5 50
  and #$0F                       ; $9BC1  29 0F
  sta z:_var_0050                ; $9BC3  85 50
  inc z:_var_0051                ; $9BC5  E6 51

_label_9bc7:
  lda z:_var_0050                ; $9BC7  A5 50
  and #$0F                       ; $9BC9  29 0F
  bne _label_9bfb                ; $9BCB  D0 2E
  jmp _label_9bd0                ; $9BCD  4C D0 9B

_label_9bd0:
  lda z:_var_0051                ; $9BD0  A5 51
  sta z:_var_00a9                ; $9BD2  85 A9
  lda z:_var_0050                ; $9BD4  A5 50
  sta z:_var_00a8_indexed        ; $9BD6  85 A8
  lsr z:_var_00a9                ; $9BD8  46 A9
  ror z:_var_00a8_indexed        ; $9BDA  66 A8
  lsr z:_var_00a9                ; $9BDC  46 A9
  ror z:_var_00a8_indexed        ; $9BDE  66 A8
  lsr z:_var_00a9                ; $9BE0  46 A9
  ror z:_var_00a8_indexed        ; $9BE2  66 A8
  lsr z:_var_00a9                ; $9BE4  46 A9
  ror z:_var_00a8_indexed        ; $9BE6  66 A8
  lda z:_var_0044                ; $9BE8  A5 44
  cmp z:_var_00a8_indexed        ; $9BEA  C5 A8
  bpl _label_9bfb                ; $9BEC  10 0D
  inc z:_var_0044                ; $9BEE  E6 44
  lda #$06                       ; $9BF0  A9 06
  sta a:_var_06f1                ; $9BF2  8D F1 06
  lda z:_var_00a3                ; $9BF5  A5 A3
  ora #$02                       ; $9BF7  09 02
  sta z:_var_00a3                ; $9BF9  85 A3

_label_9bfb:
  dex                            ; $9BFB  CA
  bne _label_9ba8                ; $9BFC  D0 AA

_label_9bfe:
  lda z:_var_004f                ; $9BFE  A5 4F
  cmp #$02                       ; $9C00  C9 02
  bmi _label_9c2d                ; $9C02  30 29
  clc                            ; $9C04  18
  dec z:_var_0053                ; $9C05  C6 53
  adc z:_var_0053                ; $9C07  65 53
  sta z:_var_0053                ; $9C09  85 53
  and #$0F                       ; $9C0B  29 0F
  cmp #$0A                       ; $9C0D  C9 0A
  bcc _label_9c18                ; $9C0F  90 07
  lda z:_var_0053                ; $9C11  A5 53
  clc                            ; $9C13  18
  adc #$06                       ; $9C14  69 06
  sta z:_var_0053                ; $9C16  85 53

_label_9c18:
  lda z:_var_0053                ; $9C18  A5 53
  and #$F0                       ; $9C1A  29 F0
  cmp #$A0                       ; $9C1C  C9 A0
  bcc _label_9c27                ; $9C1E  90 07
  clc                            ; $9C20  18
  adc #$60                       ; $9C21  69 60
  sta z:_var_0053                ; $9C23  85 53
  inc z:_var_0054                ; $9C25  E6 54

_label_9c27:
  lda z:_var_00a3                ; $9C27  A5 A3
  ora #$04                       ; $9C29  09 04
  sta z:_var_00a3                ; $9C2B  85 A3

_label_9c2d:
  lda #$00                       ; $9C2D  A9 00
  sta z:_var_004f                ; $9C2F  85 4F
  lda z:_var_0044                ; $9C31  A5 44
  sta z:_var_00a8_indexed        ; $9C33  85 A8
  inc z:_var_00a8_indexed        ; $9C35  E6 A8

_label_9c37:
  lda z:_var_0056                ; $9C37  A5 56
  asl a                          ; $9C39  0A
  tax                            ; $9C3A  AA
  lda a:_data_9ca5_indexed,X     ; $9C3B  BD A5 9C
  clc                            ; $9C3E  18
  adc z:_var_0053                ; $9C3F  65 53
  sta z:_var_0053                ; $9C41  85 53
  cmp #$A0                       ; $9C43  C9 A0
  bcc _label_9c4e                ; $9C45  90 07
  clc                            ; $9C47  18
  adc #$60                       ; $9C48  69 60
  sta z:_var_0053                ; $9C4A  85 53
  inc z:_var_0054                ; $9C4C  E6 54

_label_9c4e:
  inx                            ; $9C4E  E8
  lda a:_data_9ca5_indexed,X     ; $9C4F  BD A5 9C
  clc                            ; $9C52  18
  adc z:_var_0054                ; $9C53  65 54
  sta z:_var_0054                ; $9C55  85 54
  and #$0F                       ; $9C57  29 0F
  cmp #$0A                       ; $9C59  C9 0A
  bcc _label_9c64                ; $9C5B  90 07
  lda z:_var_0054                ; $9C5D  A5 54
  clc                            ; $9C5F  18
  adc #$06                       ; $9C60  69 06
  sta z:_var_0054                ; $9C62  85 54

_label_9c64:
  lda z:_var_0054                ; $9C64  A5 54
  and #$F0                       ; $9C66  29 F0
  cmp #$A0                       ; $9C68  C9 A0
  bcc _label_9c75                ; $9C6A  90 09
  lda z:_var_0054                ; $9C6C  A5 54
  clc                            ; $9C6E  18
  adc #$60                       ; $9C6F  69 60
  sta z:_var_0054                ; $9C71  85 54
  inc z:_var_0055                ; $9C73  E6 55

_label_9c75:
  lda z:_var_0055                ; $9C75  A5 55
  and #$0F                       ; $9C77  29 0F
  cmp #$0A                       ; $9C79  C9 0A
  bcc _label_9c84                ; $9C7B  90 07
  lda z:_var_0055                ; $9C7D  A5 55
  clc                            ; $9C7F  18
  adc #$06                       ; $9C80  69 06
  sta z:_var_0055                ; $9C82  85 55

_label_9c84:
  lda z:_var_0055                ; $9C84  A5 55
  and #$F0                       ; $9C86  29 F0
  cmp #$A0                       ; $9C88  C9 A0
  bcc _label_9c94                ; $9C8A  90 08
  lda #$99                       ; $9C8C  A9 99
  sta z:_var_0053                ; $9C8E  85 53
  sta z:_var_0054                ; $9C90  85 54
  sta z:_var_0055                ; $9C92  85 55

_label_9c94:
  dec z:_var_00a8_indexed        ; $9C94  C6 A8
  bne _label_9c37                ; $9C96  D0 9F
  lda z:_var_00a3                ; $9C98  A5 A3
  ora #$04                       ; $9C9A  09 04
  sta z:_var_00a3                ; $9C9C  85 A3
  lda #$00                       ; $9C9E  A9 00
  sta z:_var_0056                ; $9CA0  85 56
  inc z:_var_0048                ; $9CA2  E6 48
  rts                            ; $9CA4  60

_data_9ca5_indexed:
.byte $00, $00, $40, $00, $00, $01, $00, $03, $00, $12 ; $9CA5

_func_9caf:
  ldx z:_var_0041                ; $9CAF  A6 41
  dex                            ; $9CB1  CA
  dex                            ; $9CB2  CA
  txa                            ; $9CB3  8A
  bpl _label_9cb8                ; $9CB4  10 02
  lda #$00                       ; $9CB6  A9 00

_label_9cb8:
  cmp z:_var_0049                ; $9CB8  C5 49
  bpl _label_9cbe                ; $9CBA  10 02
  sta z:_var_0049                ; $9CBC  85 49

_label_9cbe:
  rts                            ; $9CBE  60

_label_9cbf:
  lda #$05                       ; $9CBF  A9 05
  sta z:_var_00a9                ; $9CC1  85 A9
  lda z:_var_0068                ; $9CC3  A5 68
  cmp #$00                       ; $9CC5  C9 00
  beq _label_9cd9                ; $9CC7  F0 10
  lda z:_var_00be                ; $9CC9  A5 BE
  cmp #$01                       ; $9CCB  C9 01
  beq _label_9d14                ; $9CCD  F0 45
  lda #$04                       ; $9CCF  A9 04
  sta z:_var_00a9                ; $9CD1  85 A9
  lda z:_var_0088                ; $9CD3  A5 88
  cmp #$00                       ; $9CD5  C9 00
  bne _label_9d14                ; $9CD7  D0 3B

_label_9cd9:
  lda z:_var_00be                ; $9CD9  A5 BE
  cmp #$01                       ; $9CDB  C9 01
  beq _label_9ce4                ; $9CDD  F0 05
  lda #$09                       ; $9CDF  A9 09
  sta z:_var_00a7                ; $9CE1  85 A7
  rts                            ; $9CE3  60

_label_9ce4:
  lda #$03                       ; $9CE4  A9 03
  sta z:_var_00bd                ; $9CE6  85 BD
  lda z:_var_00be                ; $9CE8  A5 BE
  cmp #$01                       ; $9CEA  C9 01
  bne _label_9cf1                ; $9CEC  D0 03
  jsr _func_a0ee                 ; $9CEE  20 EE A0

_label_9cf1:
  lda #$01                       ; $9CF1  A9 01
  sta z:_var_0068                ; $9CF3  85 68
  sta z:_var_0088                ; $9CF5  85 88
  lda #$EF                       ; $9CF7  A9 EF
  ldx #$04                       ; $9CF9  A2 04
  ldy #$05                       ; $9CFB  A0 05
  jsr _func_ac6a                 ; $9CFD  20 6A AC
  lda #$00                       ; $9D00  A9 00
  sta z:_var_0069                ; $9D02  85 69
  sta z:_var_0089                ; $9D04  85 89
  lda #$01                       ; $9D06  A9 01
  sta z:_var_0068                ; $9D08  85 68
  sta z:_var_0088                ; $9D0A  85 88
  jsr _func_aa2f                 ; $9D0C  20 2F AA
  lda #$03                       ; $9D0F  A9 03
  sta z:_var_00c0                ; $9D11  85 C0
  rts                            ; $9D13  60

_label_9d14:
  inc z:_var_00a7                ; $9D14  E6 A7
  rts                            ; $9D16  60

_func_9d17:
  ldx #$05                       ; $9D17  A2 05
  lda a:_data_96d6_indexed,X     ; $9D19  BD D6 96
  tay                            ; $9D1C  A8
  ldx #$0A                       ; $9D1D  A2 0A

_label_9d1f:
  lda (_var_00b8_indexed),Y      ; $9D1F  B1 B8
  cmp #$EF                       ; $9D21  C9 EF
  bne _label_9d3c                ; $9D23  D0 17
  iny                            ; $9D25  C8
  dex                            ; $9D26  CA
  bne _label_9d1f                ; $9D27  D0 F6
  lda z:_var_00ba                ; $9D29  A5 BA
  beq _label_9d50                ; $9D2B  F0 23
  lda #$00                       ; $9D2D  A9 00
  sta z:_var_00ba                ; $9D2F  85 BA
  ldx z:_var_00c2                ; $9D31  A6 C2
  lda a:_data_85d2_indexed,X     ; $9D33  BD D2 85
  jsr _func_9e07                 ; $9D36  20 07 9E
  jmp _label_9d50                ; $9D39  4C 50 9D

_label_9d3c:
  lda z:_var_00ba                ; $9D3C  A5 BA
  bne _label_9d50                ; $9D3E  D0 10
  lda #$FF                       ; $9D40  A9 FF
  sta z:_var_00ba                ; $9D42  85 BA
  lda z:_var_00c2                ; $9D44  A5 C2
  clc                            ; $9D46  18
  adc #$04                       ; $9D47  69 04
  tax                            ; $9D49  AA
  lda a:_data_85d2_indexed,X     ; $9D4A  BD D2 85
  jsr _func_9e07                 ; $9D4D  20 07 9E

_label_9d50:
  rts                            ; $9D50  60

_func_9d51:
  lda z:_var_00c0                ; $9D51  A5 C0
  cmp #$05                       ; $9D53  C9 05
  beq _label_9d5b                ; $9D55  F0 04
  jsr _func_ab9d                 ; $9D57  20 9D AB
  rts                            ; $9D5A  60

_label_9d5b:
  lda z:_var_00d0                ; $9D5B  A5 D0
  cmp #$FF                       ; $9D5D  C9 FF
  beq _label_9db0                ; $9D5F  F0 4F
  jsr _func_ab9d                 ; $9D61  20 9D AB
  lda z:_var_00f5_indexed        ; $9D64  A5 F5
  cmp #$10                       ; $9D66  C9 10
  beq _label_9da3                ; $9D68  F0 39
  lda z:_var_00cf                ; $9D6A  A5 CF
  beq _label_9d73                ; $9D6C  F0 05
  dec z:_var_00cf                ; $9D6E  C6 CF
  jmp _label_9d9a                ; $9D70  4C 9A 9D

_label_9d73:
  ldx #$00                       ; $9D73  A2 00
  lda (_var_00d1_indexed,X)      ; $9D75  A1 D1
  sta z:_var_00a8_indexed        ; $9D77  85 A8
  jsr _func_9de8                 ; $9D79  20 E8 9D
  lda z:_var_00ce                ; $9D7C  A5 CE
  eor z:_var_00a8_indexed        ; $9D7E  45 A8
  and z:_var_00a8_indexed        ; $9D80  25 A8
  sta z:_var_00f5_indexed        ; $9D82  85 F5
  lda z:_var_00a8_indexed        ; $9D84  A5 A8
  sta z:_var_00ce                ; $9D86  85 CE
  ldx #$00                       ; $9D88  A2 00
  lda (_var_00d1_indexed,X)      ; $9D8A  A1 D1
  sta z:_var_00cf                ; $9D8C  85 CF
  jsr _func_9de8                 ; $9D8E  20 E8 9D
  lda z:_var_00d2                ; $9D91  A5 D2
  cmp #$DF                       ; $9D93  C9 DF
  beq _label_9da2                ; $9D95  F0 0B
  jmp _label_9d9e                ; $9D97  4C 9E 9D

_label_9d9a:
  lda #$00                       ; $9D9A  A9 00
  sta z:_var_00f5_indexed        ; $9D9C  85 F5

_label_9d9e:
  lda z:_var_00ce                ; $9D9E  A5 CE
  sta z:_var_00f7_indexed        ; $9DA0  85 F7

_label_9da2:
  rts                            ; $9DA2  60

_label_9da3:
  lda #$DD                       ; $9DA3  A9 DD
  sta z:_var_00d2                ; $9DA5  85 D2
  lda #$00                       ; $9DA7  A9 00
  sta z:_var_00b2                ; $9DA9  85 B2
  lda #$01                       ; $9DAB  A9 01
  sta z:_var_00c0                ; $9DAD  85 C0
  rts                            ; $9DAF  60

_label_9db0:
  jsr _func_ab9d                 ; $9DB0  20 9D AB
  lda z:_var_00c0                ; $9DB3  A5 C0
  cmp #$05                       ; $9DB5  C9 05
  bne _label_9de7                ; $9DB7  D0 2E
  lda z:_var_00d0                ; $9DB9  A5 D0
  cmp #$FF                       ; $9DBB  C9 FF
  bne _label_9de7                ; $9DBD  D0 28
  lda z:_var_00f7_indexed        ; $9DBF  A5 F7
  cmp z:_var_00ce                ; $9DC1  C5 CE
  beq _label_9de4                ; $9DC3  F0 1F
  ldx #$00                       ; $9DC5  A2 00
  lda z:_var_00ce                ; $9DC7  A5 CE
  sta (_var_00d1_indexed,X)      ; $9DC9  81 D1
  jsr _func_9de8                 ; $9DCB  20 E8 9D
  lda z:_var_00cf                ; $9DCE  A5 CF
  sta (_var_00d1_indexed,X)      ; $9DD0  81 D1
  jsr _func_9de8                 ; $9DD2  20 E8 9D
  lda z:_var_00d2                ; $9DD5  A5 D2
  cmp #$DF                       ; $9DD7  C9 DF
  beq _label_9de7                ; $9DD9  F0 0C
  lda z:_var_00f7_indexed        ; $9DDB  A5 F7
  sta z:_var_00ce                ; $9DDD  85 CE
  lda #$00                       ; $9DDF  A9 00
  sta z:_var_00cf                ; $9DE1  85 CF
  rts                            ; $9DE3  60

_label_9de4:
  inc z:_var_00cf                ; $9DE4  E6 CF
  rts                            ; $9DE6  60

_label_9de7:
  rts                            ; $9DE7  60

_func_9de8:
  lda z:_var_00d1_indexed        ; $9DE8  A5 D1
  clc                            ; $9DEA  18
  adc #$01                       ; $9DEB  69 01
  sta z:_var_00d1_indexed        ; $9DED  85 D1
  lda #$00                       ; $9DEF  A9 00
  adc z:_var_00d2                ; $9DF1  65 D2
  sta z:_var_00d2                ; $9DF3  85 D2
  rts                            ; $9DF5  60

_label_9df6:
  lda #$00                       ; $9DF6  A9 00
  sta z:_var_00c1                ; $9DF8  85 C1
  sta z:_var_0067                ; $9DFA  85 67
  sta z:_var_00a7                ; $9DFC  85 A7
  sta z:_var_0068                ; $9DFE  85 68
  lda #$05                       ; $9E00  A9 05
  sta z:_var_00c0                ; $9E02  85 C0
  jmp _label_815d                ; $9E04  4C 5D 81

_func_9e07:
  sta a:_var_06f5                ; $9E07  8D F5 06
  lda z:_var_00c0                ; $9E0A  A5 C0
  cmp #$05                       ; $9E0C  C9 05
  bne _label_9e15                ; $9E0E  D0 05
  lda #$FF                       ; $9E10  A9 FF
  sta a:_var_06f5                ; $9E12  8D F5 06

_label_9e15:
  rts                            ; $9E15  60

_label_9e16:
  lda z:_var_00f7_indexed        ; $9E16  A5 F7
  cmp #$F0                       ; $9E18  C9 F0
  beq _label_9e1f                ; $9E1A  F0 03
  inc z:_var_00a7                ; $9E1C  E6 A7
  rts                            ; $9E1E  60

_label_9e1f:
  jsr _func_e003                 ; $9E1F  20 03 E0
  lda #$00                       ; $9E22  A9 00
  sta z:_var_00c0                ; $9E24  85 C0
  rts                            ; $9E26  60

_label_9e27:
  lda #$02                       ; $9E27  A9 02
  sta z:_var_00a7                ; $9E29  85 A7
  jsr _func_9874                 ; $9E2B  20 74 98
  rts                            ; $9E2E  60

_label_9e2f:
  lda #$13                       ; $9E2F  A9 13
  sta z:_var_0042                ; $9E31  85 42
  rts                            ; $9E33  60

.byte $e6, $a7, $60              ; $9E34

_label_9e37:
  inc z:_var_0048                ; $9E37  E6 48

_label_9e39:
  rts                            ; $9E39  60

_func_9e3a:
  lda #$02                       ; $9E3A  A9 02
  sta z:_var_00a2                ; $9E3C  85 A2
  lda #$04                       ; $9E3E  A9 04
  sta z:_var_00bd                ; $9E40  85 BD
  lda z:_var_00c1                ; $9E42  A5 C1
  bne _label_9e49                ; $9E44  D0 03
  jmp _label_a926                ; $9E46  4C 26 A9

_label_9e49:
  ldx z:_var_0064                ; $9E49  A6 64
  lda a:_data_96b8_indexed,X     ; $9E4B  BD B8 96
  and #$0F                       ; $9E4E  29 0F
  sta z:_var_0044                ; $9E50  85 44
  lda #$00                       ; $9E52  A9 00
  sta z:_var_00de                ; $9E54  85 DE
  sta z:_var_00dd                ; $9E56  85 DD
  sta z:_var_00dc                ; $9E58  85 DC
  lda z:_var_0044                ; $9E5A  A5 44
  asl a                          ; $9E5C  0A
  asl a                          ; $9E5D  0A
  asl a                          ; $9E5E  0A
  asl a                          ; $9E5F  0A
  sta z:_var_00ab                ; $9E60  85 AB
  lda z:_var_0079                ; $9E62  A5 79
  asl a                          ; $9E64  0A
  asl a                          ; $9E65  0A
  asl a                          ; $9E66  0A
  asl a                          ; $9E67  0A
  sta z:_var_00ac_indexed        ; $9E68  85 AC
  jsr _func_aa52                 ; $9E6A  20 52 AA
  jsr _func_aa78                 ; $9E6D  20 78 AA
  lda z:_var_0044                ; $9E70  A5 44
  cmp #$09                       ; $9E72  C9 09
  bne _label_9e88                ; $9E74  D0 12
  lda #$01                       ; $9E76  A9 01
  jsr _func_acb7                 ; $9E78  20 B7 AC
  lda #$01                       ; $9E7B  A9 01
  jsr _func_accb                 ; $9E7D  20 CB AC
  jsr _func_aa98                 ; $9E80  20 98 AA
  ldx z:_var_00c9                ; $9E83  A6 C9
  jmp _label_9ea4                ; $9E85  4C A4 9E

_label_9e88:
  ldx #$03                       ; $9E88  A2 03
  lda z:_var_0044                ; $9E8A  A5 44
  cmp #$02                       ; $9E8C  C9 02
  beq _label_9e96                ; $9E8E  F0 06
  cmp #$06                       ; $9E90  C9 06
  beq _label_9e96                ; $9E92  F0 02
  ldx #$02                       ; $9E94  A2 02

_label_9e96:
  txa                            ; $9E96  8A
  jsr _func_acb7                 ; $9E97  20 B7 AC
  lda #$02                       ; $9E9A  A9 02
  jsr _func_accb                 ; $9E9C  20 CB AC
  jsr _func_aa98                 ; $9E9F  20 98 AA
  slo z:_var_00ce                ; $9EA2  07 CE

_label_9ea4:
  jsr _func_aa98                 ; $9EA4  20 98 AA
  sre (_var_00ad_indexed,X)      ; $9EA7  43 AD
  jsr _func_a463                 ; $9EA9  20 63 A4
  jsr _func_aa6b                 ; $9EAC  20 6B AA
  jsr _func_aa2f                 ; $9EAF  20 2F AA
  jsr _func_aa5f                 ; $9EB2  20 5F AA
  jsr _func_aa2f                 ; $9EB5  20 2F AA
  lda #$04                       ; $9EB8  A9 04
  sta z:_var_00bd                ; $9EBA  85 BD
  lda #$0A                       ; $9EBC  A9 0A
  jsr _func_9e07                 ; $9EBE  20 07 9E
  lda #$80                       ; $9EC1  A9 80
  jsr _func_a7fd                 ; $9EC3  20 FD A7
  lda z:_var_0073                ; $9EC6  A5 73
  sta z:_var_00dc                ; $9EC8  85 DC
  lda z:_var_0074                ; $9ECA  A5 74
  sta z:_var_00dd                ; $9ECC  85 DD
  lda z:_var_0075                ; $9ECE  A5 75
  sta z:_var_00de                ; $9ED0  85 DE
  lda #$02                       ; $9ED2  A9 02
  sta a:_var_06f1                ; $9ED4  8D F1 06
  lda #$00                       ; $9ED7  A9 00
  sta z:_var_0073                ; $9ED9  85 73
  sta z:_var_0074                ; $9EDB  85 74
  sta z:_var_0075                ; $9EDD  85 75
  lda #$40                       ; $9EDF  A9 40
  jsr _func_a7fd                 ; $9EE1  20 FD A7
  lda z:_var_00ab                ; $9EE4  A5 AB
  beq _label_9f12                ; $9EE6  F0 2A

_label_9ee8:
  dec z:_var_00ab                ; $9EE8  C6 AB
  lda z:_var_00ab                ; $9EEA  A5 AB
  and #$0F                       ; $9EEC  29 0F
  cmp #$0F                       ; $9EEE  C9 0F
  bne _label_9efa                ; $9EF0  D0 08
  lda z:_var_00ab                ; $9EF2  A5 AB
  and #$F0                       ; $9EF4  29 F0
  ora #$09                       ; $9EF6  09 09
  sta z:_var_00ab                ; $9EF8  85 AB

_label_9efa:
  lda z:_var_00ab                ; $9EFA  A5 AB
  jsr _func_9f62                 ; $9EFC  20 62 9F
  lda #$01                       ; $9EFF  A9 01
  sta a:_var_06f1                ; $9F01  8D F1 06
  lda #$02                       ; $9F04  A9 02
  jsr _func_a7fd                 ; $9F06  20 FD A7
  lda z:_var_00ab                ; $9F09  A5 AB
  bne _label_9ee8                ; $9F0B  D0 DB
  lda #$40                       ; $9F0D  A9 40
  jsr _func_a7fd                 ; $9F0F  20 FD A7

_label_9f12:
  lda z:_var_00ac_indexed        ; $9F12  A5 AC
  beq _label_9f45                ; $9F14  F0 2F

_label_9f16:
  dec z:_var_00ac_indexed        ; $9F16  C6 AC
  lda z:_var_00ac_indexed        ; $9F18  A5 AC
  and #$0F                       ; $9F1A  29 0F
  cmp #$0F                       ; $9F1C  C9 0F
  bne _label_9f28                ; $9F1E  D0 08
  lda z:_var_00ac_indexed        ; $9F20  A5 AC
  and #$F0                       ; $9F22  29 F0
  ora #$09                       ; $9F24  09 09
  sta z:_var_00ac_indexed        ; $9F26  85 AC

_label_9f28:
  lda z:_var_00ac_indexed        ; $9F28  A5 AC
  jsr _func_9f62                 ; $9F2A  20 62 9F
  lda #$01                       ; $9F2D  A9 01
  sta a:_var_06f1                ; $9F2F  8D F1 06
  lda #$02                       ; $9F32  A9 02
  jsr _func_a7fd                 ; $9F34  20 FD A7
  lda z:_var_00ac_indexed        ; $9F37  A5 AC
  bne _label_9f16                ; $9F39  D0 DB
  lda #$02                       ; $9F3B  A9 02
  sta a:_var_06f1                ; $9F3D  8D F1 06
  lda #$40                       ; $9F40  A9 40
  jsr _func_a7fd                 ; $9F42  20 FD A7

_label_9f45:
  jsr _func_a527                 ; $9F45  20 27 A5
  jsr _func_aa2f                 ; $9F48  20 2F AA
  lda z:_var_00f5_indexed        ; $9F4B  A5 F5
  cmp #$10                       ; $9F4D  C9 10
  bne _label_9f45                ; $9F4F  D0 F4
  lda z:_var_0064                ; $9F51  A5 64
  sta z:_var_0044                ; $9F53  85 44
  lda z:_var_00dc                ; $9F55  A5 DC
  sta z:_var_0053                ; $9F57  85 53
  lda z:_var_00dd                ; $9F59  A5 DD
  sta z:_var_0054                ; $9F5B  85 54
  lda z:_var_00de                ; $9F5D  A5 DE
  sta z:_var_0055                ; $9F5F  85 55
  rts                            ; $9F61  60

_func_9f62:
  lda #$01                       ; $9F62  A9 01
  clc                            ; $9F64  18
  adc z:_var_00dd                ; $9F65  65 DD
  sta z:_var_00dd                ; $9F67  85 DD
  and #$0F                       ; $9F69  29 0F
  cmp #$0A                       ; $9F6B  C9 0A
  bcc _label_9f76                ; $9F6D  90 07
  lda z:_var_00dd                ; $9F6F  A5 DD
  clc                            ; $9F71  18
  adc #$06                       ; $9F72  69 06
  sta z:_var_00dd                ; $9F74  85 DD

_label_9f76:
  and #$F0                       ; $9F76  29 F0
  cmp #$A0                       ; $9F78  C9 A0
  bcc _label_9f85                ; $9F7A  90 09
  lda z:_var_00dd                ; $9F7C  A5 DD
  clc                            ; $9F7E  18
  adc #$60                       ; $9F7F  69 60
  sta z:_var_00dd                ; $9F81  85 DD
  inc z:_var_00de                ; $9F83  E6 DE

_label_9f85:
  lda z:_var_00de                ; $9F85  A5 DE
  and #$0F                       ; $9F87  29 0F
  cmp #$0A                       ; $9F89  C9 0A
  bcc _label_9f94                ; $9F8B  90 07
  lda z:_var_00de                ; $9F8D  A5 DE
  clc                            ; $9F8F  18
  adc #$06                       ; $9F90  69 06
  sta z:_var_00de                ; $9F92  85 DE

_label_9f94:
  rts                            ; $9F94  60

_label_9f95:
  lda #$20                       ; $9F95  A9 20
  sta PPU_ADDR                   ; $9F97  8D 06 20
  lda #$8E                       ; $9F9A  A9 8E
  sta PPU_ADDR                   ; $9F9C  8D 06 20
  lda z:_var_0075                ; $9F9F  A5 75
  jsr _func_9712                 ; $9FA1  20 12 97
  lda z:_var_0074                ; $9FA4  A5 74
  jsr _func_9712                 ; $9FA6  20 12 97
  lda z:_var_0073                ; $9FA9  A5 73
  jsr _func_9712                 ; $9FAB  20 12 97
  lda z:_var_00c1                ; $9FAE  A5 C1
  beq _label_9fe9                ; $9FB0  F0 37
  lda #$20                       ; $9FB2  A9 20
  sta PPU_ADDR                   ; $9FB4  8D 06 20
  lda #$B0                       ; $9FB7  A9 B0
  sta PPU_ADDR                   ; $9FB9  8D 06 20
  lda z:_var_00ab                ; $9FBC  A5 AB
  jsr _func_9712                 ; $9FBE  20 12 97
  lda #$20                       ; $9FC1  A9 20
  sta PPU_ADDR                   ; $9FC3  8D 06 20
  lda #$D0                       ; $9FC6  A9 D0
  sta PPU_ADDR                   ; $9FC8  8D 06 20
  lda z:_var_00ac_indexed        ; $9FCB  A5 AC
  jsr _func_9712                 ; $9FCD  20 12 97
  lda #$21                       ; $9FD0  A9 21
  sta PPU_ADDR                   ; $9FD2  8D 06 20
  lda #$2E                       ; $9FD5  A9 2E
  sta PPU_ADDR                   ; $9FD7  8D 06 20
  lda z:_var_00de                ; $9FDA  A5 DE
  jsr _func_9712                 ; $9FDC  20 12 97
  lda z:_var_00dd                ; $9FDF  A5 DD
  jsr _func_9712                 ; $9FE1  20 12 97
  lda z:_var_00dc                ; $9FE4  A5 DC
  jsr _func_9712                 ; $9FE6  20 12 97

_label_9fe9:
  ldy #$00                       ; $9FE9  A0 00
  sty PPU_SCROLL                 ; $9FEB  8C 05 20
  sty PPU_SCROLL                 ; $9FEE  8C 05 20
  rts                            ; $9FF1  60

.byte $a5, $be, $c9, $01, $f0, $03, $4c, $85, $a0, $20, $98, $aa, $fe ; $9FF2

_data_9fff:
.byte $c7, $a9, $00, $85, $a9, $a5, $c1, $f0, $04, $a9, $04, $85, $a9, $a5, $a9, $29 ; $9FFF
.byte $03, $0a, $aa, $bd, $86, $a0, $8d, $06, $20, $a5, $a9, $29, $03, $0a, $aa, $e8 ; $A00F
.byte $bd, $86, $a0, $8d, $06, $20, $a5, $a9, $0a, $85, $a8, $0a, $18, $65, $a8, $a8 ; $A01F
.byte $a2, $06, $b9, $00, $07, $84, $a8, $a8, $b9, $8c, $a0, $a4, $a8, $8d, $07, $20 ; $A02F
.byte $c8, $ca, $d0, $ee, $a9, $ff, $8d, $07, $20, $a5, $a9, $85, $a8, $0a, $18, $65 ; $A03F
.byte $a8, $a8, $b9, $30, $07, $20, $12, $97, $c8, $b9, $30, $07, $20, $12, $97, $c8 ; $A04F
.byte $b9, $30, $07, $20, $12, $97, $a9, $ff, $8d, $07, $20, $a4, $a9, $b9, $48, $07 ; $A05F
.byte $aa, $bd, $bc, $a0, $20, $12, $97, $e6, $a9, $a5, $a9, $c9, $03, $f0, $07, $c9 ; $A06F
.byte $07, $f0, $03, $4c, $0c, $a0, $60 ; $A07F

_data_a086_indexed:
.byte $22, $89, $22, $c9, $23, $09 ; $A086

_data_a08c_indexed:
.byte $24, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18 ; $A08C
.byte $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $00, $01, $02, $03, $04 ; $A09C
.byte $05, $06, $07, $08, $09, $25, $4f, $5e, $5f, $6e, $6f, $ff, $00, $00, $00, $00 ; $A0AC
.byte $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $10, $11, $12, $13, $14, $15 ; $A0BC
.byte $16, $17, $18, $19, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $30, $31 ; $A0CC
.byte $32, $33, $34, $35, $36, $37, $38, $39, $40, $41, $42, $43, $44, $45, $46, $47 ; $A0DC
.byte $48, $49                   ; $A0EC

_func_a0ee:
  lda #$00                       ; $A0EE  A9 00
  sta z:_var_00d5                ; $A0F0  85 D5
  lda z:_var_00c1                ; $A0F2  A5 C1
  beq _label_a0fa                ; $A0F4  F0 04
  lda #$04                       ; $A0F6  A9 04
  sta z:_var_00d5                ; $A0F8  85 D5

_label_a0fa:
  lda z:_var_00d5                ; $A0FA  A5 D5
  sta z:_var_00a9                ; $A0FC  85 A9
  asl a                          ; $A0FE  0A
  clc                            ; $A0FF  18
  adc z:_var_00a9                ; $A100  65 A9
  tay                            ; $A102  A8
  lda a:_var_0730_indexed,Y      ; $A103  B9 30 07
  cmp z:_var_0075                ; $A106  C5 75
  beq _label_a10e                ; $A108  F0 04
  bcs _label_a124                ; $A10A  B0 18
  bcc _label_a134                ; $A10C  90 26

_label_a10e:
  iny                            ; $A10E  C8
  lda a:_var_0730_indexed,Y      ; $A10F  B9 30 07
  cmp z:_var_0074                ; $A112  C5 74
  beq _label_a11a                ; $A114  F0 04
  bcs _label_a124                ; $A116  B0 0C
  bcc _label_a134                ; $A118  90 1A

_label_a11a:
  iny                            ; $A11A  C8
  lda a:_var_0730_indexed,Y      ; $A11B  B9 30 07
  cmp z:_var_0073                ; $A11E  C5 73
  beq _label_a134                ; $A120  F0 12
  bcc _label_a134                ; $A122  90 10

_label_a124:
  inc z:_var_00d5                ; $A124  E6 D5
  lda z:_var_00d5                ; $A126  A5 D5
  cmp #$03                       ; $A128  C9 03
  beq _label_a133                ; $A12A  F0 07
  cmp #$07                       ; $A12C  C9 07
  beq _label_a133                ; $A12E  F0 03
  jmp _label_a0fa                ; $A130  4C FA A0

_label_a133:
  rts                            ; $A133  60

_label_a134:
  lda z:_var_00d5                ; $A134  A5 D5
  and #$03                       ; $A136  29 03
  cmp #$02                       ; $A138  C9 02
  bpl _label_a160                ; $A13A  10 24
  lda #$06                       ; $A13C  A9 06
  jsr _func_a192                 ; $A13E  20 92 A1
  lda #$03                       ; $A141  A9 03
  jsr _func_a1c1                 ; $A143  20 C1 A1
  lda #$01                       ; $A146  A9 01
  jsr _func_a1e0                 ; $A148  20 E0 A1
  lda z:_var_00d5                ; $A14B  A5 D5
  and #$03                       ; $A14D  29 03
  bne _label_a160                ; $A14F  D0 0F
  lda #$00                       ; $A151  A9 00
  jsr _func_a192                 ; $A153  20 92 A1
  lda #$00                       ; $A156  A9 00
  jsr _func_a1c1                 ; $A158  20 C1 A1
  lda #$00                       ; $A15B  A9 00
  jsr _func_a1e0                 ; $A15D  20 E0 A1

_label_a160:
  ldx z:_var_00d5                ; $A160  A6 D5
  lda a:_data_a1f1_indexed,X     ; $A162  BD F1 A1
  tax                            ; $A165  AA
  ldy #$06                       ; $A166  A0 06
  lda #$00                       ; $A168  A9 00

_label_a16a:
  sta a:_var_0700_indexed,X      ; $A16A  9D 00 07
  inx                            ; $A16D  E8
  dey                            ; $A16E  88
  bne _label_a16a                ; $A16F  D0 F9
  ldx z:_var_00d5                ; $A171  A6 D5
  lda a:_data_a1f9_indexed,X     ; $A173  BD F9 A1
  tax                            ; $A176  AA
  lda z:_var_0075                ; $A177  A5 75
  sta a:_var_0730_indexed,X      ; $A179  9D 30 07
  inx                            ; $A17C  E8
  lda z:_var_0074                ; $A17D  A5 74
  sta a:_var_0730_indexed,X      ; $A17F  9D 30 07
  inx                            ; $A182  E8
  lda z:_var_0073                ; $A183  A5 73
  sta a:_var_0730_indexed,X      ; $A185  9D 30 07
  ldx z:_var_00d5                ; $A188  A6 D5
  lda z:_var_0064                ; $A18A  A5 64
  sta a:_var_0748_indexed,X      ; $A18C  9D 48 07
  jmp _label_a201                ; $A18F  4C 01 A2

_func_a192:
  sta z:_var_00a8_indexed        ; $A192  85 A8
  lda z:_var_00c1                ; $A194  A5 C1
  beq _label_a19f                ; $A196  F0 07
  lda #$18                       ; $A198  A9 18
  clc                            ; $A19A  18
  adc z:_var_00a8_indexed        ; $A19B  65 A8
  sta z:_var_00a8_indexed        ; $A19D  85 A8

_label_a19f:
  lda #$05                       ; $A19F  A9 05
  sta z:_var_00a9                ; $A1A1  85 A9

_label_a1a3:
  lda z:_var_00a8_indexed        ; $A1A3  A5 A8
  clc                            ; $A1A5  18
  adc z:_var_00a9                ; $A1A6  65 A9
  tax                            ; $A1A8  AA
  lda a:_var_0700_indexed,X      ; $A1A9  BD 00 07
  sta z:_var_00aa                ; $A1AC  85 AA
  txa                            ; $A1AE  8A
  clc                            ; $A1AF  18
  adc #$06                       ; $A1B0  69 06
  tax                            ; $A1B2  AA
  lda z:_var_00aa                ; $A1B3  A5 AA
  sta a:_var_0700_indexed,X      ; $A1B5  9D 00 07
  dec z:_var_00a9                ; $A1B8  C6 A9
  lda z:_var_00a9                ; $A1BA  A5 A9
  cmp #$FF                       ; $A1BC  C9 FF
  bne _label_a1a3                ; $A1BE  D0 E3
  rts                            ; $A1C0  60

_func_a1c1:
  tax                            ; $A1C1  AA
  lda z:_var_00c1                ; $A1C2  A5 C1
  beq _label_a1cb                ; $A1C4  F0 05
  txa                            ; $A1C6  8A
  clc                            ; $A1C7  18
  adc #$0C                       ; $A1C8  69 0C
  tax                            ; $A1CA  AA

_label_a1cb:
  lda a:_var_0730_indexed,X      ; $A1CB  BD 30 07
  sta a:_var_0733_indexed,X      ; $A1CE  9D 33 07
  inx                            ; $A1D1  E8
  lda a:_var_0730_indexed,X      ; $A1D2  BD 30 07
  sta a:_var_0733_indexed,X      ; $A1D5  9D 33 07
  inx                            ; $A1D8  E8
  lda a:_var_0730_indexed,X      ; $A1D9  BD 30 07
  sta a:_var_0733_indexed,X      ; $A1DC  9D 33 07
  rts                            ; $A1DF  60

_func_a1e0:
  tax                            ; $A1E0  AA
  lda z:_var_00c1                ; $A1E1  A5 C1
  beq _label_a1ea                ; $A1E3  F0 05
  txa                            ; $A1E5  8A
  clc                            ; $A1E6  18
  adc #$04                       ; $A1E7  69 04
  tax                            ; $A1E9  AA

_label_a1ea:
  lda a:_var_0748_indexed,X      ; $A1EA  BD 48 07
  sta a:_var_0749_indexed,X      ; $A1ED  9D 49 07
  rts                            ; $A1F0  60

_data_a1f1_indexed:
.byte $00, $06, $0c, $12, $18, $1e, $24, $2a ; $A1F1

_data_a1f9_indexed:
.byte $00, $03, $06, $09, $0c, $0f, $12, $15 ; $A1F9

_label_a201:
  inc a:_data_8000               ; $A201  EE 00 80
  lda #$10                       ; $A204  A9 10
  jsr _func_aca3                 ; $A206  20 A3 AC
  lda #$09                       ; $A209  A9 09
  jsr _func_9e07                 ; $A20B  20 07 9E
  lda #$02                       ; $A20E  A9 02
  sta z:_var_00bd                ; $A210  85 BD
  jsr _func_aa52                 ; $A212  20 52 AA
  jsr _func_aa78                 ; $A215  20 78 AA
  lda #$00                       ; $A218  A9 00
  jsr _func_acb7                 ; $A21A  20 B7 AC
  lda #$00                       ; $A21D  A9 00
  jsr _func_accb                 ; $A21F  20 CB AC
  jsr _func_aa98                 ; $A222  20 98 AA

.byte $2b, $ad, $20, $98, $aa, $9d, $c3, $a9, $20, $8d, $06, $20, $a9, $6d, $8d, $06 ; $A225
.byte $20, $a9, $0a, $18, $65, $c1, $8d, $07, $20, $20, $f2, $9f, $a9, $02, $85, $bd ; $A235
.byte $20, $6b, $aa, $20, $2f, $aa, $20, $5f, $aa, $20, $2f, $aa, $a5, $d5, $0a, $85 ; $A245
.byte $a8, $0a, $18, $65, $a8, $85, $d6, $a9, $00, $85, $d4, $8d, $00, $02, $a5, $d5 ; $A255
.byte $29, $03, $aa, $bd, $3b, $a3, $85, $a1, $a9, $00, $8d, $00, $02, $a6, $d4, $bd ; $A265
.byte $3e, $a3, $85, $a0, $a9, $0e, $85, $a2, $a5, $b1, $29, $03, $d0, $04, $a9, $02 ; $A275
.byte $85, $a2, $20, $27, $8c, $a5, $f5, $29, $10, $f0, $08, $a9, $02, $8d, $f1, $06 ; $A285
.byte $4c, $37, $a3, $a5, $f5, $29, $81, $f0, $11, $a9, $01, $8d, $f1, $06, $e6, $d4 ; $A295
.byte $a5, $d4, $c9, $06, $30, $04, $a9, $00, $85, $d4, $a5, $f5, $29, $42, $f0, $0f ; $A2A5
.byte $a9, $01, $8d, $f1, $06, $c6, $d4, $a5, $d4, $10, $04, $a9, $05, $85, $d4, $a5 ; $A2B5
.byte $f7, $29, $04, $f0, $28, $a5, $b1, $29, $07, $d0, $22, $a9, $01, $8d, $f1, $06 ; $A2C5
.byte $a5, $d6, $85, $a8, $18, $65, $d4, $aa, $bd, $00, $07, $85, $a8, $c6, $a8, $a5 ; $A2D5
.byte $a8, $10, $05, $18, $69, $2c, $85, $a8, $a5, $a8, $9d, $00, $07, $a5, $f7, $29 ; $A2E5
.byte $08, $f0, $2a, $a5, $b1, $29, $07, $d0, $24, $a9, $01, $8d, $f1, $06, $a5, $d6 ; $A2F5
.byte $85, $a8, $18, $65, $d4, $aa, $bd, $00, $07, $85, $a8, $e6, $a8, $a5, $a8, $c9 ; $A305
.byte $2c, $30, $05, $38, $e9, $2c, $85, $a8, $a5, $a8, $9d, $00, $07, $a5, $d6, $18 ; $A315
.byte $65, $d4, $aa, $bd, $00, $07, $85, $d7, $a9, $80, $85, $a3, $20, $2f, $aa, $4c ; $A325
.byte $6d, $a2, $20, $2f, $aa, $60, $9f, $af, $bf, $48, $50, $58, $60, $68, $70 ; $A335

_label_a344:
  lda z:_var_00a3                ; $A344  A5 A3
  and #$80                       ; $A346  29 80
  beq _label_a37e                ; $A348  F0 34
  lda z:_var_00d5                ; $A34A  A5 D5
  and #$03                       ; $A34C  29 03
  asl a                          ; $A34E  0A
  tax                            ; $A34F  AA
  lda a:_data_a086_indexed,X     ; $A350  BD 86 A0
  sta PPU_ADDR                   ; $A353  8D 06 20
  lda z:_var_00d5                ; $A356  A5 D5
  and #$03                       ; $A358  29 03
  asl a                          ; $A35A  0A
  tax                            ; $A35B  AA
  inx                            ; $A35C  E8
  lda a:_data_a086_indexed,X     ; $A35D  BD 86 A0
  sta z:_var_00a8_indexed        ; $A360  85 A8
  clc                            ; $A362  18
  adc z:_var_00d4                ; $A363  65 D4
  sta PPU_ADDR                   ; $A365  8D 06 20
  ldx z:$D7                      ; $A368  A6 D7
  lda a:_data_a08c_indexed,X     ; $A36A  BD 8C A0
  sta PPU_DATA                   ; $A36D  8D 07 20
  lda #$00                       ; $A370  A9 00
  sta z:_var_00fd                ; $A372  85 FD
  sta PPU_SCROLL                 ; $A374  8D 05 20
  sta z:_var_00fc                ; $A377  85 FC
  sta PPU_SCROLL                 ; $A379  8D 05 20
  sta z:_var_00a3                ; $A37C  85 A3

_label_a37e:
  rts                            ; $A37E  60

_label_a37f:
  lda z:_var_00c0                ; $A37F  A5 C0
  cmp #$05                       ; $A381  C9 05
  bne _label_a392                ; $A383  D0 0D
  lda z:_var_00f5_indexed        ; $A385  A5 F5
  cmp #$10                       ; $A387  C9 10
  bne _label_a392                ; $A389  D0 07
  lda #$01                       ; $A38B  A9 01
  sta z:_var_00c0                ; $A38D  85 C0
  jmp _label_a3ef                ; $A38F  4C EF A3

_label_a392:
  lda z:_var_00bd                ; $A392  A5 BD
  cmp #$03                       ; $A394  C9 03
  bne _label_a3ef                ; $A396  D0 57
  lda z:_var_00f5_indexed        ; $A398  A5 F5
  and #$10                       ; $A39A  29 10
  bne _label_a3a1                ; $A39C  D0 03
  jmp _label_a3ef                ; $A39E  4C EF A3

_label_a3a1:
  lda z:_var_0068                ; $A3A1  A5 68
  cmp #$0A                       ; $A3A3  C9 0A
  bne _label_a3aa                ; $A3A5  D0 03
  jmp _label_a3ef                ; $A3A7  4C EF A3

_label_a3aa:
  lda #$05                       ; $A3AA  A9 05
  sta a:_var_068d                ; $A3AC  8D 8D 06
  lda #$00                       ; $A3AF  A9 00
  sta z:_var_00bd                ; $A3B1  85 BD
  jsr _func_aa45                 ; $A3B3  20 45 AA
  lda #$16                       ; $A3B6  A9 16
  sta PPU_MASK                   ; $A3B8  8D 01 20
  lda #$FF                       ; $A3BB  A9 FF
  ldx #$02                       ; $A3BD  A2 02
  ldy #$02                       ; $A3BF  A0 02
  jsr _func_ac6a                 ; $A3C1  20 6A AC

_label_a3c4:
  lda #$70                       ; $A3C4  A9 70
  sta z:_var_00a0                ; $A3C6  85 A0
  lda #$77                       ; $A3C8  A9 77
  sta z:_var_00a1                ; $A3CA  85 A1
  lda #$05                       ; $A3CC  A9 05
  sta z:_var_00a2                ; $A3CE  85 A2
  jsr _func_8c27                 ; $A3D0  20 27 8C
  lda z:_var_00f5_indexed        ; $A3D3  A5 F5
  cmp #$10                       ; $A3D5  C9 10
  beq _label_a3df                ; $A3D7  F0 06
  jsr _func_aa2f                 ; $A3D9  20 2F AA
  jmp _label_a3c4                ; $A3DC  4C C4 A3

_label_a3df:
  lda #$1E                       ; $A3DF  A9 1E
  sta PPU_MASK                   ; $A3E1  8D 01 20
  lda #$00                       ; $A3E4  A9 00
  sta a:_var_068d                ; $A3E6  8D 8D 06
  sta z:_var_0069                ; $A3E9  85 69
  lda #$03                       ; $A3EB  A9 03
  sta z:_var_00bd                ; $A3ED  85 BD

_label_a3ef:
  inc z:_var_00a7                ; $A3EF  E6 A7
  rts                            ; $A3F1  60

_label_a3f2:
  lda z:_var_00c1                ; $A3F2  A5 C1
  beq _label_a42b                ; $A3F4  F0 35
  lda z:_var_0050                ; $A3F6  A5 50
  bne _label_a42b                ; $A3F8  D0 31
  lda #$02                       ; $A3FA  A9 02
  jsr _func_9e07                 ; $A3FC  20 07 9E
  ldy #$46                       ; $A3FF  A0 46
  ldx #$00                       ; $A401  A2 00

_label_a403:
  lda a:_data_a42e_indexed,X     ; $A403  BD 2E A4
  cmp #$80                       ; $A406  C9 80
  beq _label_a411                ; $A408  F0 07
  sta (_var_00b8_indexed),Y      ; $A40A  91 B8
  inx                            ; $A40C  E8
  iny                            ; $A40D  C8
  jmp _label_a403                ; $A40E  4C 03 A4

_label_a411:
  lda #$00                       ; $A411  A9 00
  sta z:_var_0069                ; $A413  85 69
  jsr _func_a44d                 ; $A415  20 4D A4
  lda #$00                       ; $A418  A9 00
  sta z:_var_00bd                ; $A41A  85 BD
  lda #$80                       ; $A41C  A9 80
  jsr _func_a459                 ; $A41E  20 59 A4
  jsr _func_9e3a                 ; $A421  20 3A 9E
  lda #$00                       ; $A424  A9 00
  sta z:_var_0048                ; $A426  85 48
  inc z:_var_00a7                ; $A428  E6 A7
  rts                            ; $A42A  60

_label_a42b:
  inc z:_var_0048                ; $A42B  E6 48
  rts                            ; $A42D  60

_data_a42e_indexed:
.byte $38, $39, $39, $39, $39, $39, $39, $39, $39, $3a, $3b, $1c, $1e, $0c, $0c, $0e ; $A42E
.byte $1c, $1c, $28, $3c, $3d, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3f, $80 ; $A43E

_func_a44d:
  lda #$14                       ; $A44D  A9 14
  sta z:_var_00c3                ; $A44F  85 C3

_label_a451:
  jsr _func_aa2f                 ; $A451  20 2F AA
  lda z:_var_00c3                ; $A454  A5 C3
  bne _label_a451                ; $A456  D0 F9
  rts                            ; $A458  60

_func_a459:
  sta z:_var_00c3                ; $A459  85 C3

_label_a45b:
  jsr _func_aa2f                 ; $A45B  20 2F AA
  lda z:_var_00c3                ; $A45E  A5 C3
  bne _label_a45b                ; $A460  D0 F9
  rts                            ; $A462  60

_func_a463:
  lda #$00                       ; $A463  A9 00
  sta z:_var_00c4                ; $A465  85 C4
  sta z:_var_00c5                ; $A467  85 C5
  sta z:_var_00cd                ; $A469  85 CD
  lda #$02                       ; $A46B  A9 02
  sta z:_var_00a2                ; $A46D  85 A2
  lda z:_var_0044                ; $A46F  A5 44
  cmp #$09                       ; $A471  C9 09
  bne _label_a49a                ; $A473  D0 25
  lda z:_var_0079                ; $A475  A5 79
  clc                            ; $A477  18
  adc #$01                       ; $A478  69 01
  sta z:_var_00c4                ; $A47A  85 C4
  jsr _func_a4b1                 ; $A47C  20 B1 A4
  lda #$00                       ; $A47F  A9 00
  sta z:_var_00c4                ; $A481  85 C4
  sta z:_var_00c7                ; $A483  85 C7
  lda a:_data_a73d_indexed       ; $A485  AD 3D A7
  sta z:_var_00c8_indexed        ; $A488  85 C8
  lda a:_data_a73e               ; $A48A  AD 3E A7
  sta z:_var_00c9                ; $A48D  85 C9
  lda a:_data_a73f               ; $A48F  AD 3F A7
  sta z:_var_00ca                ; $A492  85 CA
  lda a:_data_a740               ; $A494  AD 40 A7
  sta z:_var_00cb                ; $A497  85 CB
  rts                            ; $A499  60

_label_a49a:
  ldx z:_var_0044                ; $A49A  A6 44
  lda a:_data_a767_indexed,X     ; $A49C  BD 67 A7
  sta z:_var_00c7                ; $A49F  85 C7
  sta z:_var_00c8_indexed        ; $A4A1  85 C8
  sta z:_var_00c9                ; $A4A3  85 C9
  sta z:_var_00ca                ; $A4A5  85 CA
  sta z:_var_00cb                ; $A4A7  85 CB
  ldx z:_var_0044                ; $A4A9  A6 44
  lda a:_data_a75d_indexed,X     ; $A4AB  BD 5D A7
  sta z:_var_00c6_indexed        ; $A4AE  85 C6
  rts                            ; $A4B0  60

_func_a4b1:
  lda z:_var_00c4                ; $A4B1  A5 C4
  jsr _jump_engine_ac82          ; $A4B3  20 82 AC

  .word _label_a4c4              ; $A4B6  C4 A4
  .word _label_a4cf              ; $A4B8  CF A4
  .word _label_a4da              ; $A4BA  DA A4
  .word _label_a4e5              ; $A4BC  E5 A4
  .word _label_a4f0              ; $A4BE  F0 A4
  .word _label_a4fb              ; $A4C0  FB A4
  .word _label_a506              ; $A4C2  06 A5

_label_a4c4:
  lda #$A8                       ; $A4C4  A9 A8
  sta z:_var_0015                ; $A4C6  85 15
  lda #$22                       ; $A4C8  A9 22
  sta z:_var_0014_indexed        ; $A4CA  85 14
  jsr _func_a507                 ; $A4CC  20 07 A5

_label_a4cf:
  lda #$A8                       ; $A4CF  A9 A8
  sta z:_var_0015                ; $A4D1  85 15
  lda #$34                       ; $A4D3  A9 34
  sta z:_var_0014_indexed        ; $A4D5  85 14
  jsr _func_a507                 ; $A4D7  20 07 A5

_label_a4da:
  lda #$A8                       ; $A4DA  A9 A8
  sta z:_var_0015                ; $A4DC  85 15
  lda #$4A                       ; $A4DE  A9 4A
  sta z:_var_0014_indexed        ; $A4E0  85 14
  jsr _func_a507                 ; $A4E2  20 07 A5

_label_a4e5:
  lda #$A8                       ; $A4E5  A9 A8
  sta z:_var_0015                ; $A4E7  85 15
  lda #$62                       ; $A4E9  A9 62
  sta z:_var_0014_indexed        ; $A4EB  85 14
  jsr _func_a507                 ; $A4ED  20 07 A5

_label_a4f0:
  lda #$A8                       ; $A4F0  A9 A8
  sta z:_var_0015                ; $A4F2  85 15
  lda #$7A                       ; $A4F4  A9 7A
  sta z:_var_0014_indexed        ; $A4F6  85 14
  jsr _func_a507                 ; $A4F8  20 07 A5

_label_a4fb:
  lda #$A8                       ; $A4FB  A9 A8
  sta z:_var_0015                ; $A4FD  85 15
  lda #$96                       ; $A4FF  A9 96
  sta z:_var_0014_indexed        ; $A501  85 14
  jsr _func_a507                 ; $A503  20 07 A5

_label_a506:
  rts                            ; $A506  60

_func_a507:
  ldy #$00                       ; $A507  A0 00

_label_a509:
  lda (_var_0014_indexed),Y      ; $A509  B1 14
  sta PPU_ADDR                   ; $A50B  8D 06 20
  iny                            ; $A50E  C8
  lda (_var_0014_indexed),Y      ; $A50F  B1 14
  sta PPU_ADDR                   ; $A511  8D 06 20
  iny                            ; $A514  C8

_label_a515:
  lda (_var_0014_indexed),Y      ; $A515  B1 14
  iny                            ; $A517  C8
  cmp #$FE                       ; $A518  C9 FE
  beq _label_a509                ; $A51A  F0 ED
  cmp #$FD                       ; $A51C  C9 FD
  beq _label_a526                ; $A51E  F0 06
  sta PPU_DATA                   ; $A520  8D 07 20
  jmp _label_a515                ; $A523  4C 15 A5

_label_a526:
  rts                            ; $A526  60

_func_a527:
  lda z:_var_00c1                ; $A527  A5 C1
  bne _label_a52e                ; $A529  D0 03
  jmp _label_a9b1                ; $A52B  4C B1 A9

_label_a52e:
  lda z:_var_0044                ; $A52E  A5 44
  cmp #$09                       ; $A530  C9 09
  beq _label_a537                ; $A532  F0 03
  jmp _label_a625                ; $A534  4C 25 A6

_label_a537:
  jsr _func_a53b                 ; $A537  20 3B A5
  rts                            ; $A53A  60

_func_a53b:
  lda z:_var_0079                ; $A53B  A5 79
  jsr _jump_engine_ac82          ; $A53D  20 82 AC

  .word _label_a609              ; $A540  09 A6
  .word _label_a5f1              ; $A542  F1 A5
  .word _label_a5d9              ; $A544  D9 A5
  .word _label_a5c1              ; $A546  C1 A5
  .word _label_a5a9              ; $A548  A9 A5
  .word _label_a54c              ; $A54A  4C A5

_label_a54c:
  lda #$C8                       ; $A54C  A9 C8
  sta z:_var_00a0                ; $A54E  85 A0
  lda #$47                       ; $A550  A9 47
  sta z:_var_00a1                ; $A552  85 A1
  lda z:_var_00b1                ; $A554  A5 B1
  and #$08                       ; $A556  29 08
  lsr a                          ; $A558  4A
  lsr a                          ; $A559  4A
  lsr a                          ; $A55A  4A
  clc                            ; $A55B  18
  adc #$21                       ; $A55C  69 21
  sta z:_var_00a2                ; $A55E  85 A2
  jsr _func_8c27                 ; $A560  20 27 8C
  lda #$A0                       ; $A563  A9 A0
  sta z:_var_00a0                ; $A565  85 A0
  lda #$27                       ; $A567  A9 27
  sta z:_var_00a2                ; $A569  85 A2
  lda z:_var_00b1                ; $A56B  A5 B1
  and #$18                       ; $A56D  29 18
  lsr a                          ; $A56F  4A
  lsr a                          ; $A570  4A
  lsr a                          ; $A571  4A
  tax                            ; $A572  AA
  lda a:_data_a80a_indexed,X     ; $A573  BD 0A A8
  sta z:_var_00a1                ; $A576  85 A1
  cmp #$97                       ; $A578  C9 97
  beq _label_a580                ; $A57A  F0 04
  lda #$28                       ; $A57C  A9 28
  sta z:_var_00a2                ; $A57E  85 A2

_label_a580:
  jsr _func_8c27                 ; $A580  20 27 8C

_label_a583:
  lda #$C0                       ; $A583  A9 C0
  sta z:_var_00a0                ; $A585  85 A0
  lda z:_var_00c4                ; $A587  A5 C4
  lsr a                          ; $A589  4A
  lsr a                          ; $A58A  4A
  lsr a                          ; $A58B  4A
  cmp #$0A                       ; $A58C  C9 0A
  bne _label_a599                ; $A58E  D0 09
  lda #$00                       ; $A590  A9 00
  sta z:_var_00c4                ; $A592  85 C4
  inc z:_var_00c5                ; $A594  E6 C5
  jmp _label_a583                ; $A596  4C 83 A5

_label_a599:
  tax                            ; $A599  AA
  lda a:_data_a80e_indexed,X     ; $A59A  BD 0E A8
  sta z:_var_00a1                ; $A59D  85 A1
  lda a:_data_a818_indexed,X     ; $A59F  BD 18 A8
  sta z:_var_00a2                ; $A5A2  85 A2
  jsr _func_8c27                 ; $A5A4  20 27 8C
  inc z:_var_00c4                ; $A5A7  E6 C4

_label_a5a9:
  lda #$30                       ; $A5A9  A9 30
  sta z:_var_00a0                ; $A5AB  85 A0
  lda #$A7                       ; $A5AD  A9 A7
  sta z:_var_00a1                ; $A5AF  85 A1
  lda z:_var_00b1                ; $A5B1  A5 B1
  and #$10                       ; $A5B3  29 10
  lsr a                          ; $A5B5  4A
  lsr a                          ; $A5B6  4A
  lsr a                          ; $A5B7  4A
  lsr a                          ; $A5B8  4A
  clc                            ; $A5B9  18
  adc #$1F                       ; $A5BA  69 1F
  sta z:_var_00a2                ; $A5BC  85 A2
  jsr _func_8c27                 ; $A5BE  20 27 8C

_label_a5c1:
  lda #$40                       ; $A5C1  A9 40
  sta z:_var_00a0                ; $A5C3  85 A0
  lda #$77                       ; $A5C5  A9 77
  sta z:_var_00a1                ; $A5C7  85 A1
  lda z:_var_00b1                ; $A5C9  A5 B1
  and #$10                       ; $A5CB  29 10
  lsr a                          ; $A5CD  4A
  lsr a                          ; $A5CE  4A
  lsr a                          ; $A5CF  4A
  lsr a                          ; $A5D0  4A
  clc                            ; $A5D1  18
  adc #$1D                       ; $A5D2  69 1D
  sta z:_var_00a2                ; $A5D4  85 A2
  jsr _func_8c27                 ; $A5D6  20 27 8C

_label_a5d9:
  lda #$A8                       ; $A5D9  A9 A8
  sta z:_var_00a0                ; $A5DB  85 A0
  lda #$D7                       ; $A5DD  A9 D7
  sta z:_var_00a1                ; $A5DF  85 A1
  lda z:_var_00b1                ; $A5E1  A5 B1
  and #$10                       ; $A5E3  29 10
  lsr a                          ; $A5E5  4A
  lsr a                          ; $A5E6  4A
  lsr a                          ; $A5E7  4A
  lsr a                          ; $A5E8  4A
  clc                            ; $A5E9  18
  adc #$1A                       ; $A5EA  69 1A
  sta z:_var_00a2                ; $A5EC  85 A2
  jsr _func_8c27                 ; $A5EE  20 27 8C

_label_a5f1:
  lda #$C8                       ; $A5F1  A9 C8
  sta z:_var_00a0                ; $A5F3  85 A0
  lda #$D7                       ; $A5F5  A9 D7
  sta z:_var_00a1                ; $A5F7  85 A1
  lda z:_var_00b1                ; $A5F9  A5 B1
  and #$10                       ; $A5FB  29 10
  lsr a                          ; $A5FD  4A
  lsr a                          ; $A5FE  4A
  lsr a                          ; $A5FF  4A
  lsr a                          ; $A600  4A
  clc                            ; $A601  18
  adc #$18                       ; $A602  69 18
  sta z:_var_00a2                ; $A604  85 A2
  jsr _func_8c27                 ; $A606  20 27 8C

_label_a609:
  lda #$28                       ; $A609  A9 28
  sta z:_var_00a0                ; $A60B  85 A0
  lda #$77                       ; $A60D  A9 77
  sta z:_var_00a1                ; $A60F  85 A1
  lda z:_var_00b1                ; $A611  A5 B1
  and #$10                       ; $A613  29 10
  lsr a                          ; $A615  4A
  lsr a                          ; $A616  4A
  lsr a                          ; $A617  4A
  lsr a                          ; $A618  4A
  clc                            ; $A619  18
  adc #$16                       ; $A61A  69 16
  sta z:_var_00a2                ; $A61C  85 A2
  jsr _func_8c27                 ; $A61E  20 27 8C
  jsr _func_a6bc                 ; $A621  20 BC A6
  rts                            ; $A624  60

_label_a625:
  jsr _func_a690                 ; $A625  20 90 A6
  inc z:_var_00cd                ; $A628  E6 CD
  lda #$00                       ; $A62A  A9 00
  sta z:_var_00cc                ; $A62C  85 CC

_label_a62e:
  ldx z:_var_0044                ; $A62E  A6 44
  lda a:_data_a767_indexed,X     ; $A630  BD 67 A7
  sta z:_var_00a8_indexed        ; $A633  85 A8
  ldx z:_var_00cc                ; $A635  A6 CC
  lda z:_var_00c6_indexed,X      ; $A637  B5 C6
  cmp z:_var_00a8_indexed        ; $A639  C5 A8
  beq _label_a675                ; $A63B  F0 38
  sta z:_var_00a0                ; $A63D  85 A0
  jsr _func_a6ae                 ; $A63F  20 AE A6
  lda a:_data_a7b7_indexed,X     ; $A642  BD B7 A7
  sta z:_var_00a1                ; $A645  85 A1
  jsr _func_8c27                 ; $A647  20 27 8C
  ldx z:_var_0044                ; $A64A  A6 44
  lda a:_data_a753_indexed,X     ; $A64C  BD 53 A7
  cmp z:_var_00cd                ; $A64F  C5 CD
  bne _label_a675                ; $A651  D0 22
  ldx z:_var_0044                ; $A653  A6 44
  lda a:_data_a771_indexed,X     ; $A655  BD 71 A7
  clc                            ; $A658  18
  adc z:_var_00a0                ; $A659  65 A0
  sta z:_var_00a0                ; $A65B  85 A0
  ldx z:_var_00cc                ; $A65D  A6 CC
  sta z:_var_00c6_indexed,X      ; $A65F  95 C6
  jsr _func_a6ae                 ; $A661  20 AE A6
  lda a:_data_a77b_indexed,X     ; $A664  BD 7B A7
  cmp z:_var_00a0                ; $A667  C5 A0
  bne _label_a675                ; $A669  D0 0A
  ldx z:_var_0044                ; $A66B  A6 44
  lda a:_data_a75d_indexed,X     ; $A66D  BD 5D A7
  ldx z:_var_00cc                ; $A670  A6 CC
  inx                            ; $A672  E8
  sta z:_var_00c6_indexed,X      ; $A673  95 C6

_label_a675:
  lda z:_var_00cc                ; $A675  A5 CC
  sta z:_var_00a8_indexed        ; $A677  85 A8
  cmp z:_var_0059                ; $A679  C5 59
  beq _label_a682                ; $A67B  F0 05
  inc z:_var_00cc                ; $A67D  E6 CC
  jmp _label_a62e                ; $A67F  4C 2E A6

_label_a682:
  ldx z:_var_0044                ; $A682  A6 44
  lda a:_data_a753_indexed,X     ; $A684  BD 53 A7
  cmp z:_var_00cd                ; $A687  C5 CD
  bne _label_a68f                ; $A689  D0 04
  lda #$00                       ; $A68B  A9 00
  sta z:_var_00cd                ; $A68D  85 CD

_label_a68f:
  rts                            ; $A68F  60

_func_a690:
  inc z:_var_00c4                ; $A690  E6 C4
  ldx z:_var_0044                ; $A692  A6 44
  lda a:_data_a749_indexed,X     ; $A694  BD 49 A7
  cmp z:_var_00c4                ; $A697  C5 C4
  bne _label_a6a5                ; $A699  D0 0A
  lda z:_var_00c5                ; $A69B  A5 C5
  eor #$01                       ; $A69D  49 01
  sta z:_var_00c5                ; $A69F  85 C5
  lda #$00                       ; $A6A1  A9 00
  sta z:_var_00c4                ; $A6A3  85 C4

_label_a6a5:
  lda a:_data_a7f3_indexed,X     ; $A6A5  BD F3 A7
  clc                            ; $A6A8  18
  adc z:_var_00c5                ; $A6A9  65 C5
  sta z:_var_00a2                ; $A6AB  85 A2
  rts                            ; $A6AD  60

_func_a6ae:
  lda z:_var_0044                ; $A6AE  A5 44
  asl a                          ; $A6B0  0A
  sta z:_var_00a8_indexed        ; $A6B1  85 A8
  asl a                          ; $A6B3  0A
  clc                            ; $A6B4  18
  adc z:_var_00a8_indexed        ; $A6B5  65 A8
  clc                            ; $A6B7  18
  adc z:_var_00cc                ; $A6B8  65 CC
  tax                            ; $A6BA  AA
  rts                            ; $A6BB  60

_func_a6bc:
  ldx #$00                       ; $A6BC  A2 00

_label_a6be:
  lda a:_data_a735_indexed,X     ; $A6BE  BD 35 A7
  cmp z:_var_00c5                ; $A6C1  C5 C5
  bne _label_a6d0                ; $A6C3  D0 0B
  lda z:_var_00c8_indexed,X      ; $A6C5  B5 C8
  beq _label_a6d0                ; $A6C7  F0 07
  sec                            ; $A6C9  38
  sbc #$01                       ; $A6CA  E9 01
  sta z:_var_00c8_indexed,X      ; $A6CC  95 C8
  inc z:_var_00c5                ; $A6CE  E6 C5

_label_a6d0:
  inx                            ; $A6D0  E8
  cpx #$04                       ; $A6D1  E0 04
  bne _label_a6be                ; $A6D3  D0 E9
  lda #$00                       ; $A6D5  A9 00
  sta z:_var_00cc                ; $A6D7  85 CC

_label_a6d9:
  ldx z:_var_00cc                ; $A6D9  A6 CC
  lda z:_var_00c8_indexed,X      ; $A6DB  B5 C8
  beq _label_a72c                ; $A6DD  F0 4D
  sta z:_var_00a8_indexed        ; $A6DF  85 A8
  lda a:_data_a73d_indexed,X     ; $A6E1  BD 3D A7
  cmp z:_var_00a8_indexed        ; $A6E4  C5 A8
  beq _label_a6f7                ; $A6E6  F0 0F
  lda #$03                       ; $A6E8  A9 03
  sta a:_var_06f0_indexed        ; $A6EA  8D F0 06
  dec z:_var_00a8_indexed        ; $A6ED  C6 A8
  lda z:_var_00a8_indexed        ; $A6EF  A5 A8
  cmp #$A0                       ; $A6F1  C9 A0
  bcs _label_a6f7                ; $A6F3  B0 02
  dec z:_var_00a8_indexed        ; $A6F5  C6 A8

_label_a6f7:
  lda z:_var_00a8_indexed        ; $A6F7  A5 A8
  sta z:_var_00c8_indexed,X      ; $A6F9  95 C8
  sta z:_var_00a1                ; $A6FB  85 A1
  lda a:_data_a739_indexed,X     ; $A6FD  BD 39 A7
  sta z:_var_00a0                ; $A700  85 A0
  lda a:_data_a741_indexed,X     ; $A702  BD 41 A7
  sta z:_var_00a2                ; $A705  85 A2
  jsr _func_8c27                 ; $A707  20 27 8C
  ldx z:_var_00cc                ; $A70A  A6 CC
  lda z:_var_00c8_indexed,X      ; $A70C  B5 C8
  sta z:_var_00a8_indexed        ; $A70E  85 A8
  lda a:_data_a73d_indexed,X     ; $A710  BD 3D A7
  cmp z:_var_00a8_indexed        ; $A713  C5 A8
  beq _label_a72c                ; $A715  F0 15
  lda a:_data_a745_indexed,X     ; $A717  BD 45 A7
  clc                            ; $A71A  18
  adc z:_var_00a0                ; $A71B  65 A0
  sta z:_var_00a0                ; $A71D  85 A0
  lda z:_var_00b1                ; $A71F  A5 B1
  and #$02                       ; $A721  29 02
  lsr a                          ; $A723  4A
  clc                            ; $A724  18
  adc #$51                       ; $A725  69 51
  sta z:_var_00a2                ; $A727  85 A2
  jsr _func_8c27                 ; $A729  20 27 8C

_label_a72c:
  inc z:_var_00cc                ; $A72C  E6 CC
  lda z:_var_00cc                ; $A72E  A5 CC
  cmp #$04                       ; $A730  C9 04
  bne _label_a6d9                ; $A732  D0 A5
  rts                            ; $A734  60

_data_a735_indexed:
.byte $05, $07, $09, $0b         ; $A735

_data_a739_indexed:
.byte $60, $90, $70, $7e         ; $A739

_data_a73d_indexed:
.byte $bc                        ; $A73D

_data_a73e:
.byte $b8                        ; $A73E

_data_a73f:
.byte $bc                        ; $A73F

_data_a740:
.byte $b3                        ; $A740

_data_a741_indexed:
.byte $4d, $50, $4e, $4f         ; $A741

_data_a745_indexed:
.byte $00, $00, $00, $02         ; $A745

_data_a749_indexed:
.byte $02, $04, $06, $03, $10, $03, $05, $06, $02, $05 ; $A749

_data_a753_indexed:
.byte $03, $01, $01, $01, $02, $05, $01, $02, $01, $01 ; $A753

_data_a75d_indexed:
.byte $02, $02, $fe, $fe, $02, $fe, $02, $02, $fe, $02 ; $A75D

_data_a767_indexed:
.byte $00, $00, $00, $02, $f0, $10, $f0, $f0, $20, $f0 ; $A767

_data_a771_indexed:
.byte $01, $01, $ff, $fc, $01, $ff, $02, $02, $fe, $02 ; $A771

_data_a77b_indexed:
.byte $3a, $24, $0a, $4a, $3a, $ff, $22, $44, $12, $32, $4a, $ff, $ae, $6e, $8e, $6e ; $A77B
.byte $1e, $02, $42, $42, $42, $42, $42, $02, $22, $0a, $1a, $04, $0a, $ff, $ee, $de ; $A78B
.byte $fc, $fc, $f6, $02, $80, $80, $80, $80, $80, $ff, $e8, $e8, $e8, $e8, $48, $ff ; $A79B
.byte $80, $ae, $9e, $90, $80, $02, $80, $80, $80, $80, $80, $ff ; $A7AB

_data_a7b7_indexed:
.byte $98, $a8, $c0, $a8, $90, $b0, $b0, $b8, $a0, $b8, $a8, $a0, $c8, $c8, $c8, $c8 ; $A7B7
.byte $c8, $c8, $30, $20, $40, $28, $a0, $80, $a8, $88, $68, $a8, $48, $78, $58, $68 ; $A7C7
.byte $18, $48, $78, $38, $c8, $c8, $c8, $c8, $c8, $c8, $90, $58, $70, $a8, $40, $38 ; $A7D7
.byte $68, $88, $78, $18, $48, $a8, $c8, $c8, $c8, $c8, $c8, $c8 ; $A7E7

_data_a7f3_indexed:
.byte $2c, $2e, $54, $32, $34, $36, $4b, $38, $3a, $4b ; $A7F3

_func_a7fd:
  sta z:_var_00c3                ; $A7FD  85 C3

_label_a7ff:
  jsr _func_a527                 ; $A7FF  20 27 A5
  jsr _func_aa2f                 ; $A802  20 2F AA
  lda z:_var_00c3                ; $A805  A5 C3
  bne _label_a7ff                ; $A807  D0 F6
  rts                            ; $A809  60

_data_a80a_indexed:
.byte $97, $8f, $87, $8f         ; $A80A

_data_a80e_indexed:
.byte $97, $8f, $87, $87, $8f, $97, $8f, $87, $87, $8f ; $A80E

_data_a818_indexed:
.byte $29, $29, $29, $2a, $2a, $2a, $2a, $2a, $29, $29, $21, $a5, $ff, $ff, $ff, $fe ; $A818
.byte $21, $c5, $ff, $ff, $ff, $fe, $21, $e5, $ff, $ff, $ff, $fd, $23, $1a, $ff, $fe ; $A828
.byte $23, $39, $ff, $ff, $ff, $fe, $23, $59, $ff, $ff, $ff, $fe, $23, $79, $ff, $ff ; $A838
.byte $ff, $fd, $23, $15, $ff, $ff, $ff, $fe, $23, $35, $ff, $ff, $ff, $fe, $23, $55 ; $A848
.byte $ff, $ff, $ff, $fe, $23, $75, $ff, $ff, $ff, $fd, $21, $88, $ff, $ff, $ff, $fe ; $A858
.byte $21, $a8, $ff, $ff, $ff, $fe, $21, $c8, $ff, $ff, $ff, $fe, $21, $e8, $ff, $ff ; $A868
.byte $ff, $fd, $22, $46, $ff, $ff, $ff, $ff, $fe, $22, $66, $ff, $ff, $ff, $ff, $fe ; $A878
.byte $22, $86, $ff, $ff, $ff, $ff, $fe, $22, $a6, $ff, $ff, $ff, $ff, $fd, $20, $f9 ; $A888
.byte $ff, $ff, $ff, $fe, $21, $19, $ff, $ff, $ff, $fe, $21, $39, $ff, $ff, $ff, $fd ; $A898
.byte $23, $35, $ff, $ff, $ff, $fe, $23, $55, $ff, $ff, $ff, $fe, $23, $75, $ff, $ff ; $A8A8
.byte $ff, $fd, $23, $39, $ff, $ff, $ff, $fe, $23, $59, $ff, $ff, $ff, $fe, $23, $79 ; $A8B8
.byte $ff, $ff, $ff, $fd, $22, $58, $ff, $fe, $22, $75, $ff, $ff, $ff, $ff, $ff, $ff ; $A8C8
.byte $fe, $22, $94, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fe, $22, $b4, $ff, $ff ; $A8D8
.byte $ff, $ff, $ff, $ff, $ff, $ff, $fe, $22, $d4, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $A8E8
.byte $ff, $fe, $22, $f4, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fe, $23, $14, $ff ; $A8F8
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fe, $23, $34, $ff, $ff, $ff, $ff, $ff, $ff ; $A908
.byte $ff, $ff, $fe, $22, $ca, $46, $47, $fe, $22, $ea, $56, $57, $fd, $fc ; $A918

_label_a926:
  jsr _func_aa52                 ; $A926  20 52 AA
  jsr _func_aa78                 ; $A929  20 78 AA
  lda #$02                       ; $A92C  A9 02
  jsr _func_acb7                 ; $A92E  20 B7 AC
  lda #$02                       ; $A931  A9 02
  jsr _func_accb                 ; $A933  20 CB AC
  jsr _func_aa98                 ; $A936  20 98 AA
  pla                            ; $A939  68

.byte $d2, $20, $98, $aa, $43, $ad, $20, $6e, $a9, $20, $6b, $aa, $20, $2f, $aa, $20 ; $A93A
.byte $5f, $aa, $20, $2f, $aa, $a9, $04, $85, $bd, $a9, $0a, $20, $07, $9e, $a9, $80 ; $A94A
.byte $20, $fd, $a7, $20, $27, $a5, $20, $2f, $aa, $a5, $c5, $d0, $f6, $a5, $f5, $c9 ; $A95A
.byte $10, $d0, $f0, $60, $a9, $00, $85, $c4, $a5, $75, $c9, $05, $90, $2d, $a9, $01 ; $A96A
.byte $85, $c4, $a5, $75, $c9, $07, $90, $23, $a9, $02, $85, $c4, $a5, $75, $c9, $10 ; $A97A
.byte $90, $19, $a9, $03, $85, $c4, $a5, $75, $c9, $12, $90, $0f, $a9, $04, $85, $c4 ; $A98A
.byte $a9, $a8, $85, $15, $a9, $cc, $85, $14, $20, $07, $a5, $a6, $c4, $bd, $2a, $aa ; $A99A
.byte $85, $c5, $a9, $00, $85, $c6, $60 ; $A9AA

_label_a9b1:
  lda z:_var_00c5                ; $A9B1  A5 C5
  cmp #$00                       ; $A9B3  C9 00
  beq _label_aa10                ; $A9B5  F0 59
  sta z:_var_00a1                ; $A9B7  85 A1
  lda #$58                       ; $A9B9  A9 58
  ldx z:_var_00c4                ; $A9BB  A6 C4
  lda a:_data_aa25_indexed,X     ; $A9BD  BD 25 AA
  sta z:_var_00a0                ; $A9C0  85 A0
  lda a:_data_aa11_indexed,X     ; $A9C2  BD 11 AA
  sta z:_var_00a2                ; $A9C5  85 A2
  jsr _func_8c27                 ; $A9C7  20 27 8C
  lda z:_var_00c4                ; $A9CA  A5 C4
  asl a                          ; $A9CC  0A
  sta z:_var_00a8_indexed        ; $A9CD  85 A8
  lda z:_var_00b1                ; $A9CF  A5 B1
  and #$02                       ; $A9D1  29 02
  lsr a                          ; $A9D3  4A
  clc                            ; $A9D4  18
  adc z:_var_00a8_indexed        ; $A9D5  65 A8
  tax                            ; $A9D7  AA
  lda a:_data_aa16_indexed,X     ; $A9D8  BD 16 AA
  sta z:_var_00a2                ; $A9DB  85 A2
  ldx z:_var_00c4                ; $A9DD  A6 C4
  lda a:_data_aa20_indexed,X     ; $A9DF  BD 20 AA
  clc                            ; $A9E2  18
  adc z:_var_00a0                ; $A9E3  65 A0
  sta z:_var_00a0                ; $A9E5  85 A0
  jsr _func_8c27                 ; $A9E7  20 27 8C
  lda z:_var_00c6_indexed        ; $A9EA  A5 C6
  cmp #$F0                       ; $A9EC  C9 F0
  bne _label_aa0e                ; $A9EE  D0 1E
  lda z:_var_00c5                ; $A9F0  A5 C5
  cmp #$B0                       ; $A9F2  C9 B0
  bcc _label_a9fc                ; $A9F4  90 06
  lda z:_var_00b1                ; $A9F6  A5 B1
  and #$01                       ; $A9F8  29 01
  bne _label_aa0b                ; $A9FA  D0 0F

_label_a9fc:
  lda #$03                       ; $A9FC  A9 03
  sta a:_var_06f0_indexed        ; $A9FE  8D F0 06
  dec z:_var_00c5                ; $AA01  C6 C5
  lda z:_var_00c5                ; $AA03  A5 C5
  cmp #$80                       ; $AA05  C9 80
  bcs _label_aa0b                ; $AA07  B0 02
  dec z:_var_00c5                ; $AA09  C6 C5

_label_aa0b:
  jmp _label_aa10                ; $AA0B  4C 10 AA

_label_aa0e:
  inc z:_var_00c6_indexed        ; $AA0E  E6 C6

_label_aa10:
  rts                            ; $AA10  60

_data_aa11_indexed:
.byte $3e, $41, $44, $47, $4a    ; $AA11

_data_aa16_indexed:
.byte $3f, $40, $42, $43, $45, $46, $48, $49, $23, $24 ; $AA16

_data_aa20_indexed:
.byte $00, $00, $00, $00, $00    ; $AA20

_data_aa25_indexed:
.byte $54, $54, $50, $48, $a0, $bf, $bf, $bf, $bf, $c7 ; $AA25

_func_aa2f:
  jsr _func_e000                 ; $AA2F  20 00 E0
  lda #$00                       ; $AA32  A9 00
  sta z:_var_0033                ; $AA34  85 33
  nop                            ; $AA36  EA

_label_aa37:
  lda z:_var_0033                ; $AA37  A5 33
  beq _label_aa37                ; $AA39  F0 FC
  lda #$FF                       ; $AA3B  A9 FF
  ldx #$02                       ; $AA3D  A2 02
  ldy #$02                       ; $AA3F  A0 02
  jsr _func_ac6a                 ; $AA41  20 6A AC
  rts                            ; $AA44  60

_func_aa45:
  jsr _func_e000                 ; $AA45  20 00 E0
  lda #$00                       ; $AA48  A9 00
  sta z:_var_0033                ; $AA4A  85 33
  nop                            ; $AA4C  EA

_label_aa4d:
  lda z:_var_0033                ; $AA4D  A5 33
  beq _label_aa4d                ; $AA4F  F0 FC
  rts                            ; $AA51  60

_func_aa52:
  jsr _func_aa45                 ; $AA52  20 45 AA
  lda z:_var_00fe                ; $AA55  A5 FE
  and #$E1                       ; $AA57  29 E1

_label_aa59:
  sta PPU_MASK                   ; $AA59  8D 01 20
  sta z:_var_00fe                ; $AA5C  85 FE
  rts                            ; $AA5E  60

_func_aa5f:
  jsr _func_aa45                 ; $AA5F  20 45 AA
  jsr _func_aa8a                 ; $AA62  20 8A AA
  lda z:_var_00fe                ; $AA65  A5 FE
  ora #$1E                       ; $AA67  09 1E
  bne _label_aa59                ; $AA69  D0 EE

_func_aa6b:
  lda PPU_STATUS                 ; $AA6B  AD 02 20
  and #$80                       ; $AA6E  29 80
  bne _func_aa6b                 ; $AA70  D0 F9
  lda z:_var_00ff                ; $AA72  A5 FF
  ora #$80                       ; $AA74  09 80
  bne _label_aa7c                ; $AA76  D0 04

_func_aa78:
  lda z:_var_00ff                ; $AA78  A5 FF
  and #$7F                       ; $AA7A  29 7F

_label_aa7c:
  sta PPU_CTRL                   ; $AA7C  8D 00 20
  sta z:_var_00ff                ; $AA7F  85 FF
  rts                            ; $AA81  60

_func_aa82:
  ldx #$FF                       ; $AA82  A2 FF
  ldy #$00                       ; $AA84  A0 00
  jsr _func_ac1c                 ; $AA86  20 1C AC
  rts                            ; $AA89  60

_func_aa8a:
  lda #$00                       ; $AA8A  A9 00
  sta PPU_SCROLL                 ; $AA8C  8D 05 20
  sta PPU_SCROLL                 ; $AA8F  8D 05 20
  lda z:_var_00ff                ; $AA92  A5 FF
  sta PPU_CTRL                   ; $AA94  8D 00 20
  rts                            ; $AA97  60

_func_aa98:
  jsr _func_ab21                 ; $AA98  20 21 AB
  jmp _label_aaf2                ; $AA9B  4C F2 AA

_label_aa9e:
  pha                            ; $AA9E  48
  sta PPU_ADDR                   ; $AA9F  8D 06 20
  iny                            ; $AAA2  C8
  lda (_var_0000_indexed),Y      ; $AAA3  B1 00
  sta PPU_ADDR                   ; $AAA5  8D 06 20
  iny                            ; $AAA8  C8
  lda (_var_0000_indexed),Y      ; $AAA9  B1 00
  asl a                          ; $AAAB  0A
  pha                            ; $AAAC  48
  lda z:_var_00ff                ; $AAAD  A5 FF
  ora #$04                       ; $AAAF  09 04
  bcs _label_aab5                ; $AAB1  B0 02
  and #$FB                       ; $AAB3  29 FB

_label_aab5:
  sta PPU_CTRL                   ; $AAB5  8D 00 20
  sta z:_var_00ff                ; $AAB8  85 FF
  pla                            ; $AABA  68
  asl a                          ; $AABB  0A
  php                            ; $AABC  08
  bcc _label_aac2                ; $AABD  90 03
  ora #$02                       ; $AABF  09 02
  iny                            ; $AAC1  C8

_label_aac2:
  plp                            ; $AAC2  28
  clc                            ; $AAC3  18
  bne _label_aac7                ; $AAC4  D0 01
  sec                            ; $AAC6  38

_label_aac7:
  ror a                          ; $AAC7  6A
  lsr a                          ; $AAC8  4A
  tax                            ; $AAC9  AA

_label_aaca:
  bcs _label_aacd                ; $AACA  B0 01
  iny                            ; $AACC  C8

_label_aacd:
  lda (_var_0000_indexed),Y      ; $AACD  B1 00
  sta PPU_DATA                   ; $AACF  8D 07 20
  dex                            ; $AAD2  CA
  bne _label_aaca                ; $AAD3  D0 F5
  pla                            ; $AAD5  68
  cmp #$3F                       ; $AAD6  C9 3F
  bne _label_aae6                ; $AAD8  D0 0C
  sta PPU_ADDR                   ; $AADA  8D 06 20
  stx PPU_ADDR                   ; $AADD  8E 06 20
  stx PPU_ADDR                   ; $AAE0  8E 06 20
  stx PPU_ADDR                   ; $AAE3  8E 06 20

_label_aae6:
  sec                            ; $AAE6  38
  tya                            ; $AAE7  98
  adc z:_var_0000_indexed        ; $AAE8  65 00
  sta z:_var_0000_indexed        ; $AAEA  85 00
  lda #$00                       ; $AAEC  A9 00
  adc z:_var_0001_indexed        ; $AAEE  65 01
  sta z:_var_0001_indexed        ; $AAF0  85 01

_label_aaf2:
  ldx PPU_STATUS                 ; $AAF2  AE 02 20
  ldy #$00                       ; $AAF5  A0 00
  lda (_var_0000_indexed),Y      ; $AAF7  B1 00
  bpl _label_aafc                ; $AAF9  10 01
  rts                            ; $AAFB  60

_label_aafc:
  cmp #$60                       ; $AAFC  C9 60
  bne _label_ab0a                ; $AAFE  D0 0A
  pla                            ; $AB00  68
  sta z:_var_0001_indexed        ; $AB01  85 01
  pla                            ; $AB03  68
  sta z:_var_0000_indexed        ; $AB04  85 00
  ldy #$02                       ; $AB06  A0 02
  bne _label_aae6                ; $AB08  D0 DC

_label_ab0a:
  cmp #$4C                       ; $AB0A  C9 4C
  bne _label_aa9e                ; $AB0C  D0 90
  lda z:_var_0000_indexed        ; $AB0E  A5 00
  pha                            ; $AB10  48
  lda z:_var_0001_indexed        ; $AB11  A5 01
  pha                            ; $AB13  48
  iny                            ; $AB14  C8
  lda (_var_0000_indexed),Y      ; $AB15  B1 00
  tax                            ; $AB17  AA
  iny                            ; $AB18  C8
  lda (_var_0000_indexed),Y      ; $AB19  B1 00
  sta z:_var_0001_indexed        ; $AB1B  85 01
  stx z:_var_0000_indexed        ; $AB1D  86 00
  bcs _label_aaf2                ; $AB1F  B0 D1

_func_ab21:
  tsx                            ; $AB21  BA
  lda a:_var_0103_indexed,X      ; $AB22  BD 03 01
  sta z:_var_0005_indexed        ; $AB25  85 05
  lda a:_var_0104_indexed,X      ; $AB27  BD 04 01
  sta z:_var_0006                ; $AB2A  85 06
  ldy #$01                       ; $AB2C  A0 01
  lda (_var_0005_indexed),Y      ; $AB2E  B1 05
  sta z:_var_0000_indexed        ; $AB30  85 00
  iny                            ; $AB32  C8
  lda (_var_0005_indexed),Y      ; $AB33  B1 05
  sta z:_var_0001_indexed        ; $AB35  85 01
  clc                            ; $AB37  18
  lda #$02                       ; $AB38  A9 02
  adc z:_var_0005_indexed        ; $AB3A  65 05
  sta a:_var_0103_indexed,X      ; $AB3C  9D 03 01
  lda #$00                       ; $AB3F  A9 00
  adc z:_var_0006                ; $AB41  65 06
  sta a:_var_0104_indexed,X      ; $AB43  9D 04 01
  rts                            ; $AB46  60

_func_ab47:
  lda z:_var_0000_indexed,X      ; $AB47  B5 00
  and #$02                       ; $AB49  29 02
  sta z:_var_0000_indexed        ; $AB4B  85 00
  lda z:_var_0001_indexed,X      ; $AB4D  B5 01
  and #$02                       ; $AB4F  29 02
  eor z:_var_0000_indexed        ; $AB51  45 00
  clc                            ; $AB53  18
  beq _label_ab57                ; $AB54  F0 01
  sec                            ; $AB56  38

_label_ab57:
  ror z:_var_0000_indexed,X      ; $AB57  76 00
  inx                            ; $AB59  E8
  dey                            ; $AB5A  88
  bne _label_ab57                ; $AB5B  D0 FA
  rts                            ; $AB5D  60

_func_ab5e:
  lda #$00                       ; $AB5E  A9 00
  sta OAM_ADDR                   ; $AB60  8D 03 20
  lda #$02                       ; $AB63  A9 02
  sta OAM_DMA                    ; $AB65  8D 14 40
  rts                            ; $AB68  60

_func_ab69:
  ldx z:$FB                      ; $AB69  A6 FB
  inx                            ; $AB6B  E8
  stx JOYPAD1                    ; $AB6C  8E 16 40
  dex                            ; $AB6F  CA
  stx JOYPAD1                    ; $AB70  8E 16 40
  ldx #$08                       ; $AB73  A2 08

_label_ab75:
  lda JOYPAD1                    ; $AB75  AD 16 40
  lsr a                          ; $AB78  4A
  rol z:_var_00f5_indexed        ; $AB79  26 F5
  lsr a                          ; $AB7B  4A
  rol z:_var_0000_indexed        ; $AB7C  26 00
  lda JOYPAD2                    ; $AB7E  AD 17 40
  lsr a                          ; $AB81  4A
  rol z:_var_00f6                ; $AB82  26 F6
  lsr a                          ; $AB84  4A
  rol z:_var_0001_indexed        ; $AB85  26 01
  dex                            ; $AB87  CA
  bne _label_ab75                ; $AB88  D0 EB
  rts                            ; $AB8A  60

_func_ab8b:
  lda z:_var_0000_indexed        ; $AB8B  A5 00
  ora z:_var_00f5_indexed        ; $AB8D  05 F5
  sta z:_var_00f5_indexed        ; $AB8F  85 F5
  lda z:_var_0001_indexed        ; $AB91  A5 01
  ora z:_var_00f6                ; $AB93  05 F6
  sta z:_var_00f6                ; $AB95  85 F6
  rts                            ; $AB97  60

.byte $20, $69, $ab, $f0, $20    ; $AB98

_func_ab9d:
  jsr _func_ab69                 ; $AB9D  20 69 AB
  jsr _func_ab8b                 ; $ABA0  20 8B AB
  lda z:_var_00f5_indexed        ; $ABA3  A5 F5
  sta z:_var_00a9                ; $ABA5  85 A9
  lda z:_var_00f6                ; $ABA7  A5 F6
  sta z:_var_00aa                ; $ABA9  85 AA
  jsr _func_ab69                 ; $ABAB  20 69 AB
  jsr _func_ab8b                 ; $ABAE  20 8B AB
  lda z:_var_00f5_indexed        ; $ABB1  A5 F5
  and z:_var_00a9                ; $ABB3  25 A9
  sta z:_var_00f5_indexed        ; $ABB5  85 F5
  lda z:_var_00f6                ; $ABB7  A5 F6
  and z:_var_00aa                ; $ABB9  25 AA
  sta z:_var_00f6                ; $ABBB  85 F6
  ldx #$01                       ; $ABBD  A2 01

_label_abbf:
  lda z:_var_00f5_indexed,X      ; $ABBF  B5 F5
  tay                            ; $ABC1  A8
  eor z:_var_00f7_indexed,X      ; $ABC2  55 F7
  and z:_var_00f5_indexed,X      ; $ABC4  35 F5
  sta z:_var_00f5_indexed,X      ; $ABC6  95 F5
  sty z:_var_00f7_indexed,X      ; $ABC8  94 F7
  dex                            ; $ABCA  CA
  bpl _label_abbf                ; $ABCB  10 F2
  rts                            ; $ABCD  60

.byte $20, $69, $ab, $a4, $f5, $a5, $f6, $48, $20, $69, $ab, $68, $c5, $f6, $d0, $f3 ; $ABCE
.byte $c4, $f5, $d0, $ef, $f0, $d9, $20, $69, $ab, $20, $8b, $ab, $a4, $f5, $a5, $f6 ; $ABDE
.byte $48, $20, $69, $ab, $20, $8b, $ab, $68, $c5, $f6, $d0, $f0, $c4, $f5, $d0, $ec ; $ABEE
.byte $f0, $bd, $20, $69, $ab, $a5, $00, $85, $f7, $a5, $01, $85, $f8, $a2, $03, $b5 ; $ABFE
.byte $f5, $a8, $55, $f1, $35, $f5, $95, $f5, $94, $f1, $ca, $10, $f2, $60 ; $AC0E

_func_ac1c:
  sta z:_var_0000_indexed        ; $AC1C  85 00
  stx z:_var_0001_indexed        ; $AC1E  86 01
  sty z:_var_0002                ; $AC20  84 02
  lda PPU_STATUS                 ; $AC22  AD 02 20
  lda z:_var_00ff                ; $AC25  A5 FF
  and #$FB                       ; $AC27  29 FB
  sta PPU_CTRL                   ; $AC29  8D 00 20
  sta z:_var_00ff                ; $AC2C  85 FF
  lda z:_var_0000_indexed        ; $AC2E  A5 00
  sta PPU_ADDR                   ; $AC30  8D 06 20
  ldy #$00                       ; $AC33  A0 00
  sty PPU_ADDR                   ; $AC35  8C 06 20
  ldx #$04                       ; $AC38  A2 04
  cmp #$20                       ; $AC3A  C9 20
  bcs _label_ac40                ; $AC3C  B0 02
  ldx z:_var_0002                ; $AC3E  A6 02

_label_ac40:
  ldy #$00                       ; $AC40  A0 00
  lda z:_var_0001_indexed        ; $AC42  A5 01

_label_ac44:
  sta PPU_DATA                   ; $AC44  8D 07 20
  dey                            ; $AC47  88
  bne _label_ac44                ; $AC48  D0 FA
  dex                            ; $AC4A  CA
  bne _label_ac44                ; $AC4B  D0 F7
  ldy z:_var_0002                ; $AC4D  A4 02
  lda z:_var_0000_indexed        ; $AC4F  A5 00
  cmp #$20                       ; $AC51  C9 20
  bcc _label_ac67                ; $AC53  90 12
  adc #$02                       ; $AC55  69 02
  sta PPU_ADDR                   ; $AC57  8D 06 20
  lda #$C0                       ; $AC5A  A9 C0
  sta PPU_ADDR                   ; $AC5C  8D 06 20
  ldx #$40                       ; $AC5F  A2 40

_label_ac61:
  sty PPU_DATA                   ; $AC61  8C 07 20
  dex                            ; $AC64  CA
  bne _label_ac61                ; $AC65  D0 FA

_label_ac67:
  ldx z:_var_0001_indexed        ; $AC67  A6 01
  rts                            ; $AC69  60

_func_ac6a:
  pha                            ; $AC6A  48
  txa                            ; $AC6B  8A
  sty z:_var_0001_indexed        ; $AC6C  84 01
  clc                            ; $AC6E  18
  sbc z:_var_0001_indexed        ; $AC6F  E5 01
  tax                            ; $AC71  AA
  pla                            ; $AC72  68
  ldy #$00                       ; $AC73  A0 00
  sty z:_var_0000_indexed        ; $AC75  84 00

_label_ac77:
  sta (_var_0000_indexed),Y      ; $AC77  91 00
  dey                            ; $AC79  88
  bne _label_ac77                ; $AC7A  D0 FB
  dec z:_var_0001_indexed        ; $AC7C  C6 01
  inx                            ; $AC7E  E8
  bne _label_ac77                ; $AC7F  D0 F6
  rts                            ; $AC81  60

_jump_engine_ac82:               ; jump engine detected
  asl a                          ; $AC82  0A
  tay                            ; $AC83  A8
  iny                            ; $AC84  C8
  pla                            ; $AC85  68
  sta z:_var_0000_indexed        ; $AC86  85 00
  pla                            ; $AC88  68
  sta z:_var_0001_indexed        ; $AC89  85 01
  lda (_var_0000_indexed),Y      ; $AC8B  B1 00
  tax                            ; $AC8D  AA
  iny                            ; $AC8E  C8
  lda (_var_0000_indexed),Y      ; $AC8F  B1 00
  sta z:_var_0001_indexed        ; $AC91  85 01
  stx z:_var_0000_indexed        ; $AC93  86 00
  jmp (_var_0000_indexed)        ; $AC95  6C 00 00

.byte $78, $ee, $00, $80, $a9, $1a, $20, $a3, $ac, $60, $60 ; $AC98

_func_aca3:
  sta a:_data_9fff               ; $ACA3  8D FF 9F
  lsr a                          ; $ACA6  4A
  sta a:_data_9fff               ; $ACA7  8D FF 9F
  lsr a                          ; $ACAA  4A
  sta a:_data_9fff               ; $ACAB  8D FF 9F
  lsr a                          ; $ACAE  4A
  sta a:_data_9fff               ; $ACAF  8D FF 9F
  lsr a                          ; $ACB2  4A
  sta a:_data_9fff               ; $ACB3  8D FF 9F
  rts                            ; $ACB6  60

_func_acb7:
  sta a:_data_bfff               ; $ACB7  8D FF BF
  lsr a                          ; $ACBA  4A
  sta a:_data_bfff               ; $ACBB  8D FF BF
  lsr a                          ; $ACBE  4A
  sta a:_data_bfff               ; $ACBF  8D FF BF
  lsr a                          ; $ACC2  4A
  sta a:_data_bfff               ; $ACC3  8D FF BF
  lsr a                          ; $ACC6  4A
  sta a:_data_bfff               ; $ACC7  8D FF BF
  rts                            ; $ACCA  60

_func_accb:
  sta a:_data_dfff               ; $ACCB  8D FF DF
  lsr a                          ; $ACCE  4A
  sta a:_data_dfff               ; $ACCF  8D FF DF
  lsr a                          ; $ACD2  4A
  sta a:_data_dfff               ; $ACD3  8D FF DF
  lsr a                          ; $ACD6  4A
  sta a:_data_dfff               ; $ACD7  8D FF DF
  lsr a                          ; $ACDA  4A
  sta a:_data_dfff               ; $ACDB  8D FF DF
  rts                            ; $ACDE  60

_func_acdf:
  sta a:_data_fff0               ; $ACDF  8D F0 FF
  lsr a                          ; $ACE2  4A
  sta a:_data_fff0               ; $ACE3  8D F0 FF
  lsr a                          ; $ACE6  4A
  sta a:_data_fff0               ; $ACE7  8D F0 FF
  lsr a                          ; $ACEA  4A
  sta a:_data_fff0               ; $ACEB  8D F0 FF
  lsr a                          ; $ACEE  4A
  sta a:_data_fff0               ; $ACEF  8D F0 FF
  rts                            ; $ACF2  60

.byte $3f, $00, $20, $0f, $30, $12, $16, $0f, $20, $12, $18, $0f, $2c, $16, $29, $0f ; $ACF3
.byte $3c, $00, $30, $0f, $35, $15, $22, $0f, $35, $29, $26, $0f, $2c, $16, $29, $0f ; $AD03
.byte $3c, $00, $30, $ff, $3f, $00, $10, $0f, $27, $2a, $2b, $0f, $3c, $2a, $22, $0f ; $AD13
.byte $27, $2c, $29, $0f, $30, $3a, $15, $ff, $3f, $00, $14, $0f, $30, $38, $00, $0f ; $AD23
.byte $30, $16, $00, $0f, $30, $21, $00, $0f, $16, $2a, $28, $0f, $30, $29, $27, $ff ; $AD33
.byte $3f, $00, $20, $12, $0f, $29, $37, $12, $0f, $30, $27, $12, $0f, $17, $27, $12 ; $AD43
.byte $0f, $15, $37, $12, $0f, $29, $37, $12, $0f, $30, $27, $12, $0f, $17, $27, $12 ; $AD53
.byte $0f, $15, $37, $ff         ; $AD63

_data_ad67_indexed:
.byte $08, $0f, $17, $01, $12, $04, $0f, $14, $01, $13, $01, $0e, $0c, $01, $0e, $03 ; $AD67
.byte $05, $2b, $00, $00, $00, $00, $00, $00, $01, $0c, $05, $18, $2b, $2b, $14, $0f ; $AD77
.byte $0e, $19, $2b, $2b, $0e, $09, $0e, $14, $05, $0e, $00, $00, $00, $00, $00, $00 ; $AD87
.byte $01, $00, $00, $00, $75, $00, $00, $50, $00, $00, $00, $00, $00, $20, $00, $00 ; $AD97
.byte $10, $00, $00, $05, $00, $00, $00, $00, $09, $05, $00, $00, $09, $05, $00, $00 ; $ADA7
.byte $ff, $20, $00, $20, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $ADB7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $ADC7
.byte $ff, $ff, $ff, $ff, $20, $20, $20, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $ADD7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $ADE7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $20, $40, $20, $ff, $ff, $ff, $ff, $ff, $ff ; $ADF7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $AE07
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $20, $60, $20, $ff, $ff, $ff ; $AE17
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $AE27
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $20, $80, $20 ; $AE37
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $AE47
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $AE57
.byte $20, $a0, $20, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $AE67
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $AE77
.byte $ff, $ff, $ff, $20, $c0, $20, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $1d ; $AE87
.byte $16, $ff, $0a, $17, $0d, $ff, $f5, $ff, $01, $09, $08, $07, $ff, $ff, $ff, $ff ; $AE97
.byte $ff, $ff, $ff, $ff, $ff, $ff, $20, $e0, $20, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $AEA7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $AEB7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $21, $00, $20, $ff, $ff, $ff, $ff ; $AEC7
.byte $ff, $1f, $4f, $18, $ff, $0e, $15, $0e, $0c, $1d, $1b, $18, $17, $18, $1b, $10 ; $AED7
.byte $1d, $0e, $0c, $11, $17, $12, $0c, $0a, $ff, $ff, $ff, $ff, $21, $20, $20, $ff ; $AEE7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $AEF7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $21 ; $AF07
.byte $40, $20, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $5e, $6e, $0e ; $AF17
.byte $15, $18, $1b, $10, $6e, $5f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $AF27
.byte $ff, $ff, $21, $60, $20, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $AF37
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $AF47
.byte $ff, $ff, $ff, $ff, $ff, $21, $80, $20, $ff, $ff, $ff, $1d, $0e, $1d, $1b, $12 ; $AF57
.byte $1c, $ff, $15, $12, $0c, $0e, $17, $1c, $0e, $0d, $ff, $1d, $18, $ff, $17, $12 ; $AF67
.byte $17, $1d, $0e, $17, $0d, $18, $ff, $ff, $21, $a0, $20, $ff, $ff, $ff, $ff, $ff ; $AF77
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $AF87
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $21, $c0, $20, $ff, $ff ; $AF97
.byte $ff, $ff, $ff, $ff, $ff, $f5, $ff, $01, $09, $08, $09, $ff, $17, $12, $17, $1d ; $AFA7
.byte $0e, $17, $0d, $18, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $21, $e0 ; $AFB7
.byte $20, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $AFC7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $AFD7
.byte $ff, $22, $00, $20, $ff, $ff, $ff, $ff, $ff, $ff, $0a, $15, $15, $ff, $1b, $12 ; $AFE7
.byte $10, $11, $1d, $1c, $ff, $1b, $0e, $1c, $0e, $1b, $1f, $0e, $0d, $ff, $ff, $ff ; $AFF7
.byte $ff, $ff, $ff, $ff, $22, $20, $20, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B007
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B017
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $22, $40, $20, $ff, $ff, $ff, $ff, $18, $1b ; $B027
.byte $12, $10, $12, $17, $0a, $15, $ff, $0c, $18, $17, $0c, $0e, $19, $1d, $25, $0d ; $B037
.byte $0e, $1c, $12, $10, $17, $ff, $ff, $ff, $ff, $ff, $22, $60, $20, $ff, $ff, $ff ; $B047
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B057
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $22, $80, $20 ; $B067
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $0a, $17, $0d, $ff, $19 ; $B077
.byte $1b, $18, $10, $1b, $0a, $16, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B087
.byte $22, $a0, $20, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B097
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B0A7
.byte $ff, $ff, $ff, $22, $c0, $20, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $0b, $22, $ff ; $B0B7
.byte $0a, $15, $0e, $21, $0e, $22, $ff, $19, $0a, $23, $11, $12, $1d, $17, $18, $1f ; $B0C7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $22, $e0, $20, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B0D7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B0E7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $23, $00, $20, $ff, $ff, $ff, $ff ; $B0F7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B107
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $23, $20, $20, $ff ; $B117
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B127
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $23 ; $B137
.byte $40, $20, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B147
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B157
.byte $ff, $ff, $23, $60, $20, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B167
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B177
.byte $ff, $ff, $ff, $ff, $ff, $23, $80, $20, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B187
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B197
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $23, $a0, $20, $ff, $ff, $ff, $ff, $ff ; $B1A7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B1B7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $23, $c0, $20, $ff, $ff ; $B1C7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $5f, $df, $ff, $ff, $bf, $00 ; $B1D7
.byte $00, $00, $00, $00, $00, $cc, $f7, $45, $5d, $1f, $0f, $03, $00, $0c, $23, $e0 ; $B1E7
.byte $20, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $bf, $af, $af, $af, $af ; $B1F7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $0f, $0f, $0f, $0f, $0f, $0f, $0f ; $B207
.byte $0f, $ff, $20, $00, $20, $83, $90, $83, $90, $81, $83, $62, $72, $80, $81, $91 ; $B217
.byte $82, $90, $83, $70, $71, $62, $80, $41, $83, $60, $61, $62, $62, $80, $91, $62 ; $B227
.byte $a0, $83, $80, $81, $91, $20, $20, $20, $80, $a1, $62, $82, $80, $81, $a1, $82 ; $B237
.byte $60, $61, $82, $80, $a1, $90, $73, $90, $a1, $80, $81, $91, $70, $71, $72, $40 ; $B247
.byte $83, $72, $72, $80, $81, $81, $83, $82, $20, $40, $20, $80, $81, $a1, $80, $43 ; $B257
.byte $83, $90, $83, $70, $71, $80, $81, $91, $72, $62, $82, $62, $60, $61, $82, $62 ; $B267
.byte $80, $a1, $82, $62, $82, $a0, $83, $ff, $60, $61, $62, $20, $60, $20, $90, $81 ; $B277
.byte $83, $62, $82, $80, $a1, $ff, $80, $81, $81, $83, $82, $82, $72, $80, $42, $70 ; $B287
.byte $71, $90, $a1, $ff, $ff, $80, $41, $83, $ff, $ff, $ff, $70, $71, $40, $20, $80 ; $B297
.byte $20, $82, $62, $80, $41, $83, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $80, $a1 ; $B2A7
.byte $ff, $82, $ff, $ff, $82, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $62 ; $B2B7
.byte $82, $20, $a0, $20, $90, $a1, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B2C7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B2D7
.byte $ff, $ff, $a0, $91, $20, $c0, $20, $82, $ff, $ff, $c3, $c4, $c5, $c6, $c7, $c5 ; $B2E7
.byte $c8, $c9, $ca, $c3, $c4, $c5, $c6, $c7, $c5, $bc, $c0, $c1, $c5, $ff, $cb, $cc ; $B2F7
.byte $be, $bf, $b0, $b1, $ff, $62, $82, $20, $e0, $20, $90, $73, $ff, $d3, $d4, $d5 ; $B307
.byte $d6, $d7, $d5, $ff, $d9, $da, $d3, $d4, $d5, $d6, $d7, $d5, $9c, $d0, $d1, $d5 ; $B317
.byte $ff, $e8, $e9, $ce, $cf, $ff, $ff, $ff, $72, $62, $21, $00, $20, $72, $ff, $ff ; $B327
.byte $e3, $ff, $d5, $ff, $e7, $d5, $ff, $c2, $ea, $e3, $ff, $d5, $ff, $e7, $d5, $9c ; $B337
.byte $e0, $e1, $d5, $ff, $af, $fd, $5c, $df, $ff, $ff, $ff, $72, $72, $21, $20, $20 ; $B347
.byte $82, $ff, $ff, $ff, $ff, $d5, $ff, $ff, $d5, $e4, $d2, $ff, $ff, $ff, $d5, $ff ; $B357
.byte $ff, $d5, $ac, $f0, $f1, $d5, $ff, $b3, $fd, $6c, $7e, $ff, $ff, $62, $82, $72 ; $B367
.byte $21, $40, $20, $90, $81, $83, $ff, $ff, $d5, $ff, $ff, $d5, $f4, $e2, $ff, $ff ; $B377
.byte $ff, $d5, $ff, $ff, $d5, $7c, $ff, $ff, $d5, $ff, $7d, $5d, $fd, $a3, $ff, $ff ; $B387
.byte $a0, $91, $82, $21, $60, $20, $82, $62, $ff, $ff, $ff, $d5, $ff, $ff, $d5, $ff ; $B397
.byte $f2, $cd, $ff, $ff, $d5, $ff, $ff, $d5, $8c, $8d, $ff, $d5, $ff, $8c, $6d, $fd ; $B3A7
.byte $7f, $ff, $ff, $ff, $82, $62, $21, $80, $20, $80, $43, $83, $ff, $ff, $d5, $ff ; $B3B7
.byte $ff, $d5, $ff, $dc, $dd, $ff, $ff, $d5, $ff, $ff, $d5, $9c, $9d, $ff, $d5, $ff ; $B3C7
.byte $9c, $9d, $8e, $8f, $ff, $ff, $ff, $62, $40, $21, $a0, $20, $83, $82, $ff, $ff ; $B3D7
.byte $ff, $e5, $ff, $ff, $e5, $eb, $ec, $ed, $ff, $ff, $e5, $ff, $ff, $e5, $ac, $ad ; $B3E7
.byte $ae, $e5, $ff, $ac, $ad, $9e, $9f, $ff, $ff, $ff, $72, $82, $21, $c0, $20, $60 ; $B3F7
.byte $61, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B407
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $a0, $83, $21 ; $B417
.byte $e0, $20, $70, $71, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B427
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $80 ; $B437
.byte $81, $91, $22, $00, $20, $90, $73, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B447
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $93, $ff, $ff ; $B457
.byte $ff, $80, $43, $83, $82, $22, $20, $20, $72, $62, $ff, $ff, $ff, $ff, $ff, $ff ; $B467
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $55, $56, $57 ; $B477
.byte $58, $59, $5a, $ff, $ff, $82, $80, $91, $22, $40, $20, $82, $a0, $91, $ff, $ff ; $B487
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $64 ; $B497
.byte $65, $66, $67, $68, $69, $6a, $6b, $ff, $ff, $62, $72, $22, $60, $20, $81, $62 ; $B4A7
.byte $82, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B4B7
.byte $ff, $ff, $74, $75, $76, $77, $78, $79, $7a, $7b, $ff, $90, $a1, $82, $22, $80 ; $B4C7
.byte $20, $62, $40, $83, $ff, $ff, $ff, $ff, $19, $1e, $1c, $11, $ff, $1c, $1d, $0a ; $B4D7
.byte $1b, $1d, $ff, $ff, $ff, $84, $85, $86, $87, $88, $89, $8a, $8b, $ff, $82, $90 ; $B4E7
.byte $73, $22, $a0, $20, $72, $82, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B4F7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $94, $95, $96, $97, $98, $99, $9a, $9b ; $B507
.byte $ff, $ff, $72, $80, $22, $c0, $20, $a0, $83, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B517
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $a4, $a5, $a6, $a7, $a8 ; $B527
.byte $a9, $aa, $ab, $ff, $ff, $82, $62, $22, $e0, $20, $81, $81, $83, $ff, $ff, $ff ; $B537
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $b4, $b5 ; $B547
.byte $b6, $b7, $b8, $b9, $ba, $bb, $ff, $ff, $90, $a1, $23, $00, $20, $61, $62, $ff ; $B557
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B567
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $82, $62, $23, $20, $20 ; $B577
.byte $71, $72, $ff, $80, $43, $83, $ff, $ff, $ff, $f5, $ff, $01, $09, $08, $09, $ff ; $B587
.byte $ff, $f6, $f7, $f8, $f9, $fa, $fb, $ff, $ff, $ff, $ff, $ff, $ff, $80, $81, $a1 ; $B597
.byte $23, $40, $20, $91, $72, $ff, $ff, $82, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B5A7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $62, $ff, $ff ; $B5B7
.byte $ff, $60, $61, $23, $60, $20, $82, $82, $62, $ff, $ff, $ff, $80, $91, $ff, $ff ; $B5C7
.byte $ff, $ff, $62, $80, $81, $91, $ff, $90, $73, $90, $83, $62, $ff, $62, $62, $80 ; $B5D7
.byte $42, $90, $81, $83, $70, $71, $23, $80, $20, $60, $61, $40, $83, $ff, $62, $62 ; $B5E7
.byte $a0, $83, $80, $43, $83, $72, $80, $91, $82, $62, $72, $80, $a1, $80, $42, $90 ; $B5F7
.byte $a1, $a0, $91, $82, $82, $62, $80, $91, $80, $23, $a0, $20, $70, $71, $82, $80 ; $B607
.byte $81, $a1, $a0, $81, $83, $62, $82, $80, $a1, $62, $72, $80, $42, $82, $90, $81 ; $B617
.byte $83, $82, $82, $60, $61, $82, $62, $80, $41, $83, $a0, $83, $23, $c0, $20, $aa ; $B627
.byte $aa, $aa, $aa, $aa, $aa, $aa, $aa, $ea, $fa, $fa, $fa, $fa, $fa, $fa, $ba, $a6 ; $B637
.byte $a5, $a5, $a5, $a5, $a5, $a5, $aa, $2a, $00, $00, $00, $00, $00, $00, $aa, $23 ; $B647
.byte $e0, $20, $a2, $00, $00, $00, $00, $ff, $ff, $aa, $aa, $00, $00, $00, $00, $ff ; $B657
.byte $ff, $aa, $aa, $a2, $a7, $a5, $a0, $a0, $a0, $aa, $0a, $0a, $0a, $0a, $0a, $0a ; $B667
.byte $0a, $0a, $ff, $20, $00, $20, $62, $90, $73, $80, $41, $83, $62, $72, $80, $61 ; $B677
.byte $80, $91, $80, $43, $73, $62, $80, $81, $81, $83, $90, $81, $83, $62, $62, $80 ; $B687
.byte $81, $61, $80, $61, $90, $73, $20, $20, $20, $72, $72, $62, $60, $61, $90, $a1 ; $B697
.byte $82, $62, $72, $62, $a0, $83, $82, $80, $41, $83, $62, $80, $61, $82, $80, $81 ; $B6A7
.byte $a1, $72, $60, $61, $82, $62, $72, $72, $62, $20, $40, $20, $72, $82, $72, $70 ; $B6B7
.byte $71, $82, $80, $81, $a1, $82, $a0, $81, $83, $80, $81, $81, $83, $a0, $91, $72 ; $B6C7
.byte $80, $43, $73, $80, $a1, $70, $71, $90, $a1, $82, $82, $72, $20, $60, $20, $82 ; $B6D7
.byte $62, $72, $30, $31, $31, $31, $31, $31, $31, $31, $31, $31, $31, $31, $31, $32 ; $B6E7
.byte $62, $82, $82, $62, $82, $60, $61, $62, $60, $61, $82, $80, $91, $80, $a1, $20 ; $B6F7
.byte $80, $20, $80, $42, $82, $33, $ff, $10, $0a, $16, $0e, $ff, $ff, $1d, $22, $19 ; $B707
.byte $0e, $ff, $34, $a0, $81, $83, $a0, $91, $70, $71, $72, $70, $71, $90, $73, $a0 ; $B717
.byte $83, $62, $20, $a0, $20, $62, $82, $62, $35, $36, $36, $36, $36, $36, $36, $36 ; $B727
.byte $36, $36, $36, $36, $36, $37, $90, $73, $80, $91, $82, $62, $80, $a1, $60, $61 ; $B737
.byte $72, $60, $61, $80, $42, $20, $c0, $20, $40, $73, $a0, $81, $83, $80, $43, $73 ; $B747
.byte $80, $81, $81, $83, $80, $81, $81, $83, $80, $a1, $90, $73, $a0, $83, $a0, $81 ; $B757
.byte $83, $70, $71, $82, $70, $71, $62, $82, $20, $e0, $20, $82, $90, $73, $90, $73 ; $B767
.byte $62, $82, $38, $39, $39, $39, $39, $39, $39, $39, $39, $3a, $62, $72, $38, $39 ; $B777
.byte $39, $39, $39, $39, $39, $39, $39, $3a, $90, $a1, $62, $21, $00, $20, $80, $a1 ; $B787
.byte $80, $a1, $80, $41, $83, $3b, $ff, $0a, $24, $1d, $22, $19, $0e, $ff, $3c, $72 ; $B797
.byte $82, $3b, $ff, $0b, $24, $1d, $22, $19, $0e, $ff, $3c, $82, $80, $42, $21, $20 ; $B7A7
.byte $20, $90, $73, $62, $80, $81, $61, $62, $3d, $3e, $3e, $3e, $3e, $3e, $3e, $3e ; $B7B7
.byte $3e, $3f, $a0, $73, $3d, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3f, $90, $73 ; $B7C7
.byte $82, $21, $40, $20, $72, $80, $41, $83, $62, $82, $a0, $91, $60, $61, $60, $61 ; $B7D7
.byte $62, $80, $81, $61, $60, $61, $80, $81, $81, $83, $62, $80, $61, $90, $81, $83 ; $B7E7
.byte $80, $a1, $80, $61, $21, $60, $20, $82, $90, $81, $83, $a0, $81, $83, $82, $70 ; $B7F7
.byte $71, $70, $71, $a0, $81, $83, $82, $70, $71, $62, $80, $81, $61, $a0, $91, $72 ; $B807
.byte $82, $62, $80, $81, $81, $83, $72, $21, $80, $20, $62, $82, $62, $30, $31, $31 ; $B817
.byte $31, $31, $31, $31, $31, $31, $31, $31, $31, $31, $32, $80, $41, $83, $62, $82 ; $B827
.byte $62, $82, $82, $80, $42, $90, $73, $80, $91, $82, $21, $a0, $20, $72, $80, $42 ; $B837
.byte $33, $ff, $16, $1e, $1c, $12, $0c, $ff, $1d, $22, $19, $0e, $ff, $34, $80, $43 ; $B847
.byte $73, $a0, $91, $72, $80, $81, $61, $82, $72, $90, $73, $a0, $83, $21, $c0, $20 ; $B857
.byte $a0, $73, $82, $35, $36, $36, $36, $36, $36, $36, $36, $36, $36, $36, $36, $36 ; $B867
.byte $37, $62, $82, $80, $91, $82, $72, $60, $61, $82, $62, $82, $72, $80, $81, $61 ; $B877
.byte $21, $e0, $20, $60, $61, $62, $80, $81, $61, $80, $43, $73, $80, $81, $81, $83 ; $B887
.byte $80, $81, $81, $83, $a0, $81, $83, $a0, $83, $82, $70, $71, $80, $41, $83, $82 ; $B897
.byte $80, $91, $82, $22, $00, $20, $70, $71, $a0, $81, $83, $82, $62, $82, $80, $81 ; $B8A7
.byte $61, $62, $28, $29, $29, $29, $29, $29, $29, $29, $29, $29, $29, $2a, $80, $81 ; $B8B7
.byte $81, $83, $60, $61, $a0, $83, $22, $20, $20, $81, $83, $60, $61, $62, $62, $a0 ; $B8C7
.byte $81, $83, $62, $82, $72, $2b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B8D7
.byte $2c, $80, $81, $81, $83, $70, $71, $80, $81, $22, $40, $20, $61, $62, $70, $71 ; $B8E7
.byte $72, $40, $73, $90, $73, $40, $73, $72, $2b, $ff, $16, $1e, $1c, $12, $0c, $53 ; $B8F7
.byte $54, $01, $ff, $2c, $62, $80, $61, $60, $61, $90, $81, $83, $22, $60, $20, $82 ; $B907
.byte $a0, $91, $62, $72, $82, $62, $72, $62, $82, $62, $82, $2b, $ff, $ff, $ff, $ff ; $B917
.byte $ff, $ff, $ff, $ff, $ff, $ff, $2c, $a0, $91, $72, $70, $71, $82, $62, $62, $22 ; $B927
.byte $80, $20, $73, $62, $82, $72, $82, $90, $a1, $82, $40, $73, $a0, $91, $2b, $ff ; $B937
.byte $16, $1e, $1c, $12, $0c, $53, $54, $02, $ff, $2c, $62, $82, $82, $62, $60, $61 ; $B947
.byte $72, $a0, $22, $a0, $20, $83, $40, $73, $a0, $73, $82, $60, $61, $82, $60, $61 ; $B957
.byte $82, $2b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $2c, $40, $73, $80 ; $B967
.byte $42, $70, $71, $a0, $73, $22, $c0, $20, $61, $82, $80, $81, $81, $83, $70, $71 ; $B977
.byte $62, $70, $71, $62, $2b, $ff, $16, $1e, $1c, $12, $0c, $53, $54, $03, $ff, $2c ; $B987
.byte $82, $90, $73, $82, $62, $80, $81, $61, $22, $e0, $20, $71, $90, $81, $83, $80 ; $B997
.byte $81, $61, $80, $42, $80, $81, $a1, $2b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $B9A7
.byte $ff, $ff, $2c, $80, $a1, $80, $81, $a1, $90, $73, $82, $23, $00, $20, $61, $82 ; $B9B7
.byte $80, $43, $73, $62, $82, $62, $82, $80, $81, $61, $2b, $ff, $ff, $ff, $18, $0f ; $B9C7
.byte $0f, $ff, $ff, $ff, $ff, $2c, $80, $81, $81, $83, $80, $a1, $60, $61, $23, $20 ; $B9D7
.byte $20, $82, $60, $61, $82, $90, $a1, $80, $41, $83, $62, $62, $82, $2b, $ff, $ff ; $B9E7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $2c, $60, $61, $62, $62, $80, $61, $70 ; $B9F7
.byte $71, $23, $40, $20, $62, $70, $71, $62, $82, $90, $81, $83, $62, $72, $40, $73 ; $BA07
.byte $2d, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2f, $70, $71, $72, $40 ; $BA17
.byte $73, $72, $80, $81, $23, $60, $20, $72, $62, $80, $41, $83, $82, $60, $61, $72 ; $BA27
.byte $72, $82, $62, $80, $81, $81, $83, $62, $80, $61, $90, $81, $83, $90, $73, $60 ; $BA37
.byte $61, $72, $82, $62, $82, $62, $62, $23, $80, $20, $72, $a0, $81, $83, $62, $62 ; $BA47
.byte $70, $71, $72, $82, $90, $a1, $62, $60, $61, $80, $41, $83, $72, $82, $62, $80 ; $BA57
.byte $a1, $62, $70, $71, $82, $80, $42, $90, $a1, $72, $23, $a0, $20, $82, $80, $81 ; $BA67
.byte $61, $72, $72, $90, $73, $82, $62, $82, $62, $72, $70, $71, $80, $43, $73, $82 ; $BA77
.byte $80, $41, $83, $80, $41, $83, $80, $81, $61, $82, $82, $80, $a1, $23, $c0, $20 ; $BA87
.byte $2a, $0a, $0a, $0a, $8a, $aa, $aa, $aa, $a2, $60, $50, $50, $98, $aa, $aa, $aa ; $BA97
.byte $6a, $56, $55, $55, $19, $0a, $0a, $8a, $22, $00, $00, $00, $88, $aa, $aa, $aa ; $BAA7
.byte $23, $e0, $20, $aa, $aa, $aa, $00, $00, $00, $aa, $aa, $aa, $aa, $aa, $00, $00 ; $BAB7
.byte $00, $aa, $aa, $aa, $aa, $aa, $00, $00, $00, $aa, $aa, $0a, $0a, $0a, $0a, $0a ; $BAC7
.byte $0a, $0a, $0a, $ff, $20, $00, $20, $60, $61, $60, $61, $62, $82, $62, $90, $83 ; $BAD7
.byte $62, $62, $62, $82, $80, $91, $80, $91, $70, $71, $62, $82, $80, $81, $81, $83 ; $BAE7
.byte $90, $83, $62, $62, $80, $81, $91, $20, $20, $20, $70, $71, $70, $71, $72, $80 ; $BAF7
.byte $42, $72, $90, $a1, $72, $a0, $81, $83, $a0, $83, $a0, $83, $80, $41, $83, $90 ; $BB07
.byte $81, $83, $80, $a1, $90, $a1, $a0, $81, $83, $82, $20, $40, $20, $80, $81, $81 ; $BB17
.byte $83, $a0, $83, $82, $82, $82, $80, $a1, $38, $39, $39, $39, $39, $39, $39, $39 ; $BB27
.byte $39, $3a, $82, $80, $81, $81, $83, $82, $80, $81, $91, $60, $61, $20, $60, $20 ; $BB37
.byte $80, $91, $62, $38, $39, $39, $39, $39, $39, $39, $39, $3b, $ff, $0b, $24, $1d ; $BB47
.byte $22, $19, $0e, $ff, $3c, $39, $39, $39, $39, $39, $39, $39, $3a, $82, $70, $71 ; $BB57
.byte $20, $80, $20, $62, $72, $72, $3b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3d, $3e ; $BB67
.byte $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3c ; $BB77
.byte $90, $81, $83, $20, $a0, $20, $72, $82, $72, $3b, $ff, $ff, $ff, $ff, $ff, $ff ; $BB87
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $BB97
.byte $ff, $ff, $3c, $82, $80, $91, $20, $c0, $20, $a0, $83, $82, $3b, $ff, $ff, $ff ; $BBA7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $BBB7
.byte $ff, $ff, $ff, $ff, $ff, $3c, $60, $61, $72, $20, $e0, $20, $90, $81, $83, $3b ; $BBC7
.byte $ff, $ff, $ff, $ff, $44, $45, $45, $45, $45, $45, $46, $ff, $ff, $ff, $ff, $44 ; $BBD7
.byte $45, $45, $45, $45, $45, $45, $46, $ff, $3c, $70, $71, $82, $21, $00, $20, $82 ; $BBE7
.byte $80, $91, $3b, $ff, $ff, $ff, $ff, $47, $15, $0e, $1f, $0e, $15, $48, $ff, $ff ; $BBF7
.byte $ff, $ff, $47, $11, $0e, $12, $10, $11, $1d, $48, $ff, $3c, $80, $81, $91, $21 ; $BC07
.byte $20, $20, $60, $61, $72, $3b, $ff, $ff, $ff, $ff, $49, $4a, $4a, $4a, $4a, $4a ; $BC17
.byte $4b, $ff, $ff, $ff, $ff, $49, $4a, $4a, $4a, $4a, $4a, $4a, $4b, $ff, $3c, $62 ; $BC27
.byte $62, $82, $21, $40, $20, $70, $71, $82, $3b, $ff, $ff, $28, $29, $50, $29, $50 ; $BC37
.byte $29, $50, $29, $50, $29, $2a, $ff, $ff, $28, $29, $50, $29, $50, $29, $2a, $ff ; $BC47
.byte $ff, $3c, $72, $a0, $91, $21, $60, $20, $80, $81, $91, $3b, $ff, $ff, $2b, $00 ; $BC57
.byte $2b, $01, $2b, $02, $2b, $03, $2b, $04, $2c, $ff, $ff, $2b, $00, $2b, $01, $2b ; $BC67
.byte $02, $2c, $ff, $ff, $3c, $72, $62, $82, $21, $80, $20, $62, $62, $82, $3b, $ff ; $BC77
.byte $ff, $4c, $2e, $4d, $2e, $4d, $2e, $4d, $2e, $4d, $2e, $4e, $ff, $ff, $4c, $2e ; $BC87
.byte $4d, $2e, $4d, $2e, $4e, $ff, $ff, $3c, $82, $72, $80, $21, $a0, $20, $72, $a0 ; $BC97
.byte $91, $3b, $ff, $ff, $2b, $05, $2b, $06, $2b, $07, $2b, $08, $2b, $09, $2c, $ff ; $BCA7
.byte $ff, $2b, $03, $2b, $04, $2b, $05, $2c, $ff, $ff, $3c, $62, $a0, $83, $21, $c0 ; $BCB7
.byte $20, $72, $62, $82, $3b, $ff, $ff, $2d, $2e, $51, $2e, $51, $2e, $51, $2e, $51 ; $BCC7
.byte $2e, $2f, $ff, $ff, $2d, $2e, $51, $2e, $51, $2e, $2f, $ff, $ff, $3c, $a0, $81 ; $BCD7
.byte $83, $21, $e0, $20, $82, $72, $80, $3b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $BCE7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $BCF7
.byte $3c, $90, $81, $83, $22, $00, $20, $62, $a0, $83, $3b, $ff, $ff, $ff, $ff, $ff ; $BD07
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $BD17
.byte $ff, $ff, $ff, $3c, $82, $80, $91, $22, $20, $20, $a0, $81, $83, $3b, $ff, $28 ; $BD27
.byte $29, $29, $29, $29, $29, $29, $29, $29, $29, $29, $29, $29, $29, $29, $29, $29 ; $BD37
.byte $29, $29, $29, $29, $2a, $ff, $3c, $60, $61, $72, $22, $40, $20, $62, $80, $91 ; $BD47
.byte $3b, $ff, $2b, $ff, $ff, $ff, $ff, $17, $0a, $16, $0e, $ff, $ff, $1c, $0c, $18 ; $BD57
.byte $1b, $0e, $ff, $ff, $15, $1f, $ff, $2c, $ff, $3c, $70, $71, $82, $22, $60, $20 ; $BD67
.byte $42, $62, $72, $3b, $ff, $4c, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e ; $BD77
.byte $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $4e, $ff, $3c, $80, $81, $91 ; $BD87
.byte $22, $80, $20, $82, $72, $82, $3b, $ff, $2b, $ff, $01, $ff, $ff, $ff, $ff, $ff ; $BD97
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $2c, $ff, $3c ; $BDA7
.byte $62, $62, $82, $22, $a0, $20, $80, $a1, $62, $3b, $ff, $2b, $ff, $ff, $ff, $ff ; $BDB7
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $BDC7
.byte $2c, $ff, $3c, $72, $a0, $91, $22, $c0, $20, $60, $61, $72, $3b, $ff, $2b, $ff ; $BDD7
.byte $02, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $BDE7
.byte $ff, $ff, $ff, $2c, $ff, $3c, $72, $62, $82, $22, $e0, $20, $70, $71, $72, $3b ; $BDF7
.byte $ff, $2b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $BE07
.byte $ff, $ff, $ff, $ff, $ff, $ff, $2c, $ff, $3c, $82, $72, $80, $23, $00, $20, $62 ; $BE17
.byte $62, $82, $3b, $ff, $2b, $ff, $03, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $BE27
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $2c, $ff, $3c, $62, $a0, $83, $23 ; $BE37
.byte $20, $20, $72, $40, $73, $3b, $ff, $2d, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e ; $BE47
.byte $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2f, $ff, $3c, $a0 ; $BE57
.byte $81, $83, $23, $40, $20, $72, $82, $62, $3b, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $BE67
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $BE77
.byte $ff, $3c, $62, $60, $61, $23, $60, $20, $82, $90, $a1, $3d, $3e, $3e, $3e, $3e ; $BE87
.byte $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e ; $BE97
.byte $3e, $3e, $3e, $3e, $3f, $72, $70, $71, $23, $80, $20, $62, $82, $90, $83, $62 ; $BEA7
.byte $80, $81, $91, $80, $81, $81, $83, $90, $83, $90, $83, $60, $61, $90, $81, $83 ; $BEB7
.byte $62, $80, $43, $83, $80, $91, $80, $91, $a0, $83, $62, $23, $a0, $20, $72, $80 ; $BEC7
.byte $a1, $80, $41, $83, $62, $82, $80, $43, $83, $80, $a1, $62, $72, $62, $70, $71 ; $BED7
.byte $82, $80, $81, $a1, $62, $82, $60, $61, $a0, $83, $a0, $83, $80, $41, $23, $c0 ; $BEE7
.byte $20, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $55, $a9, $aa, $9a, $a6, $a5 ; $BEF7
.byte $aa, $aa, $d5, $fa, $fa, $f8, $fa, $7a, $aa, $aa, $dd, $ff, $ff, $ff, $ff, $77 ; $BF07
.byte $aa, $23, $e0, $20, $aa, $00, $00, $00, $00, $00, $00, $aa, $aa, $00, $00, $00 ; $BF17
.byte $00, $00, $00, $aa, $aa, $a0, $a0, $a0, $a0, $a0, $a0, $aa, $0a, $0a, $0a, $0a ; $BF27
.byte $0a, $0a, $0a, $0a, $ff, $20, $00, $20, $7a, $67, $77, $77, $72, $79, $7a, $78 ; $BF37
.byte $75, $7a, $67, $77, $78, $83, $78, $83, $77, $87, $67, $78, $73, $87, $70, $71 ; $BF47
.byte $67, $87, $78, $75, $7a, $72, $7a, $67, $20, $20, $20, $72, $83, $87, $77, $87 ; $BF57
.byte $67, $78, $73, $87, $72, $83, $87, $78, $79, $79, $7a, $87, $78, $84, $7a, $82 ; $BF67
.byte $7a, $80, $81, $82, $79, $7a, $87, $78, $83, $78, $85, $20, $40, $20, $87, $72 ; $BF77
.byte $7a, $87, $78, $84, $7a, $82, $7a, $87, $67, $38, $39, $39, $39, $39, $39, $39 ; $BF87
.byte $39, $39, $39, $39, $3a, $38, $39, $39, $39, $39, $39, $39, $3a, $87, $20, $60 ; $BF97
.byte $20, $67, $77, $38, $39, $39, $39, $39, $39, $39, $3a, $77, $3b, $ff, $15, $12 ; $BFA7
.byte $17, $0e, $1c, $24, $ff, $ff, $ff, $3c, $3b, $ff, $ff, $ff, $ff, $ff, $ff, $3c ; $BFB7
.byte $67, $20, $80, $20, $77, $87, $3b, $ff, $24, $1d, $22, $19, $0e, $3c, $77, $3d ; $BFC7
.byte $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3f, $3b, $1d, $18, $19, $ff ; $BFD7
.byte $ff, $ff, $3c, $77, $20, $a0, $20, $80, $7a, $3d, $3e, $3e, $3e, $3e, $3e, $3e ; $BFE7
.byte $3f, $87, $30, $31, $31, $31, $31, $31 ; $BFF7

_data_bfff:
.byte $31, $31, $31, $31, $31, $32, $3b, $00, $00, $00, $00, $00, $00, $3c, $77, $20 ; $BFFF
.byte $c0, $20, $78, $79, $79, $7a, $67, $70, $71, $67, $78, $79, $73, $33, $ff, $ff ; $C00F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $34, $3b, $ff, $ff, $ff, $ff, $ff, $ff ; $C01F
.byte $3c, $87, $20, $e0, $20, $79, $7a, $78, $79, $83, $80, $81, $82, $79, $7a, $87 ; $C02F
.byte $33, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $34, $3b, $1c, $0c, $18 ; $C03F
.byte $1b, $0e, $ff, $3c, $67, $21, $00, $20, $73, $38, $39, $39, $39, $39, $39, $39 ; $C04F
.byte $39, $39, $3a, $33, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $34, $3b ; $C05F
.byte $00, $00, $00, $00, $00, $00, $3c, $82, $21, $20, $20, $77, $3b, $69, $6a, $6b ; $C06F
.byte $6c, $6d, $6e, $6f, $5f, $3c, $33, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C07F
.byte $ff, $34, $3b, $ff, $ff, $ff, $ff, $ff, $ff, $3c, $67, $21, $40, $20, $87, $3b ; $C08F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3c, $33, $ff, $ff, $ff, $ff, $ff, $ff ; $C09F
.byte $ff, $ff, $ff, $ff, $34, $3d, $3e, $3e, $3e, $3e, $3e, $3e, $3f, $77, $21, $60 ; $C0AF
.byte $20, $7a, $3b, $ff, $40, $41, $42, $ff, $ff, $ff, $ff, $3c, $33, $ff, $ff, $ff ; $C0BF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $34, $78, $79, $79, $7a, $78, $79, $73, $78 ; $C0CF
.byte $83, $21, $80, $20, $7a, $3b, $ff, $50, $51, $52, $00, $00, $00, $ff, $3c, $33 ; $C0DF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $34, $30, $31, $31, $31, $31 ; $C0EF
.byte $32, $87, $67, $78, $21, $a0, $20, $7a, $3b, $ff, $49, $4a, $4b, $ff, $ff, $ff ; $C0FF
.byte $ff, $3c, $33, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $34, $33, $17 ; $C10F
.byte $0e, $21, $1d, $34, $72, $83, $78, $21, $c0, $20, $67, $3b, $ff, $59, $5a, $5b ; $C11F
.byte $00, $00, $00, $ff, $3c, $33, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C12F
.byte $34, $33, $ff, $ff, $ff, $ff, $34, $87, $72, $7a, $21, $e0, $20, $77, $3b, $ff ; $C13F
.byte $46, $47, $ff, $ff, $ff, $ff, $ff, $3c, $33, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C14F
.byte $ff, $ff, $ff, $34, $33, $ff, $ff, $ff, $ff, $34, $78, $83, $70, $22, $00, $20 ; $C15F
.byte $77, $3b, $ff, $56, $57, $58, $00, $00, $00, $ff, $3c, $33, $ff, $ff, $ff, $ff ; $C16F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $34, $33, $ff, $ff, $ff, $ff, $34, $72, $7a, $80 ; $C17F
.byte $22, $20, $20, $87, $3b, $ff, $60, $61, $ff, $ff, $ff, $ff, $ff, $3c, $33, $ff ; $C18F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $34, $33, $ff, $ff, $ff, $ff, $34 ; $C19F
.byte $77, $78, $73, $22, $40, $20, $71, $3b, $ff, $62, $63, $ff, $00, $00, $00, $ff ; $C1AF
.byte $3c, $33, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $34, $35, $36, $36 ; $C1BF
.byte $36, $36, $37, $87, $67, $77, $22, $60, $20, $81, $3b, $ff, $43, $44, $45, $ff ; $C1CF
.byte $ff, $ff, $ff, $3c, $33, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $34 ; $C1DF
.byte $38, $39, $39, $39, $39, $39, $3a, $77, $87, $22, $80, $20, $7a, $3b, $ff, $53 ; $C1EF
.byte $54, $55, $00, $00, $00, $ff, $3c, $33, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C1FF
.byte $ff, $ff, $34, $3b, $15, $0e, $1f, $0e, $15, $3c, $77, $78, $22, $a0, $20, $7a ; $C20F
.byte $3b, $ff, $4c, $4d, $4e, $ff, $ff, $ff, $ff, $3c, $33, $ff, $ff, $ff, $ff, $ff ; $C21F
.byte $ff, $ff, $ff, $ff, $ff, $34, $3b, $ff, $ff, $ff, $ff, $ff, $3c, $87, $67, $22 ; $C22F
.byte $c0, $20, $67, $3b, $ff, $5c, $5d, $5e, $00, $00, $00, $ff, $3c, $33, $ff, $ff ; $C23F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $34, $3d, $3e, $3e, $3e, $3e, $3e, $3f ; $C24F
.byte $78, $85, $22, $e0, $20, $83, $3b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3c ; $C25F
.byte $33, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $34, $67, $78, $75, $7a ; $C26F
.byte $67, $72, $79, $7a, $87, $23, $00, $20, $73, $3b, $ff, $64, $65, $66, $00, $00 ; $C27F
.byte $00, $ff, $3c, $33, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $34, $74 ; $C28F
.byte $7a, $87, $78, $85, $87, $67, $78, $79, $23, $20, $20, $77, $3b, $ff, $ff, $ff ; $C29F
.byte $ff, $ff, $ff, $ff, $ff, $3c, $33, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C2AF
.byte $ff, $34, $87, $78, $79, $73, $87, $72, $83, $72, $7a, $23, $40, $20, $87, $3d ; $C2BF
.byte $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3f, $35, $36, $36, $36, $36, $36, $36 ; $C2CF
.byte $36, $36, $36, $36, $37, $67, $70, $71, $87, $67, $87, $78, $83, $67, $23, $60 ; $C2DF
.byte $20, $67, $67, $78, $75, $7a, $72, $79, $7a, $67, $78, $73, $78, $73, $67, $72 ; $C2EF
.byte $7a, $72, $79, $7a, $78, $79, $79, $7a, $77, $80, $81, $78, $85, $67, $78, $79 ; $C2FF
.byte $83, $23, $80, $20, $77, $82, $73, $87, $67, $87, $67, $72, $83, $67, $82, $7a ; $C30F
.byte $77, $77, $77, $67, $87, $67, $70, $71, $72, $7a, $67, $80, $7a, $78, $73, $87 ; $C31F
.byte $77, $78, $79, $79, $23, $a0, $20, $80, $7a, $87, $78, $84, $7a, $77, $87, $78 ; $C32F
.byte $84, $7a, $67, $87, $77, $87, $77, $72, $83, $80, $81, $77, $67, $82, $79, $7a ; $C33F
.byte $67, $77, $78, $83, $72, $7a, $67, $23, $c0, $20, $ff, $ff, $ff, $ff, $ff, $ff ; $C34F
.byte $ff, $ff, $ff, $ff, $ff, $af, $af, $ef, $ff, $ff, $bf, $2f, $cf, $aa, $aa, $ee ; $C35F
.byte $ff, $ff, $bb, $22, $cc, $aa, $aa, $ee, $ff, $ff, $23, $e0, $20, $bb, $22, $cc ; $C36F
.byte $aa, $aa, $ee, $ff, $ff, $bb, $22, $cc, $aa, $aa, $ee, $ff, $ff, $fb, $f2, $fc ; $C37F
.byte $fa, $fa, $fe, $ff, $ff, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $ff, $20, $00 ; $C38F
.byte $20, $72, $82, $62, $62, $62, $80, $91, $80, $43, $83, $62, $72, $60, $61, $82 ; $C39F
.byte $90, $83, $72, $90, $81, $83, $82, $62, $82, $62, $72, $62, $80, $81, $81, $83 ; $C3AF
.byte $72, $20, $20, $20, $72, $80, $42, $72, $a0, $91, $72, $62, $82, $80, $42, $82 ; $C3BF
.byte $70, $71, $80, $a1, $80, $a1, $82, $80, $81, $91, $72, $80, $42, $72, $40, $83 ; $C3CF
.byte $90, $83, $80, $a1, $20, $40, $20, $82, $62, $82, $a0, $83, $82, $82, $a0, $81 ; $C3DF
.byte $83, $82, $38, $39, $39, $39, $39, $39, $39, $39, $39, $3a, $82, $a0, $83, $82 ; $C3EF
.byte $82, $82, $80, $a1, $90, $83, $62, $20, $60, $20, $80, $41, $83, $38, $39, $39 ; $C3FF
.byte $39, $39, $39, $39, $39, $3b, $ff, $ff, $24, $1d, $22, $19, $0e, $ff, $3c, $39 ; $C40F
.byte $39, $39, $39, $39, $39, $39, $3a, $72, $90, $a1, $20, $80, $20, $62, $80, $91 ; $C41F
.byte $3b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3d, $3e, $3e, $3e, $3e, $3e, $3e, $3e ; $C42F
.byte $3e, $3f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3c, $82, $82, $62, $20, $a0, $20 ; $C43F
.byte $42, $62, $72, $3b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C44F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3c, $80, $81, $a1 ; $C45F
.byte $20, $c0, $20, $82, $72, $82, $3b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C46F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3c ; $C47F
.byte $90, $83, $80, $20, $e0, $20, $62, $a0, $83, $3b, $ff, $ff, $ff, $ff, $ff, $0c ; $C48F
.byte $18, $17, $10, $1b, $0a, $1d, $1e, $15, $0a, $1d, $12, $18, $17, $1c, $ff, $ff ; $C49F
.byte $ff, $ff, $3c, $72, $60, $61, $21, $00, $20, $40, $83, $62, $3b, $ff, $ff, $ff ; $C4AF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C4BF
.byte $ff, $ff, $ff, $ff, $ff, $3c, $82, $70, $71, $21, $20, $20, $82, $80, $42, $3b ; $C4CF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C4DF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3c, $80, $91, $80, $21, $40, $20, $60 ; $C4EF
.byte $61, $82, $3b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $22, $18, $1e, $ff, $0a, $1b ; $C4FF
.byte $0e, $ff, $0a, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3c, $62, $a0, $83, $21 ; $C50F
.byte $60, $20, $70, $71, $62, $3b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C51F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3c, $a0 ; $C52F
.byte $81, $83, $21, $80, $20, $60, $61, $72, $3b, $ff, $ff, $ff, $ff, $ff, $1d, $0e ; $C53F
.byte $1d, $1b, $12, $1c, $ff, $16, $0a, $1c, $1d, $0e, $1b, $6f, $ff, $ff, $ff, $ff ; $C54F
.byte $ff, $3c, $62, $62, $62, $21, $a0, $20, $70, $71, $72, $3b, $ff, $ff, $ff, $ff ; $C55F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C56F
.byte $ff, $ff, $ff, $ff, $3c, $72, $72, $40, $21, $c0, $20, $80, $91, $82, $3b, $ff ; $C57F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C58F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3c, $72, $72, $82, $21, $e0, $20, $62, $a0 ; $C59F
.byte $83, $3b, $ff, $19, $15, $0e, $0a, $1c, $0e, $ff, $0e, $17, $1d, $0e, $1b, $ff ; $C5AF
.byte $22, $18, $1e, $1b, $ff, $17, $0a, $16, $0e, $ff, $3c, $82, $82, $62, $22, $00 ; $C5BF
.byte $20, $40, $83, $62, $3b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C5CF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3c, $80, $91 ; $C5DF
.byte $72, $22, $20, $20, $82, $90, $a1, $3b, $ff, $28, $29, $29, $29, $29, $29, $29 ; $C5EF
.byte $29, $29, $29, $29, $29, $29, $29, $29, $29, $29, $29, $29, $29, $29, $2a, $ff ; $C5FF
.byte $3c, $62, $72, $72, $22, $40, $20, $83, $82, $62, $3b, $ff, $2b, $ff, $ff, $ff ; $C60F
.byte $ff, $17, $0a, $16, $0e, $ff, $ff, $1c, $0c, $18, $1b, $0e, $ff, $ff, $15, $1f ; $C61F
.byte $ff, $2c, $ff, $3c, $72, $82, $82, $22, $60, $20, $80, $81, $a1, $3b, $ff, $4c ; $C62F
.byte $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e ; $C63F
.byte $2e, $2e, $2e, $2e, $4e, $ff, $3c, $a0, $83, $80, $22, $80, $20, $80, $81, $91 ; $C64F
.byte $3b, $ff, $2b, $ff, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C65F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $2c, $ff, $3c, $80, $43, $83, $22, $a0, $20 ; $C66F
.byte $90, $83, $82, $3b, $ff, $2b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C67F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $2c, $ff, $3c, $62, $82, $80 ; $C68F
.byte $22, $c0, $20, $72, $60, $61, $3b, $ff, $2b, $ff, $02, $ff, $ff, $ff, $ff, $ff ; $C69F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $2c, $ff, $3c ; $C6AF
.byte $a0, $81, $83, $22, $e0, $20, $82, $70, $71, $3b, $ff, $2b, $ff, $ff, $ff, $ff ; $C6BF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C6CF
.byte $2c, $ff, $3c, $60, $61, $80, $23, $00, $20, $83, $90, $83, $3b, $ff, $2b, $ff ; $C6DF
.byte $03, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C6EF
.byte $ff, $ff, $ff, $2c, $ff, $3c, $70, $71, $80, $23, $20, $20, $80, $a1, $62, $3b ; $C6FF
.byte $ff, $2d, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e ; $C70F
.byte $2e, $2e, $2e, $2e, $2e, $2e, $2f, $ff, $3c, $62, $60, $61, $23, $40, $20, $80 ; $C71F
.byte $81, $a1, $3b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C72F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3c, $72, $70, $71, $23 ; $C73F
.byte $60, $20, $81, $81, $83, $3d, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e ; $C74F
.byte $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3e, $3f, $a0 ; $C75F
.byte $83, $62, $23, $80, $20, $60, $61, $60, $61, $80, $81, $81, $83, $62, $62, $62 ; $C76F
.byte $80, $81, $91, $62, $80, $43, $83, $62, $62, $80, $81, $81, $83, $62, $90, $83 ; $C77F
.byte $60, $61, $62, $90, $a1, $23, $a0, $20, $70, $71, $70, $71, $90, $83, $80, $81 ; $C78F
.byte $a1, $72, $a0, $81, $83, $82, $40, $83, $82, $80, $42, $40, $83, $80, $91, $80 ; $C79F
.byte $42, $72, $62, $70, $71, $72, $82, $62, $23, $c0, $20, $aa, $aa, $aa, $aa, $aa ; $C7AF
.byte $aa, $aa, $aa, $aa, $0a, $fa, $fa, $fa, $fa, $0a, $aa, $aa, $00, $00, $00, $00 ; $C7BF
.byte $00, $00, $aa, $aa, $00, $00, $00, $00, $00, $00, $aa, $23, $e0, $20, $aa, $00 ; $C7CF
.byte $00, $00, $00, $00, $00, $aa, $aa, $00, $00, $00, $00, $00, $00, $aa, $aa, $a0 ; $C7DF
.byte $a0, $a0, $a0, $a0, $a0, $aa, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $ff, $22 ; $C7EF
.byte $20, $20, $a0, $81, $83, $3b, $ff, $28, $29, $29, $29, $29, $29, $29, $29, $29 ; $C7FF
.byte $29, $29, $29, $29, $29, $29, $29, $29, $29, $29, $29, $29, $2a, $ff, $3c, $60 ; $C80F
.byte $61, $72, $22, $40, $20, $62, $80, $91, $3b, $ff, $2b, $ff, $ff, $ff, $ff, $17 ; $C81F
.byte $0a, $16, $0e, $ff, $ff, $1c, $0c, $18, $1b, $0e, $ff, $ff, $15, $1f, $ff, $2c ; $C82F
.byte $ff, $3c, $70, $71, $82, $22, $60, $20, $42, $62, $72, $3b, $ff, $4c, $2e, $2e ; $C83F
.byte $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e ; $C84F
.byte $2e, $2e, $4e, $ff, $3c, $80, $81, $91, $22, $80, $20, $82, $72, $82, $3b, $ff ; $C85F
.byte $2b, $ff, $01, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C86F
.byte $ff, $ff, $ff, $ff, $ff, $2c, $ff, $3c, $62, $62, $82, $22, $a0, $20, $80, $a1 ; $C87F
.byte $62, $3b, $ff, $2b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C88F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $2c, $ff, $3c, $72, $a0, $91, $22, $c0 ; $C89F
.byte $20, $60, $61, $72, $3b, $ff, $2b, $ff, $02, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C8AF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $2c, $ff, $3c, $72, $62 ; $C8BF
.byte $82, $22, $e0, $20, $70, $71, $72, $3b, $ff, $2b, $ff, $ff, $ff, $ff, $ff, $ff ; $C8CF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $2c, $ff ; $C8DF
.byte $3c, $82, $72, $80, $23, $00, $20, $62, $62, $82, $3b, $ff, $2b, $ff, $03, $ff ; $C8EF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C8FF
.byte $ff, $2c, $ff, $3c, $62, $a0, $83, $23, $20, $20, $72, $40, $73, $3b, $ff, $2d ; $C90F
.byte $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e ; $C91F
.byte $2e, $2e, $2e, $2e, $2f, $ff, $3c, $a0, $81, $83, $23, $e0, $20, $aa, $00, $00 ; $C92F
.byte $00, $00, $00, $00, $aa, $aa, $00, $00, $00, $00, $00, $00, $aa, $aa, $a0, $a0 ; $C93F
.byte $a0, $a0, $a0, $a0, $aa, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $ff, $3f, $0a ; $C94F
.byte $01, $16, $20, $6d, $01, $0a, $20, $f3, $48, $ff, $21, $13, $48, $ff, $21, $33 ; $C95F
.byte $48, $ff, $21, $53, $47, $ff, $21, $73, $47, $ff, $21, $93, $47, $ff, $21, $b3 ; $C96F
.byte $47, $ff, $21, $d3, $47, $ff, $22, $33, $48, $ff, $22, $53, $48, $ff, $22, $73 ; $C97F
.byte $48, $ff, $22, $93, $47, $ff, $22, $b3, $47, $ff, $22, $d3, $47, $ff, $22, $f3 ; $C98F
.byte $47, $ff, $23, $13, $47, $ff, $ff, $20, $00, $20, $ff, $ff, $ff, $ff, $ff, $ff ; $C99F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C9AF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $20, $20, $20, $ff, $ff, $ff ; $C9BF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C9CF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $20, $40, $20 ; $C9DF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C9EF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $C9FF
.byte $20, $60, $20, $ff, $ff, $ff, $ff, $ff, $18, $19, $19, $19, $19, $19, $19, $19 ; $CA0F
.byte $19, $19, $19, $19, $19, $19, $19, $19, $1a, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $CA1F
.byte $ff, $ff, $ff, $20, $80, $20, $ff, $ff, $ff, $ff, $ff, $1b, $ff, $0a, $0b, $0c ; $CA2F
.byte $0d, $0e, $ff, $ff, $00, $00, $00, $00, $00, $00, $ff, $1c, $ff, $ff, $ff, $ff ; $CA3F
.byte $ff, $ff, $be, $bf, $be, $bf, $20, $a0, $20, $ff, $ff, $ff, $ff, $ff, $1b, $ff ; $CA4F
.byte $0f, $0e, $10, $0e, $0f, $ff, $ff, $ff, $00, $00, $00, $00, $00, $ff, $1c, $ff ; $CA5F
.byte $ff, $ff, $ff, $ff, $ff, $ae, $af, $ae, $af, $20, $c0, $20, $ff, $ff, $ff, $ff ; $CA6F
.byte $ff, $1b, $ff, $11, $0e, $12, $13, $11, $14, $ff, $ff, $00, $00, $00, $00, $00 ; $CA7F
.byte $ff, $1c, $ff, $ff, $ff, $ff, $ff, $ff, $ae, $af, $ae, $af, $20, $e0, $20, $ff ; $CA8F
.byte $ff, $ff, $ff, $ff, $1b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $CA9F
.byte $ff, $ff, $ff, $ff, $1c, $ff, $ff, $ff, $43, $44, $45, $ce, $cf, $ae, $af, $21 ; $CAAF
.byte $00, $20, $be, $bf, $be, $bf, $ff, $1b, $ff, $16, $16, $16, $16, $16, $16, $16 ; $CABF
.byte $16, $16, $16, $16, $16, $16, $ff, $1c, $ff, $ff, $ff, $53, $54, $55, $de, $df ; $CACF
.byte $ae, $af, $21, $20, $20, $ae, $af, $ae, $af, $ff, $1b, $ff, $14, $0c, $14, $15 ; $CADF
.byte $0f, $ff, $ff, $00, $00, $00, $00, $00, $00, $ff, $1c, $ff, $ff, $ff, $ff, $ff ; $CAEF
.byte $65, $ee, $ef, $ae, $af, $21, $40, $20, $ae, $af, $ae, $af, $ff, $1d, $1e, $1e ; $CAFF
.byte $1e, $1e, $1e, $1e, $1e, $1e, $1e, $1e, $1e, $1e, $1e, $1e, $1e, $1f, $ff, $ff ; $CB0F
.byte $be, $bf, $be, $bf, $be, $af, $ae, $af, $21, $60, $20, $ae, $af, $ae, $af, $ff ; $CB1F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $CB2F
.byte $ff, $ff, $ff, $ae, $af, $ae, $af, $ae, $af, $ae, $af, $21, $80, $20, $ae, $af ; $CB3F
.byte $cc, $cd, $ff, $ff, $ff, $ff, $ff, $ca, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $CB4F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ae, $af, $ae, $af, $ae, $af, $ae, $af, $21, $a0 ; $CB5F
.byte $20, $ae, $af, $dc, $dd, $ff, $93, $94, $ff, $ff, $da, $ff, $ff, $ff, $ff, $ff ; $CB6F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ae, $af, $ae, $af, $ae, $af, $ae ; $CB7F
.byte $af, $21, $c0, $20, $ae, $af, $ec, $ed, $ff, $ff, $ff, $ff, $ff, $ea, $ff, $ff ; $CB8F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $CB9F
.byte $ae, $af, $ae, $af, $21, $e0, $20, $ae, $af, $ec, $ed, $ff, $b3, $b4, $b5, $f9 ; $CBAF
.byte $fa, $fb, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $CBBF
.byte $ff, $ff, $ff, $ae, $af, $ae, $af, $22, $00, $20, $ae, $af, $ae, $bf, $be, $bf ; $CBCF
.byte $be, $bf, $be, $bf, $be, $bf, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $CBDF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ce, $cf, $ae, $af, $22, $20, $20, $ae, $af, $ae ; $CBEF
.byte $af, $ae, $af, $ae, $af, $ae, $af, $ae, $af, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $CBFF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $de, $df, $ae, $af, $22, $40, $20 ; $CC0F
.byte $ae, $af, $dc, $cd, $ff, $ff, $c0, $c1, $c2, $c3, $ff, $ff, $ff, $ff, $ff, $ff ; $CC1F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ee, $ef, $ae, $af ; $CC2F
.byte $22, $60, $20, $ae, $af, $ec, $dd, $ff, $ff, $d0, $d1, $d2, $d3, $ff, $ff, $ff ; $CC3F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ee ; $CC4F
.byte $ef, $ae, $af, $22, $80, $20, $ae, $af, $ec, $ed, $ff, $ff, $e0, $ff, $ff, $e3 ; $CC5F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $be, $bf, $be, $bf, $be, $bf ; $CC6F
.byte $be, $bf, $be, $af, $ae, $af, $22, $a0, $20, $ae, $af, $ec, $ed, $ff, $ff, $f0 ; $CC7F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ae, $af, $ae ; $CC8F
.byte $af, $ae, $af, $ae, $af, $ae, $af, $ae, $af, $22, $c0, $20, $ae, $af, $ae, $bf ; $CC9F
.byte $be, $bf, $be, $bf, $be, $bf, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $4d, $ff, $ff ; $CCAF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ce, $cf, $ae, $af, $22, $e0, $20, $ae ; $CCBF
.byte $af, $ae, $af, $ae, $af, $ae, $af, $ae, $af, $ff, $ff, $ff, $59, $5a, $ff, $5c ; $CCCF
.byte $5d, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $de, $df, $ae, $af, $23 ; $CCDF
.byte $00, $20, $ae, $af, $ae, $af, $ae, $af, $ae, $af, $ae, $af, $ff, $ff, $68, $69 ; $CCEF
.byte $6a, $6b, $6c, $6d, $6e, $6f, $ff, $b6, $b7, $b8, $ff, $ff, $81, $ff, $ee, $ef ; $CCFF
.byte $ae, $af, $23, $20, $20, $ae, $af, $ae, $af, $ae, $af, $ae, $af, $ae, $af, $ff ; $CD0F
.byte $ff, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $ff, $c6, $c7, $ff, $ff, $90, $91 ; $CD1F
.byte $92, $ee, $ef, $ae, $af, $23, $40, $20, $ae, $af, $ae, $af, $ae, $af, $ae, $af ; $CD2F
.byte $ae, $af, $ff, $ff, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $ff, $ff, $ff, $ff ; $CD3F
.byte $ff, $a0, $a1, $a2, $ee, $ef, $ae, $af, $23, $60, $20, $ae, $af, $ae, $af, $ae ; $CD4F
.byte $af, $ae, $af, $ae, $af, $ff, $ff, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $ff ; $CD5F
.byte $e6, $e7, $e8, $ff, $b0, $b1, $b2, $ee, $ef, $ae, $af, $23, $80, $20, $96, $97 ; $CD6F
.byte $96, $97, $96, $97, $96, $97, $96, $97, $96, $97, $96, $97, $96, $97, $96, $97 ; $CD7F
.byte $96, $97, $96, $97, $96, $97, $96, $97, $96, $97, $96, $97, $96, $97, $23, $a0 ; $CD8F
.byte $20, $a6, $a7, $a6, $a7, $a6, $a7, $a6, $a7, $a6, $a7, $a6, $a7, $a6, $a7, $a6 ; $CD9F
.byte $a7, $a6, $a7, $a6, $a7, $a6, $a7, $a6, $a7, $a6, $a7, $a6, $a7, $a6, $a7, $a6 ; $CDAF
.byte $a7, $23, $c0, $20, $aa, $fa, $fa, $fa, $fa, $ba, $aa, $aa, $aa, $77, $55, $55 ; $CDBF
.byte $55, $bb, $5a, $aa, $aa, $f7, $f5, $f5, $f5, $bb, $a5, $aa, $aa, $55, $aa, $00 ; $CDCF
.byte $00, $aa, $aa, $aa, $23, $e0, $20, $aa, $2a, $8a, $00, $00, $00, $00, $aa, $aa ; $CDDF
.byte $a2, $a8, $00, $00, $aa, $aa, $aa, $aa, $aa, $aa, $0f, $0f, $ff, $00, $aa, $0a ; $CDEF
.byte $0a, $0a, $0a, $0a, $0a, $0a, $0a, $ff, $20, $00, $20, $76, $77, $76, $77, $76 ; $CDFF
.byte $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76 ; $CE0F
.byte $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $20, $20, $20, $76, $77 ; $CE1F
.byte $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77 ; $CE2F
.byte $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $20, $40 ; $CE3F
.byte $20, $76, $77, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $CE4F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $76 ; $CE5F
.byte $77, $20, $60, $20, $76, $77, $ff, $ff, $ff, $18, $19, $19, $19, $19, $19, $19 ; $CE6F
.byte $19, $19, $19, $19, $19, $19, $19, $19, $19, $1a, $ff, $ff, $ff, $ff, $ff, $ff ; $CE7F
.byte $ff, $ff, $76, $77, $20, $80, $20, $76, $77, $ff, $ff, $ff, $1b, $ff, $0a, $0b ; $CE8F
.byte $0c, $0d, $0e, $ff, $ff, $00, $00, $00, $00, $00, $00, $ff, $1c, $ff, $ff, $ff ; $CE9F
.byte $ff, $ff, $ff, $ff, $ff, $76, $77, $20, $a0, $20, $76, $77, $ff, $ff, $ff, $1b ; $CEAF
.byte $ff, $0f, $0e, $10, $0e, $0f, $ff, $ff, $ff, $00, $00, $00, $00, $00, $ff, $1c ; $CEBF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $76, $77, $20, $c0, $20, $76, $77, $ff ; $CECF
.byte $ff, $ff, $1b, $ff, $11, $0e, $12, $13, $11, $14, $ff, $ff, $00, $00, $00, $00 ; $CEDF
.byte $00, $ff, $1c, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $76, $77, $20, $e0, $20 ; $CEEF
.byte $76, $77, $ff, $ff, $ff, $1b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $CEFF
.byte $ff, $ff, $ff, $ff, $ff, $1c, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $76, $77 ; $CF0F
.byte $21, $00, $20, $76, $77, $ff, $ff, $ff, $1b, $ff, $16, $16, $16, $16, $16, $16 ; $CF1F
.byte $16, $16, $16, $16, $16, $16, $16, $ff, $1c, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $CF2F
.byte $ff, $76, $77, $21, $20, $20, $76, $77, $ff, $ff, $ff, $1b, $ff, $14, $0c, $14 ; $CF3F
.byte $15, $0f, $ff, $ff, $00, $00, $00, $00, $00, $00, $ff, $1c, $ff, $ff, $ff, $ff ; $CF4F
.byte $ff, $ff, $ff, $ff, $76, $77, $21, $40, $20, $76, $77, $ff, $ff, $ff, $1d, $1e ; $CF5F
.byte $1e, $1e, $1e, $1e, $1e, $1e, $1e, $1e, $1e, $1e, $1e, $1e, $1e, $1e, $1f, $ff ; $CF6F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $76, $77, $21, $60, $20, $76, $77, $ff, $ff ; $CF7F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $CF8F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $76, $77, $21, $80, $20, $76 ; $CF9F
.byte $77, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $CFAF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $76, $77, $21 ; $CFBF
.byte $a0, $20, $76, $77, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $CFCF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $CFDF
.byte $76, $77, $21, $c0, $20, $76, $77, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $CFEF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $CFFF
.byte $ff, $ff, $ff, $76, $77, $21, $e0, $20, $76, $77, $ff, $ff, $ff, $ff, $ff, $ff ; $D00F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D01F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $76, $77, $22, $00, $20, $76, $77, $ff, $ff, $ff ; $D02F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D03F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $76, $77, $22, $20, $20, $76, $77 ; $D04F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D05F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $76, $77, $22, $40 ; $D06F
.byte $20, $76, $77, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D07F
.byte $ff, $38, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $76 ; $D08F
.byte $77, $22, $60, $20, $76, $77, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D09F
.byte $ff, $39, $ff, $3b, $3c, $ff, $3e, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D0AF
.byte $ff, $ff, $76, $77, $22, $80, $20, $76, $77, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D0BF
.byte $ff, $ff, $ff, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $ff, $ff, $ff, $ff, $ff ; $D0CF
.byte $ff, $ff, $ff, $ff, $ff, $76, $77, $22, $a0, $20, $76, $77, $ff, $ff, $ff, $ff ; $D0DF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $ff, $ff ; $D0EF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $76, $77, $22, $c0, $20, $76, $77, $ff ; $D0FF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $68, $69, $6a, $6b, $6c, $6d, $6e ; $D10F
.byte $6f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $76, $77, $22, $e0, $20 ; $D11F
.byte $76, $77, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $78, $79, $7a, $7b ; $D12F
.byte $7c, $7d, $7e, $7f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $76, $77 ; $D13F
.byte $23, $00, $20, $76, $77, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $88 ; $D14F
.byte $89, $8a, $8b, $8c, $8d, $8e, $8f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D15F
.byte $ff, $76, $77, $23, $20, $20, $76, $77, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D16F
.byte $ff, $ff, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $ff, $ff, $ff, $ff, $ff, $ff ; $D17F
.byte $ff, $ff, $ff, $ff, $76, $77, $23, $40, $20, $76, $77, $86, $87, $86, $87, $86 ; $D18F
.byte $87, $86, $87, $86, $87, $86, $87, $86, $87, $86, $87, $86, $87, $86, $87, $86 ; $D19F
.byte $87, $86, $87, $86, $87, $86, $87, $76, $77, $23, $60, $20, $76, $77, $96, $97 ; $D1AF
.byte $96, $97, $96, $97, $96, $97, $96, $97, $96, $97, $96, $97, $96, $97, $96, $97 ; $D1BF
.byte $96, $97, $96, $97, $96, $97, $96, $97, $96, $97, $76, $77, $23, $80, $20, $76 ; $D1CF
.byte $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76 ; $D1DF
.byte $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $23 ; $D1EF
.byte $a0, $20, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77 ; $D1FF
.byte $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77 ; $D20F
.byte $76, $77, $23, $c0, $20, $aa, $fa, $fa, $fa, $fa, $fa, $aa, $aa, $aa, $77, $55 ; $D21F
.byte $55, $55, $ff, $00, $88, $22, $f7, $f5, $f5, $f5, $ff, $00, $88, $22, $00, $00 ; $D22F
.byte $6a, $5a, $0a, $00, $88, $23, $e0, $20, $22, $00, $00, $f6, $f4, $00, $00, $88 ; $D23F
.byte $22, $00, $00, $ff, $f3, $00, $00, $88, $22, $00, $00, $00, $00, $00, $00, $88 ; $D24F
.byte $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $ff, $20, $00, $20, $76, $77, $76, $77 ; $D25F
.byte $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77 ; $D26F
.byte $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $20, $20, $20, $76 ; $D27F
.byte $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76 ; $D28F
.byte $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $20 ; $D29F
.byte $40, $20, $76, $77, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D2AF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D2BF
.byte $76, $77, $20, $60, $20, $76, $77, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D2CF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D2DF
.byte $ff, $ff, $ff, $76, $77, $20, $80, $20, $76, $77, $ff, $ff, $ff, $ff, $ff, $0a ; $D2EF
.byte $0b, $0c, $0d, $0e, $ff, $ff, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff ; $D2FF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $76, $77, $20, $a0, $20, $76, $77, $ff, $ff, $ff ; $D30F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D31F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $76, $77, $20, $c0, $20, $76, $77 ; $D32F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D33F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $76, $77, $20, $e0 ; $D34F
.byte $20, $76, $77, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D35F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $76 ; $D36F
.byte $77, $21, $00, $20, $76, $77, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D37F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D38F
.byte $ff, $ff, $76, $77, $21, $20, $20, $76, $77, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D39F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D3AF
.byte $ff, $ff, $ff, $ff, $ff, $76, $77, $21, $40, $20, $76, $77, $ff, $ff, $ff, $ff ; $D3BF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D3CF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $76, $77, $21, $60, $20, $76, $77, $ff ; $D3DF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D3EF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $76, $77, $21, $80, $20 ; $D3FF
.byte $76, $77, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D40F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $76, $77 ; $D41F
.byte $21, $a0, $20, $76, $77, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D42F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D43F
.byte $ff, $76, $77, $21, $c0, $20, $76, $77, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D44F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $60, $61, $62, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D45F
.byte $ff, $ff, $ff, $ff, $76, $77, $21, $e0, $20, $76, $77, $ff, $ff, $ff, $ff, $ff ; $D46F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $70, $71, $72, $ff, $ff, $ff, $ff ; $D47F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $76, $77, $22, $00, $20, $76, $77, $ff, $ff ; $D48F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D49F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $76, $77, $22, $20, $20, $76 ; $D4AF
.byte $77, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D4BF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $76, $77, $22 ; $D4CF
.byte $40, $20, $76, $77, $ff, $ff, $80, $82, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D4DF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $38, $ff, $ff, $ff, $ff, $ff ; $D4EF
.byte $76, $77, $22, $60, $20, $76, $77, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D4FF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $39, $ff, $3b, $3c, $ff, $3e ; $D50F
.byte $ff, $ff, $ff, $76, $77, $22, $80, $20, $76, $77, $ff, $ff, $ff, $ff, $ff, $ff ; $D51F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $48, $49, $4a, $4b ; $D52F
.byte $4c, $4d, $4e, $4f, $ff, $ff, $76, $77, $22, $a0, $20, $76, $77, $ff, $ff, $ff ; $D53F
.byte $ff, $ff, $ae, $ae, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $58 ; $D54F
.byte $59, $5a, $5b, $5c, $5d, $5e, $5f, $ff, $ff, $76, $77, $22, $c0, $20, $76, $77 ; $D55F
.byte $ff, $ff, $ff, $ff, $cf, $de, $be, $ef, $ff, $ff, $af, $af, $ff, $ff, $ff, $ff ; $D56F
.byte $ff, $ff, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $ff, $ff, $76, $77, $22, $e0 ; $D57F
.byte $20, $76, $77, $cd, $cd, $cd, $cd, $cd, $be, $ce, $ff, $ff, $ff, $df, $df, $ff ; $D58F
.byte $ff, $ff, $ff, $ff, $ff, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $ff, $ff, $76 ; $D59F
.byte $77, $23, $00, $20, $76, $77, $ff, $dd, $cc, $cd, $cd, $ce, $de, $ff, $ff, $ff ; $D5AF
.byte $df, $df, $ff, $ff, $ff, $ff, $ff, $ff, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f ; $D5BF
.byte $ff, $ff, $76, $77, $23, $20, $20, $76, $77, $cd, $cd, $dc, $dd, $ec, $ed, $ed ; $D5CF
.byte $ed, $ed, $ed, $ed, $ed, $ee, $ff, $ff, $ff, $ff, $ff, $98, $99, $9a, $9b, $9c ; $D5DF
.byte $9d, $9e, $9f, $ff, $ff, $76, $77, $23, $40, $20, $76, $77, $86, $87, $86, $87 ; $D5EF
.byte $86, $87, $86, $87, $86, $87, $86, $87, $86, $87, $86, $87, $86, $87, $86, $87 ; $D5FF
.byte $86, $87, $86, $87, $86, $87, $86, $87, $76, $77, $23, $60, $20, $76, $77, $96 ; $D60F
.byte $97, $96, $97, $96, $97, $96, $97, $96, $97, $96, $97, $96, $97, $96, $97, $96 ; $D61F
.byte $97, $96, $97, $96, $97, $96, $97, $96, $97, $96, $97, $76, $77, $23, $80, $20 ; $D62F
.byte $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77 ; $D63F
.byte $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77 ; $D64F
.byte $23, $a0, $20, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76 ; $D65F
.byte $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76, $77, $76 ; $D66F
.byte $77, $76, $77, $23, $c0, $20, $aa, $5a, $5a, $5a, $5a, $5a, $aa, $aa, $aa, $55 ; $D67F
.byte $55, $55, $55, $55, $00, $88, $22, $55, $11, $55, $55, $55, $00, $88, $22, $11 ; $D68F
.byte $00, $0a, $52, $00, $00, $88, $23, $e0, $20, $22, $90, $20, $00, $00, $00, $30 ; $D69F
.byte $88, $aa, $aa, $6a, $aa, $00, $ff, $f3, $88, $2a, $0a, $0a, $0a, $00, $00, $00 ; $D6AF
.byte $88, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D6BF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D6CF
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $D6DF
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $D6EF
.byte $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D6FF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D70F
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $D71F
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $D72F
.byte $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D73F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D74F
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $D75F
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $D76F
.byte $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D77F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D78F
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $D79F
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $D7AF
.byte $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D7BF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D7CF
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $D7DF
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $D7EF
.byte $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D7FF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D80F
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $D81F
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00, $00 ; $D82F
.byte $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D83F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D84F
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $D85F
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $D86F
.byte $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D87F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D88F
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $D89F
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $D8AF
.byte $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D8BF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D8CF
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $D8DF
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $10, $00, $00, $00, $00, $00 ; $D8EF
.byte $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D8FF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D90F
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $D91F
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $D92F
.byte $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D93F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D94F
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $D95F
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $D96F
.byte $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D97F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D98F
.byte $ff, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $D99F
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $D9AF
.byte $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D9BF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D9CF
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $10, $00, $00, $00, $00, $00 ; $D9DF
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $D9EF
.byte $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $D9FF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $DA0F
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $08, $00, $00 ; $DA1F
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $DA2F
.byte $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $DA3F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $DA4F
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $DA5F
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $DA6F
.byte $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $DA7F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $DA8F
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $DA9F
.byte $00, $00, $10, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $04, $00 ; $DAAF
.byte $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $DABF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $DACF
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $DADF
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $40, $00, $00, $00, $00 ; $DAEF
.byte $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $DAFF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $DB0F
.byte $ff, $00, $00, $10, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $DB1F
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $04 ; $DB2F
.byte $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $DB3F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $DB4F
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $DB5F
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $DB6F
.byte $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $DB7F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $DB8F
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $DB9F
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $DBAF
.byte $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $DBBF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $DBCF
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $DBDF
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $c0 ; $DBEF
.byte $60, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f7, $ff, $ff ; $DBFF
.byte $ff, $ff, $ff, $ff, $ff, $fb, $ff, $ff, $ff, $ff, $ff, $ff, $7f, $ff, $df, $ff ; $DC0F
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $DC1F
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $DC2F
.byte $00, $df, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $DC3F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fb, $ff ; $DC4F
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $DC5F
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $DC6F
.byte $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $DC7F
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fe ; $DC8F
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $DC9F
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $DCAF
.byte $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $DCBF
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $DCCF
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $DCDF
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $DCEF
.byte $00, $00, $31, $40, $06, $00, $04, $40, $07, $00, $5d, $04, $2e, $00, $05, $01 ; $DCFF
.byte $08, $81, $05, $80, $00, $00, $04, $80, $04, $81, $01, $01, $1c, $00, $00, $04 ; $DD0F
.byte $2d, $00, $06, $02, $02, $42, $06, $02, $04, $42, $04, $00, $1b, $02, $00, $00 ; $DD1F
.byte $18, $02, $0b, $00, $05, $04, $2e, $00, $01, $02, $04, $42, $09, $02, $0a, $00 ; $DD2F
.byte $11, $04, $2a, $00, $48, $02, $05, $82, $07, $02, $18, $00, $04, $04, $2a, $00 ; $DD3F
.byte $03, $01, $06, $81, $0c, $01, $11, $00, $01, $04, $2d, $00, $08, $01, $0a, $00 ; $DD4F
.byte $04, $01, $01, $00, $3d, $04, $1a, $00, $01, $02, $05, $00, $08, $04, $12, $00 ; $DD5F
.byte $14, $02, $03, $42, $0b, $02, $03, $00, $10, $04, $2d, $00, $1c, $02, $12, $82 ; $DD6F
.byte $16, $02, $02, $00, $06, $04, $28, $00, $07, $01, $0f, $00, $08, $01, $05, $00 ; $DD7F
.byte $09, $04, $2f, $00, $2f, $04, $07, $00, $0a, $04, $26, $00, $04, $02, $03, $82 ; $DD8F
.byte $0b, $02, $03, $00, $10, $02, $04, $00, $05, $04, $2f, $00, $5f, $04, $16, $00 ; $DD9F
.byte $17, $04, $18, $00, $02, $02, $0a, $82, $18, $02, $02, $00, $03, $04, $2a, $00 ; $DDAF
.byte $02, $01, $07, $81, $02, $01, $02, $81, $02, $01, $05, $00, $36, $40, $07, $00 ; $DDBF
.byte $06, $04, $30, $00, $03, $02, $0d, $00, $04, $01, $0d, $81, $05, $01, $05, $00 ; $DDCF
.byte $11, $04, $2a, $00, $04, $02, $03, $42, $0b, $02, $07, $00, $11, $04, $2f, $00 ; $DDDF
.byte $21, $04, $26, $00, $1a, $02, $04, $42, $12, $02, $12, $00, $10, $04, $24, $00 ; $DDEF
.byte $07, $01, $06, $81, $05, $01, $02, $00, $14, $01, $0a, $00, $1c, $01, $05, $00 ; $DDFF
.byte $04, $04, $26, $00, $05, $02, $05, $00, $16, $04, $27, $00, $69, $81, $03, $01 ; $DE0F
.byte $04, $00, $16, $04, $20, $00, $03, $02, $14, $00, $0d, $02, $05, $00, $09, $04 ; $DE1F
.byte $0f, $00, $09, $04, $19, $00, $1b, $02, $05, $00, $31, $04, $1e, $00, $43, $01 ; $DE2F
.byte $02, $81, $08, $00, $09, $01, $05, $00, $11, $04, $24, $00, $05, $02, $03, $82 ; $DE3F
.byte $0e, $02, $06, $00, $0b, $02, $04, $00, $1e, $04, $21, $00, $1d, $02, $01, $42 ; $DE4F
.byte $11, $02, $1a, $00, $13, $01, $11, $81, $0c, $01, $14, $80, $06, $00, $09, $01 ; $DE5F
.byte $04, $00, $09, $04, $20, $00, $01, $01, $05, $41, $1d, $01, $04, $00, $01, $04 ; $DE6F
.byte $31, $00, $1c, $02, $2a, $00, $16, $04, $28, $00, $18, $02, $09, $00, $4b, $02 ; $DE7F
.byte $0b, $42, $0b, $02, $0c, $00, $07, $04, $1f, $00, $0b, $02, $08, $00, $04, $02 ; $DE8F
.byte $07, $00, $17, $04, $26, $00, $05, $01, $02, $81, $03, $80, $00, $00, $12, $02 ; $DE9F
.byte $03, $00, $08, $04, $2a, $00, $02, $01, $08, $41, $12, $01, $14, $00, $00, $04 ; $DEAF
.byte $30, $00, $34, $02, $08, $00, $09, $02, $03, $00, $21, $04, $28, $00, $2a, $04 ; $DEBF
.byte $2e, $00, $06, $01, $13, $81, $07, $01, $13, $00, $02, $04, $2d, $00, $29, $41 ; $DECF
.byte $0c, $01, $00, $00, $21, $04, $2c, $00, $29, $01, $07, $41, $16, $01, $0e, $00 ; $DEDF
.byte $09, $04, $2b, $00, $0d, $01, $05, $81, $05, $01, $06, $00, $0b, $01, $05, $00 ; $DEEF
.byte $1d                        ; $DEFF

_data_df00_indexed:
.byte $00, $14, $8a, $45, $22, $11, $88, $44, $22, $91, $48, $a4, $52, $29, $14, $0a ; $DF00
.byte $85, $c2, $e1, $70, $38, $9c, $4e, $a7, $53, $a9, $d4, $6a, $b5, $5a, $ad, $d6 ; $DF10
.byte $6b, $35, $1a, $8d, $c6, $e3, $71, $38, $9c, $ce, $e7, $73, $b9, $dc, $ee, $f7 ; $DF20
.byte $fb, $fd, $fe, $7f, $3f, $9f, $cf, $67, $33, $19, $0c, $86, $43, $21, $90, $c8 ; $DF30
.byte $e4, $f2, $f9, $7c, $be, $5f, $af, $d7, $eb, $f5, $fa, $fd, $7e, $3f, $1f, $0f ; $DF40
.byte $07, $03, $81, $c0, $60, $b0, $d8, $ec, $f6, $7b, $3d, $1e, $8f, $c7, $e3, $f1 ; $DF50
.byte $78, $bc, $de, $ef, $77, $3b, $1d, $8e, $c7, $e3, $f1, $f8, $fc, $fe, $7f, $bf ; $DF60
.byte $5f, $2f, $17, $8b, $c5, $62, $31, $98, $cc, $e6, $73, $39, $9c, $4e, $27, $93 ; $DF70
.byte $c9, $64, $b2, $59, $2c, $16, $0b, $05, $82, $c1, $60, $b0, $58, $2c, $96, $4b ; $DF80
.byte $a5, $d2, $e9, $74, $3a, $9d, $4e, $27, $13, $89, $c4, $62, $b1, $d8, $6c, $b6 ; $DF90
.byte $5b, $2d, $16, $8b, $45, $22, $91, $48, $a4, $d2, $e9, $f4, $fa, $fd, $fe, $ff ; $DFA0
.byte $ff, $ff, $7f, $bf, $df, $6f, $b7, $5b, $2d, $96, $4b, $25, $92, $49, $a4, $d2 ; $DFB0
.byte $69, $34, $9a, $4d, $26, $13, $89, $44, $a2, $d1, $68, $b4, $5a, $2d, $96, $cb ; $DFC0
.byte $e5, $f2, $f9, $7c, $3e, $1f, $8f, $47, $23, $91, $c8, $64, $32, $19, $8c, $c6 ; $DFD0
.byte $63, $31, $18, $0c, $06, $03, $81, $40, $a0, $d0, $68, $34, $1a, $0d, $86, $c3 ; $DFE0
.byte $78, $bc, $de, $ef, $77, $3b, $1d, $8e, $c7, $e3, $f1, $f8, $fc, $fe, $7f ; $DFF0

_data_dfff:
.byte $bf                        ; $DFFF

_func_e000:
  jmp _label_e216                ; $E000  4C 16 E2

_func_e003:
  jmp _func_e244                 ; $E003  4C 44 E2

_func_e006:
  jmp _label_e1d8                ; $E006  4C D8 E1

.byte $dd, $e2, $f8, $e2, $cc, $e2, $e4, $e2, $ff, $e2, $e4, $e2, $ca, $e3, $73, $e4 ; $E009
.byte $90, $e3, $03, $e4, $d1, $e3, $ec, $e4, $84, $e3, $7f, $e3, $2e, $e4, $1a, $e4 ; $E019
.byte $b3, $e3, $81, $e4, $9c, $e3, $0e, $e4, $dd, $e3, $d1, $e4, $9c, $e3, $4f, $e3 ; $E029
.byte $3b, $e4, $25, $e4, $6e, $e5, $34, $e5, $51, $e5, $3b, $e5, $44, $e2, $13, $e5 ; $E039
.byte $0b, $e5                   ; $E049

_func_e04b:
  lda #$00                       ; $E04B  A9 00
  beq _label_e059                ; $E04D  F0 0A
  lda #$08                       ; $E04F  A9 08
  bne _label_e059                ; $E051  D0 06
  lda #$0C                       ; $E053  A9 0C
  bne _label_e059                ; $E055  D0 02
  lda #$04                       ; $E057  A9 04

_label_e059:
  sta z:_var_00e0_indexed        ; $E059  85 E0
  lda #$40                       ; $E05B  A9 40
  sta z:_var_00e1                ; $E05D  85 E1
  sty z:_var_00e2_indexed        ; $E05F  84 E2
  lda #$E1                       ; $E061  A9 E1
  sta z:_var_00e3                ; $E063  85 E3
  ldy #$00                       ; $E065  A0 00

_label_e067:
  lda (_var_00e2_indexed),Y      ; $E067  B1 E2
  sta (_var_00e0_indexed),Y      ; $E069  91 E0
  iny                            ; $E06B  C8
  tya                            ; $E06C  98
  cmp #$04                       ; $E06D  C9 04
  bne _label_e067                ; $E06F  D0 F6
  rts                            ; $E071  60

_func_e072:
  sta z:_var_00ef                ; $E072  85 EF
  pha                            ; $E074  48
  ldy #$E0                       ; $E075  A0 E0
  sty z:_var_00e1                ; $E077  84 E1
  ldy #$00                       ; $E079  A0 00

_label_e07b:
  dec z:_var_00ef                ; $E07B  C6 EF
  beq _label_e092                ; $E07D  F0 13
  iny                            ; $E07F  C8
  iny                            ; $E080  C8
  tya                            ; $E081  98
  cmp #$22                       ; $E082  C9 22
  bne _label_e07b                ; $E084  D0 F5
  lda #$91                       ; $E086  A9 91
  sta z:_var_00e2_indexed        ; $E088  85 E2
  lda #$E0                       ; $E08A  A9 E0
  sta z:_var_00e3                ; $E08C  85 E3

_label_e08e:
  pla                            ; $E08E  68
  sta z:_var_00ef                ; $E08F  85 EF
  rts                            ; $E091  60

_label_e092:
  lda (_var_00e0_indexed),Y      ; $E092  B1 E0
  sta z:_var_00e2_indexed        ; $E094  85 E2
  iny                            ; $E096  C8
  lda (_var_00e0_indexed),Y      ; $E097  B1 E0
  sta z:_var_00e3                ; $E099  85 E3
  jmp _label_e08e                ; $E09B  4C 8E E0

.byte $a5, $eb, $29, $02, $8d, $ff, $06, $a5, $ec, $29, $02, $4d, $ff, $06, $18, $f0 ; $E09E
.byte $01, $38, $66, $eb, $66, $ec, $60, $a6, $ed, $fe, $da, $06, $bd, $da, $06, $dd ; $E0AE
.byte $d5, $06, $d0, $05, $a9, $00, $9d, $da, $06, $60, $ff, $ff, $ff, $ff, $ff, $ff ; $E0BE
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $E0CE
.byte $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $E0DE
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $E0EE
.byte $00, $00, $03, $7f, $0f, $c0, $1f, $7f, $0f, $c0, $08, $7f, $0e, $c0, $9d, $7f ; $E0FE
.byte $7a, $28, $9d, $7f, $40, $28, $9e, $7f, $c0, $28, $b2, $7f, $c0, $08, $de, $7f ; $E10E
.byte $a8, $18, $9f, $84, $ff, $0b, $db, $7f, $40, $28, $d2, $7f, $40, $28, $d9, $7f ; $E11E
.byte $84, $28, $9e, $9d, $c0, $08, $9c, $9a, $a0, $09, $9e, $7f, $69, $08, $96, $7f ; $E12E
.byte $36, $20, $82, $7f, $30, $f8, $98, $7f, $80, $38, $30, $7f, $70, $08, $03, $7f ; $E13E
.byte $3d, $18, $14, $93, $94, $d3, $7a, $de, $ff, $ef, $fd, $df, $fe, $ef, $ef, $fd ; $E14E
.byte $ef, $fe, $df, $ff, $ee, $ee, $ff, $ef, $ff, $ff, $ff, $ef, $ef, $ff, $fd, $df ; $E15E
.byte $df, $ef, $fe, $df, $ef, $ff, $bf, $ff, $ee, $ef, $ef, $ef, $df, $fb, $bb, $aa ; $E16E
.byte $aa, $99, $98, $87, $76, $66, $55, $44, $44, $44, $44, $43, $33, $33, $22, $22 ; $E17E
.byte $22, $22, $21, $11, $11, $11 ; $E18E

_func_e194:
  ldx #$02                       ; $E194  A2 02
  lda #$45                       ; $E196  A9 45
  ldy #$45                       ; $E198  A0 45
  bne _label_e1bf                ; $E19A  D0 23

_func_e19c:
  ldx #$03                       ; $E19C  A2 03
  lda #$3D                       ; $E19E  A9 3D
  ldy #$41                       ; $E1A0  A0 41
  bne _label_e1bf                ; $E1A2  D0 1B
  ldx #$04                       ; $E1A4  A2 04
  lda #$45                       ; $E1A6  A9 45
  ldy #$45                       ; $E1A8  A0 45
  bne _label_e1bf                ; $E1AA  D0 13

_func_e1ac:
  lda a:$06FC                    ; $E1AC  AD FC 06
  bne _label_e1d7                ; $E1AF  D0 26
  ldx #$01                       ; $E1B1  A2 01
  lda #$15                       ; $E1B3  A9 15
  ldy #$29                       ; $E1B5  A0 29
  bne _label_e1bf                ; $E1B7  D0 06

_func_e1b9:
  ldx #$00                       ; $E1B9  A2 00
  lda #$09                       ; $E1BB  A9 09
  ldy #$0F                       ; $E1BD  A0 0F

_label_e1bf:
  sta z:_var_00e0_indexed        ; $E1BF  85 E0
  stx z:$ED                      ; $E1C1  86 ED
  lda a:_var_06f0_indexed,X      ; $E1C3  BD F0 06
  beq _label_e1ce                ; $E1C6  F0 06

_label_e1c8:
  jsr _func_e072                 ; $E1C8  20 72 E0
  jmp (_var_00e2_indexed)        ; $E1CB  6C E2 00  jump engine detected

_label_e1ce:
  lda a:_var_06f8_indexed,X      ; $E1CE  BD F8 06
  beq _label_e1d7                ; $E1D1  F0 04
  sty z:_var_00e0_indexed        ; $E1D3  84 E0
  bne _label_e1c8                ; $E1D5  D0 F1

_label_e1d7:
  rts                            ; $E1D7  60

_label_e1d8:
  lda #$0F                       ; $E1D8  A9 0F
  sta APU_SND_CHN                ; $E1DA  8D 15 40
  lda #$55                       ; $E1DD  A9 55
  sta z:$EB                      ; $E1DF  85 EB
  jsr _func_e244                 ; $E1E1  20 44 E2
  rts                            ; $E1E4  60

_label_e1e5:
  inc a:_var_0682                ; $E1E5  EE 82 06
  jsr _func_e271                 ; $E1E8  20 71 E2
  sta a:_var_0683                ; $E1EB  8D 83 06
  rts                            ; $E1EE  60

_label_e1ef:
  lda a:_var_0682                ; $E1EF  AD 82 06
  beq _label_e1e5                ; $E1F2  F0 F1
  lda a:_var_0683                ; $E1F4  AD 83 06
  cmp #$12                       ; $E1F7  C9 12
  beq _label_e215                ; $E1F9  F0 1A
  and #$03                       ; $E1FB  29 03
  cmp #$03                       ; $E1FD  C9 03
  bne _label_e212                ; $E1FF  D0 11
  inc a:_var_068b                ; $E201  EE 8B 06
  ldy #$10                       ; $E204  A0 10
  lda a:_var_068b                ; $E206  AD 8B 06
  and #$01                       ; $E209  29 01
  bne _label_e20f                ; $E20B  D0 02
  ldy #$0C                       ; $E20D  A0 0C

_label_e20f:
  jsr _func_e04b                 ; $E20F  20 4B E0

_label_e212:
  inc a:_var_0683                ; $E212  EE 83 06

_label_e215:
  rts                            ; $E215  60

_label_e216:
  lda #$C0                       ; $E216  A9 C0
  sta APU_FRAME                  ; $E218  8D 17 40
  lda a:_var_068d                ; $E21B  AD 8D 06
  cmp #$05                       ; $E21E  C9 05
  beq _label_e1ef                ; $E220  F0 CD
  lda #$00                       ; $E222  A9 00
  sta a:_var_0682                ; $E224  8D 82 06
  sta a:_var_068b                ; $E227  8D 8B 06
  jsr _func_e194                 ; $E22A  20 94 E1
  jsr _func_e1b9                 ; $E22D  20 B9 E1
  jsr _func_e19c                 ; $E230  20 9C E1
  jsr _func_e1ac                 ; $E233  20 AC E1
  jsr _func_e583                 ; $E236  20 83 E5
  lda #$00                       ; $E239  A9 00
  ldx #$06                       ; $E23B  A2 06

_label_e23d:
  sta a:_var_06ef_indexed,X      ; $E23D  9D EF 06
  dex                            ; $E240  CA
  bne _label_e23d                ; $E241  D0 FA
  rts                            ; $E243  60

_func_e244:
  jsr _func_e253                 ; $E244  20 53 E2

_func_e247:
  jsr _func_e271                 ; $E247  20 71 E2
  lda #$00                       ; $E24A  A9 00
  sta APU_DMC_RAW                ; $E24C  8D 11 40
  sta a:_var_069c                ; $E24F  8D 9C 06
  rts                            ; $E252  60

_func_e253:
  lda #$00                       ; $E253  A9 00
  sta a:_var_06c8_indexed        ; $E255  8D C8 06
  sta a:$06C9                    ; $E258  8D C9 06
  sta a:$06CA                    ; $E25B  8D CA 06
  sta a:$068C                    ; $E25E  8D 8C 06
  sta a:_var_068a                ; $E261  8D 8A 06
  tay                            ; $E264  A8

_label_e265:
  lda #$00                       ; $E265  A9 00
  sta a:_var_06f8_indexed,Y      ; $E267  99 F8 06
  iny                            ; $E26A  C8
  tya                            ; $E26B  98
  cmp #$06                       ; $E26C  C9 06
  bne _label_e265                ; $E26E  D0 F5
  rts                            ; $E270  60

_func_e271:
  lda #$00                       ; $E271  A9 00
  sta APU_DMC_RAW                ; $E273  8D 11 40
  lda #$10                       ; $E276  A9 10
  sta APU_PL1_VOL                ; $E278  8D 00 40
  sta APU_PL2_VOL                ; $E27B  8D 04 40
  sta APU_NOISE_VOL              ; $E27E  8D 0C 40
  lda #$00                       ; $E281  A9 00
  sta APU_TRI_LINEAR             ; $E283  8D 08 40
  rts                            ; $E286  60

.byte $a6, $ed, $9d, $d5, $06, $8a, $9d, $c7, $06, $98, $f0, $22, $8a, $f0, $1c, $c9 ; $E287
.byte $01, $f0, $09, $c9, $02, $f0, $0a, $c9, $03, $f0, $0b, $60, $20, $4b, $e0, $f0 ; $E297
.byte $0d, $20, $57, $e0, $f0, $08, $20, $4f, $e0, $f0, $03, $20, $53, $e0, $a5, $ef ; $E2A7
.byte $9d, $f8, $06, $a9, $00, $9d, $da, $06, $9d, $df, $06, $9d, $e3, $06, $9d, $e7 ; $E2B7
.byte $06, $8d, $8a, $06, $60, $a9, $20, $a0, $08, $4c, $87, $e2, $8d, $0e, $40, $60 ; $E2C7
.byte $20, $1a, $e3, $4c, $d3, $e2, $a9, $10, $a0, $00, $4c, $87, $e2, $20, $b5, $e0 ; $E2D7
.byte $d0, $0a, $a9, $00, $8d, $f8, $06, $a9, $10, $8d, $0c, $40, $60, $a9, $02, $85 ; $E2E7
.byte $ef, $a9, $40, $a0, $04, $4c, $87, $e2, $20, $b5, $e0, $d0, $03, $4c, $e9, $e2 ; $E2F7
.byte $a2, $54, $20, $d7, $e2, $a2, $74, $20, $1a, $e3, $09, $10, $8d, $0c, $40, $ee ; $E307
.byte $df, $06, $60, $86, $e0, $a0, $e1, $84, $e1, $ae, $df, $06, $8a, $4a, $a8, $b1 ; $E317
.byte $e0, $85, $e4, $8a, $29, $01, $f0, $05, $a5, $e4, $29, $0f, $60, $a5, $e4, $4a ; $E327
.byte $4a, $4a, $4a, $60, $ad, $f9, $06, $c9, $04, $f0, $0c, $c9, $06, $f0, $08, $c9 ; $E337
.byte $09, $f0, $04, $c9, $0a, $f0, $00, $60, $ad, $e4, $06, $f0, $0d, $ee, $e0, $06 ; $E347
.byte $ad, $e0, $06, $c9, $16, $d0, $53, $4c, $a1, $e3, $ad, $e0, $06, $29, $03, $a8 ; $E357
.byte $b9, $50, $e1, $8d, $00, $40, $ee, $e0, $06, $ad, $e0, $06, $c9, $08, $d0, $3a ; $E367
.byte $ee, $e4, $06, $a0, $40, $4c, $4b, $e0, $a0, $3c, $4c, $87, $e2, $20, $3b, $e3 ; $E377
.byte $f0, $28, $a9, $0f, $a0, $20, $4c, $87, $e2, $20, $3b, $e3, $f0, $1c, $a9, $02 ; $E387
.byte $a0, $44, $4c, $87, $e2, $20, $b5, $e0, $d0, $10, $a9, $10, $8d, $00, $40, $a9 ; $E397
.byte $00, $8d, $c8, $06, $8d, $f9, $06, $ee, $8a, $06, $60, $60, $20, $b5, $e0, $d0 ; $E3A7
.byte $fa, $ee, $e0, $06, $ad, $e0, $06, $c9, $02, $d0, $03, $4c, $a1, $e3, $a0, $28 ; $E3B7
.byte $4c, $4b, $e0, $a9, $03, $a0, $24, $d0, $47, $60, $20, $3b, $e3, $f0, $fa, $a9 ; $E3C7
.byte $04, $a0, $14, $20, $17, $e4, $20, $b5, $e0, $d0, $ee, $ad, $e0, $06, $ee, $e0 ; $E3D7
.byte $06, $f0, $14, $c9, $01, $f0, $0b, $c9, $02, $f0, $0c, $c9, $03, $d0, $da, $4c ; $E3E7
.byte $a1, $e3, $a0, $14, $4c, $4b, $e0, $a0, $18, $4c, $4b, $e0, $a9, $05, $a0, $30 ; $E3F7
.byte $20, $17, $e4, $a9, $10, $d0, $29, $20, $b5, $e0, $d0, $27, $a0, $30, $d0, $2b ; $E407
.byte $4c, $87, $e2, $a9, $05, $a0, $34, $20, $17, $e4, $a9, $08, $d0, $12, $20, $b5 ; $E417
.byte $e0, $d0, $10, $a0, $34, $d0, $14, $a9, $04, $a0, $38, $20, $17, $e4, $a9, $00 ; $E427
.byte $8d, $e4, $06, $60, $20, $b5, $e0, $d0, $fa, $a0, $38, $20, $4b, $e0, $18, $ad ; $E437
.byte $e4, $06, $6d, $e0, $06, $a8, $b9, $b9, $e4, $8d, $02, $40, $ac, $e0, $06, $b9 ; $E447
.byte $b0, $e4, $8d, $00, $40, $d0, $11, $ad, $f9, $06, $c9, $04, $d0, $07, $a9, $09 ; $E457
.byte $85, $ef, $4c, $2e, $e4, $4c, $a1, $e3, $ee, $e0, $06, $60, $a9, $03, $a0, $2c ; $E467
.byte $20, $87, $e2, $ad, $2e, $e1, $8d, $e0, $06, $60, $20, $b5, $e0, $d0, $ec, $ee ; $E477
.byte $e4, $06, $ad, $e4, $06, $c9, $04, $d0, $03, $4c, $a1, $e3, $ad, $e0, $06, $4a ; $E487
.byte $4a, $4a, $4a, $8d, $e8, $06, $ad, $e0, $06, $18, $ed, $e8, $06, $8d, $e0, $06 ; $E497
.byte $8d, $02, $40, $a9, $28, $8d, $03, $40, $60, $9e, $9b, $99, $96, $94, $93, $92 ; $E4A7
.byte $91, $00, $46, $37, $46, $37, $46, $37, $46, $37, $70, $80, $90, $a0, $b0, $c0 ; $E4B7
.byte $d0, $e0, $c0, $89, $b8, $68, $a0, $50, $90, $40, $20, $b5, $e0, $d0, $d9, $ac ; $E4C7
.byte $e0, $06, $ee, $e0, $06, $b9, $f3, $e4, $f0, $08, $8d, $02, $40, $a9, $28, $4c ; $E4D7
.byte $ac, $e4, $4c, $a1, $e3, $a9, $06, $a0, $1c, $4c, $87, $e2, $69, $a8, $69, $a8 ; $E4E7
.byte $8d, $53, $8d, $53, $8d, $00, $a9, $10, $8d, $04, $40, $a9, $00, $8d, $c9, $06 ; $E4F7
.byte $8d, $fa, $06, $60, $a9, $3f, $a0, $60, $a2, $0f, $d0, $08, $a9, $3f, $a0, $60 ; $E507
.byte $a2, $0e, $d0, $00, $8d, $13, $40, $8c, $12, $40, $8e, $10, $40, $a9, $0f, $8d ; $E517
.byte $15, $40, $a9, $00, $8d, $11, $40, $a9, $1f, $8d, $15, $40, $60, $a9, $02, $a0 ; $E527
.byte $4c, $4c, $87, $e2, $20, $b5, $e0, $d0, $10, $a9, $00, $8d, $08, $40, $8d, $ca ; $E537
.byte $06, $8d, $fb, $06, $a9, $18, $8d, $0b, $40, $60, $20, $b5, $e0, $d0, $fa, $ac ; $E547
.byte $e2, $06, $ee, $e2, $06, $b9, $7c, $e5, $f0, $df, $8d, $0a, $40, $8d, $e6, $06 ; $E557
.byte $ad, $4b, $e1, $8d, $0b, $40, $60, $a9, $06, $a0, $48, $20, $87, $e2, $ad, $4a ; $E567
.byte $e1, $8d, $e6, $06, $60, $72, $74, $77, $00 ; $E577

_label_e580:
  jmp _func_e244                 ; $E580  4C 44 E2

_func_e583:
  lda a:_var_06f5                ; $E583  AD F5 06
  tay                            ; $E586  A8
  cmp #$FF                       ; $E587  C9 FF
  beq _label_e580                ; $E589  F0 F5
  cmp #$00                       ; $E58B  C9 00
  beq _label_e5a5                ; $E58D  F0 16
  sta z:_var_00ef                ; $E58F  85 EF
  sta a:_var_06cc                ; $E591  8D CC 06
  dec a:_var_06cc                ; $E594  CE CC 06
  lda #$7F                       ; $E597  A9 7F
  sta a:_var_06c0_indexed        ; $E599  8D C0 06
  sta a:$06C1                    ; $E59C  8D C1 06
  jsr _func_e6d7                 ; $E59F  20 D7 E6

_label_e5a2:
  jmp _label_e840                ; $E5A2  4C 40 E8

_label_e5a5:
  lda a:_var_06fd                ; $E5A5  AD FD 06
  bne _label_e5a2                ; $E5A8  D0 F8
  rts                            ; $E5AA  60

_data_e5ab_indexed:
.byte $00                        ; $E5AB

_data_e5ac_indexed:
.byte $10                        ; $E5AC

_data_e5ad_indexed:
.byte $01, $18, $00, $01, $38, $00, $03, $40, $00, $06, $58, $00, $0a, $38, $02, $04 ; $E5AD
.byte $40, $13, $05, $40, $14, $0a, $40, $14, $08, $40, $12, $0e, $08, $16, $0e, $28 ; $E5BD
.byte $16, $0b, $18              ; $E5CD

_func_e5d0:
  lda a:_var_06fd                ; $E5D0  AD FD 06
  cmp #$01                       ; $E5D3  C9 01
  beq _label_e5f9                ; $E5D5  F0 22
  txa                            ; $E5D7  8A
  cmp #$03                       ; $E5D8  C9 03
  beq _label_e5f9                ; $E5DA  F0 1D
  lda a:_var_069a_indexed,X      ; $E5DC  BD 9A 06
  and #$E0                       ; $E5DF  29 E0
  beq _label_e5f9                ; $E5E1  F0 16
  sta z:_var_00e0_indexed        ; $E5E3  85 E0
  lda a:_var_06c3_indexed,X      ; $E5E5  BD C3 06
  cmp #$02                       ; $E5E8  C9 02
  beq _label_e5f6                ; $E5EA  F0 0A
  ldy z:_var_00ee                ; $E5EC  A4 EE
  lda a:_var_0680_indexed,Y      ; $E5EE  B9 80 06
  sta z:_var_00e1                ; $E5F1  85 E1
  jsr _func_e637                 ; $E5F3  20 37 E6

_label_e5f6:
  inc a:_var_06d1_indexed,X      ; $E5F6  FE D1 06

_label_e5f9:
  rts                            ; $E5F9  60

_label_e5fa:
  lda z:_var_00e2_indexed        ; $E5FA  A5 E2
  cmp #$31                       ; $E5FC  C9 31
  bne _label_e602                ; $E5FE  D0 02
  lda #$27                       ; $E600  A9 27

_label_e602:
  tay                            ; $E602  A8
  lda a:_data_e689_indexed,Y     ; $E603  B9 89 E6
  pha                            ; $E606  48
  lda a:_var_06c3_indexed,X      ; $E607  BD C3 06
  cmp #$46                       ; $E60A  C9 46
  bne _label_e613                ; $E60C  D0 05
  pla                            ; $E60E  68
  lda #$00                       ; $E60F  A9 00
  beq _label_e671                ; $E611  F0 5E

_label_e613:
  pla                            ; $E613  68
  jmp _label_e671                ; $E614  4C 71 E6

_label_e617:
  lda z:_var_00e2_indexed        ; $E617  A5 E2
  tay                            ; $E619  A8
  cmp #$10                       ; $E61A  C9 10
  bcs _label_e624                ; $E61C  B0 06
  lda a:_data_e6c0_indexed,Y     ; $E61E  B9 C0 E6
  jmp _label_e677                ; $E621  4C 77 E6

_label_e624:
  lda #$F6                       ; $E624  A9 F6
  bne _label_e677                ; $E626  D0 4F

_label_e628:
  lda a:_var_06c3_indexed,X      ; $E628  BD C3 06
  cmp #$4C                       ; $E62B  C9 4C
  bcc _label_e633                ; $E62D  90 04
  lda #$FE                       ; $E62F  A9 FE
  bne _label_e677                ; $E631  D0 44

_label_e633:
  lda #$FE                       ; $E633  A9 FE
  bne _label_e677                ; $E635  D0 40

_func_e637:
  lda a:_var_06d1_indexed,X      ; $E637  BD D1 06
  sta z:_var_00e2_indexed        ; $E63A  85 E2
  lda z:_var_00e0_indexed        ; $E63C  A5 E0
  cmp #$20                       ; $E63E  C9 20
  beq _label_e656                ; $E640  F0 14
  cmp #$A0                       ; $E642  C9 A0
  beq _label_e665                ; $E644  F0 1F
  cmp #$60                       ; $E646  C9 60
  beq _label_e628                ; $E648  F0 DE
  cmp #$40                       ; $E64A  C9 40
  beq _label_e617                ; $E64C  F0 C9
  cmp #$80                       ; $E64E  C9 80
  beq _label_e5fa                ; $E650  F0 A8
  cmp #$C0                       ; $E652  C9 C0
  beq _label_e5fa                ; $E654  F0 A4

_label_e656:
  lda z:_var_00e2_indexed        ; $E656  A5 E2
  cmp #$0A                       ; $E658  C9 0A
  bne _label_e65e                ; $E65A  D0 02
  lda #$00                       ; $E65C  A9 00

_label_e65e:
  tay                            ; $E65E  A8
  lda a:_data_e6b6_indexed,Y     ; $E65F  B9 B6 E6
  jmp _label_e671                ; $E662  4C 71 E6

_label_e665:
  lda z:_var_00e2_indexed        ; $E665  A5 E2
  cmp #$2B                       ; $E667  C9 2B
  bne _label_e66d                ; $E669  D0 02
  lda #$21                       ; $E66B  A9 21

_label_e66d:
  tay                            ; $E66D  A8
  lda a:_data_e695_indexed,Y     ; $E66E  B9 95 E6

_label_e671:
  pha                            ; $E671  48
  tya                            ; $E672  98
  sta a:_var_06d1_indexed,X      ; $E673  9D D1 06
  pla                            ; $E676  68

_label_e677:
  pha                            ; $E677  48
  lda a:_var_06c8_indexed,X      ; $E678  BD C8 06
  bne _label_e687                ; $E67B  D0 0A
  pla                            ; $E67D  68
  clc                            ; $E67E  18
  adc z:_var_00e1                ; $E67F  65 E1
  ldy z:_var_00ee                ; $E681  A4 EE
  sta APU_PL1_LO,Y               ; $E683  99 02 40
  rts                            ; $E686  60

_label_e687:
  pla                            ; $E687  68
  rts                            ; $E688  60

_data_e689_indexed:
.byte $09, $08, $07, $06, $05, $04, $03, $02, $02, $01, $01, $00 ; $E689

_data_e695_indexed:
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01 ; $E695
.byte $00, $00, $00, $00, $ff, $00, $00, $00, $00, $01, $01, $00, $00, $00, $ff, $ff ; $E6A5
.byte $00                        ; $E6B5

_data_e6b6_indexed:
.byte $00, $01, $01, $02, $01, $00, $ff, $ff, $fe, $ff ; $E6B6

_data_e6c0_indexed:
.byte $00, $ff, $fe, $fd, $fc, $fb, $fa, $f9, $f8, $f7, $f6, $f5, $f6, $f7, $f6, $f5 ; $E6C0

_label_e6d0:
  lda #$FF                       ; $E6D0  A9 FF
  sta a:_var_06a0_indexed,X      ; $E6D2  9D A0 06
  bne _label_e72a                ; $E6D5  D0 53

_func_e6d7:
  jsr _func_e247                 ; $E6D7  20 47 E2
  lda z:_var_00ef                ; $E6DA  A5 EF
  sta a:_var_06fd                ; $E6DC  8D FD 06
  lda a:_var_06cc                ; $E6DF  AD CC 06
  tay                            ; $E6E2  A8
  lda a:_data_ec23_indexed,Y     ; $E6E3  B9 23 EC
  tay                            ; $E6E6  A8
  ldx #$00                       ; $E6E7  A2 00

_label_e6e9:
  lda a:_data_ec2d_indexed,Y     ; $E6E9  B9 2D EC
  sta a:_var_0690_indexed,X      ; $E6EC  9D 90 06
  iny                            ; $E6EF  C8
  inx                            ; $E6F0  E8
  txa                            ; $E6F1  8A
  cmp #$0A                       ; $E6F2  C9 0A
  bne _label_e6e9                ; $E6F4  D0 F3
  lda #$01                       ; $E6F6  A9 01
  sta a:_var_06b4_indexed        ; $E6F8  8D B4 06
  sta a:$06B5                    ; $E6FB  8D B5 06
  sta a:$06B6                    ; $E6FE  8D B6 06
  sta a:$06B7                    ; $E701  8D B7 06
  lda #$00                       ; $E704  A9 00
  sta z:$EA                      ; $E706  85 EA
  ldy #$08                       ; $E708  A0 08

_label_e70a:
  sta a:_var_06a7_indexed,Y      ; $E70A  99 A7 06
  dey                            ; $E70D  88
  bne _label_e70a                ; $E70E  D0 FA
  tax                            ; $E710  AA

_label_e711:
  lda a:_var_0692_indexed,X      ; $E711  BD 92 06
  sta z:_var_00e6_indexed        ; $E714  85 E6
  lda a:_var_0693_indexed,X      ; $E716  BD 93 06
  cmp #$FF                       ; $E719  C9 FF
  beq _label_e6d0                ; $E71B  F0 B3
  sta z:_var_00e7                ; $E71D  85 E7
  ldy a:_var_06a8_indexed        ; $E71F  AC A8 06
  lda (_var_00e6_indexed),Y      ; $E722  B1 E6
  sta a:_var_06a0_indexed,X      ; $E724  9D A0 06
  iny                            ; $E727  C8
  lda (_var_00e6_indexed),Y      ; $E728  B1 E6

_label_e72a:
  sta a:_var_06a1_indexed,X      ; $E72A  9D A1 06
  inx                            ; $E72D  E8
  inx                            ; $E72E  E8
  txa                            ; $E72F  8A
  cmp #$08                       ; $E730  C9 08
  bne _label_e711                ; $E732  D0 DD
  rts                            ; $E734  60

_func_e735:
  lda a:_var_068a                ; $E735  AD 8A 06
  beq _label_e765                ; $E738  F0 2B
  cmp #$01                       ; $E73A  C9 01
  beq _label_e74f                ; $E73C  F0 11
  lda #$7F                       ; $E73E  A9 7F
  sta APU_PL2_SWEEP              ; $E740  8D 05 40
  lda a:$0684                    ; $E743  AD 84 06
  sta APU_PL2_LO                 ; $E746  8D 06 40
  lda a:$0685                    ; $E749  AD 85 06
  sta APU_PL2_HI                 ; $E74C  8D 07 40

_label_e74f:
  lda #$7F                       ; $E74F  A9 7F
  sta APU_PL1_SWEEP              ; $E751  8D 01 40
  lda a:_var_0680_indexed        ; $E754  AD 80 06
  sta APU_PL1_LO                 ; $E757  8D 02 40
  lda a:_var_0681_indexed        ; $E75A  AD 81 06
  sta APU_PL1_HI                 ; $E75D  8D 03 40
  lda #$00                       ; $E760  A9 00
  sta a:_var_068a                ; $E762  8D 8A 06

_label_e765:
  rts                            ; $E765  60

_func_e766:
  txa                            ; $E766  8A
  cmp #$02                       ; $E767  C9 02
  bcs _label_e765                ; $E769  B0 FA
  lda a:_var_069a_indexed,X      ; $E76B  BD 9A 06
  and #$1F                       ; $E76E  29 1F
  beq _label_e7cb                ; $E770  F0 59
  sta z:_var_00e1                ; $E772  85 E1
  lda a:_var_06c3_indexed,X      ; $E774  BD C3 06
  cmp #$02                       ; $E777  C9 02
  beq _label_e7d5                ; $E779  F0 5A
  ldy #$00                       ; $E77B  A0 00

_label_e77d:
  dec z:_var_00e1                ; $E77D  C6 E1
  beq _label_e785                ; $E77F  F0 04
  iny                            ; $E781  C8
  iny                            ; $E782  C8
  bne _label_e77d                ; $E783  D0 F8

_label_e785:
  lda a:_data_ea4a_indexed,Y     ; $E785  B9 4A EA
  sta z:_var_00e2_indexed        ; $E788  85 E2
  lda a:_data_ea4b_indexed,Y     ; $E78A  B9 4B EA
  sta z:_var_00e3                ; $E78D  85 E3
  lda a:_var_06cd_indexed,X      ; $E78F  BD CD 06
  lsr a                          ; $E792  4A
  tay                            ; $E793  A8
  lda (_var_00e2_indexed),Y      ; $E794  B1 E2
  sta z:_var_00e4                ; $E796  85 E4
  cmp #$FF                       ; $E798  C9 FF
  beq _label_e7cc                ; $E79A  F0 30
  cmp #$F0                       ; $E79C  C9 F0
  beq _label_e7d1                ; $E79E  F0 31
  lda a:_var_06cd_indexed,X      ; $E7A0  BD CD 06
  and #$01                       ; $E7A3  29 01
  bne _label_e7af                ; $E7A5  D0 08
  lsr z:_var_00e4                ; $E7A7  46 E4
  lsr z:_var_00e4                ; $E7A9  46 E4
  lsr z:_var_00e4                ; $E7AB  46 E4
  lsr z:_var_00e4                ; $E7AD  46 E4

_label_e7af:
  lda z:_var_00e4                ; $E7AF  A5 E4
  and #$0F                       ; $E7B1  29 0F
  sta z:_var_00e0_indexed        ; $E7B3  85 E0
  lda a:_var_069d_indexed,X      ; $E7B5  BD 9D 06
  and #$F0                       ; $E7B8  29 F0
  ora z:_var_00e0_indexed        ; $E7BA  05 E0
  tay                            ; $E7BC  A8

_label_e7bd:
  inc a:_var_06cd_indexed,X      ; $E7BD  FE CD 06

_label_e7c0:
  lda a:_var_06c8_indexed,X      ; $E7C0  BD C8 06
  bne _label_e7cb                ; $E7C3  D0 06
  tya                            ; $E7C5  98
  ldy z:_var_00ee                ; $E7C6  A4 EE
  sta APU_PL1_VOL,Y              ; $E7C8  99 00 40

_label_e7cb:
  rts                            ; $E7CB  60

_label_e7cc:
  ldy a:_var_069d_indexed,X      ; $E7CC  BC 9D 06
  bne _label_e7c0                ; $E7CF  D0 EF

_label_e7d1:
  ldy #$10                       ; $E7D1  A0 10
  bne _label_e7c0                ; $E7D3  D0 EB

_label_e7d5:
  ldy #$10                       ; $E7D5  A0 10
  bne _label_e7bd                ; $E7D7  D0 E4

_label_e7d9:
  iny                            ; $E7D9  C8
  lda (_var_00e6_indexed),Y      ; $E7DA  B1 E6
  sta a:_var_0692_indexed,X      ; $E7DC  9D 92 06
  iny                            ; $E7DF  C8
  lda (_var_00e6_indexed),Y      ; $E7E0  B1 E6
  sta a:_var_0693_indexed,X      ; $E7E2  9D 93 06
  lda a:_var_0692_indexed,X      ; $E7E5  BD 92 06
  sta z:_var_00e6_indexed        ; $E7E8  85 E6
  lda a:_var_0693_indexed,X      ; $E7EA  BD 93 06
  sta z:_var_00e7                ; $E7ED  85 E7
  txa                            ; $E7EF  8A
  lsr a                          ; $E7F0  4A
  tax                            ; $E7F1  AA
  lda #$00                       ; $E7F2  A9 00
  tay                            ; $E7F4  A8
  sta a:_var_06a8_indexed,X      ; $E7F5  9D A8 06
  jmp _label_e818                ; $E7F8  4C 18 E8

_label_e7fb:
  jsr _func_e244                 ; $E7FB  20 44 E2

_label_e7fe:
  rts                            ; $E7FE  60

_label_e7ff:
  txa                            ; $E7FF  8A
  asl a                          ; $E800  0A
  tax                            ; $E801  AA
  lda a:_var_0692_indexed,X      ; $E802  BD 92 06
  sta z:_var_00e6_indexed        ; $E805  85 E6
  lda a:_var_0693_indexed,X      ; $E807  BD 93 06
  sta z:_var_00e7                ; $E80A  85 E7
  txa                            ; $E80C  8A
  lsr a                          ; $E80D  4A
  tax                            ; $E80E  AA
  inc a:_var_06a8_indexed,X      ; $E80F  FE A8 06
  inc a:_var_06a8_indexed,X      ; $E812  FE A8 06
  ldy a:_var_06a8_indexed,X      ; $E815  BC A8 06

_label_e818:
  txa                            ; $E818  8A
  asl a                          ; $E819  0A
  tax                            ; $E81A  AA
  lda (_var_00e6_indexed),Y      ; $E81B  B1 E6
  sta a:_var_06a0_indexed,X      ; $E81D  9D A0 06
  iny                            ; $E820  C8
  lda (_var_00e6_indexed),Y      ; $E821  B1 E6
  sta a:_var_06a1_indexed,X      ; $E823  9D A1 06
  cmp #$00                       ; $E826  C9 00
  beq _label_e7fb                ; $E828  F0 D1
  cmp #$FF                       ; $E82A  C9 FF
  beq _label_e7d9                ; $E82C  F0 AB
  txa                            ; $E82E  8A
  lsr a                          ; $E82F  4A
  tax                            ; $E830  AA
  lda #$00                       ; $E831  A9 00
  sta a:_var_06ac_indexed,X      ; $E833  9D AC 06
  lda #$01                       ; $E836  A9 01
  sta a:_var_06b4_indexed,X      ; $E838  9D B4 06
  bne _label_e85a                ; $E83B  D0 1D

_label_e83d:
  jmp _label_e7ff                ; $E83D  4C FF E7

_label_e840:
  jsr _func_e735                 ; $E840  20 35 E7
  lda #$00                       ; $E843  A9 00
  tax                            ; $E845  AA
  sta z:_var_00ee                ; $E846  85 EE
  beq _label_e85a                ; $E848  F0 10

_label_e84a:
  txa                            ; $E84A  8A
  lsr a                          ; $E84B  4A
  tax                            ; $E84C  AA

_label_e84d:
  inx                            ; $E84D  E8
  txa                            ; $E84E  8A
  cmp #$04                       ; $E84F  C9 04
  beq _label_e7fe                ; $E851  F0 AB
  lda z:_var_00ee                ; $E853  A5 EE
  clc                            ; $E855  18
  adc #$04                       ; $E856  69 04
  sta z:_var_00ee                ; $E858  85 EE

_label_e85a:
  txa                            ; $E85A  8A
  asl a                          ; $E85B  0A
  tax                            ; $E85C  AA
  lda a:_var_06a0_indexed,X      ; $E85D  BD A0 06
  sta z:_var_00e6_indexed        ; $E860  85 E6
  lda a:_var_06a1_indexed,X      ; $E862  BD A1 06
  sta z:_var_00e7                ; $E865  85 E7
  lda a:_var_06a1_indexed,X      ; $E867  BD A1 06
  cmp #$FF                       ; $E86A  C9 FF
  beq _label_e84a                ; $E86C  F0 DC
  txa                            ; $E86E  8A
  lsr a                          ; $E86F  4A
  tax                            ; $E870  AA
  dec a:_var_06b4_indexed,X      ; $E871  DE B4 06
  bne _label_e8bf                ; $E874  D0 49
  lda #$00                       ; $E876  A9 00
  sta a:_var_06cd_indexed,X      ; $E878  9D CD 06
  sta a:_var_06d1_indexed,X      ; $E87B  9D D1 06

_label_e87e:
  jsr _func_ea41                 ; $E87E  20 41 EA
  beq _label_e83d                ; $E881  F0 BA
  cmp #$9F                       ; $E883  C9 9F
  beq _label_e8ce                ; $E885  F0 47
  cmp #$9E                       ; $E887  C9 9E
  beq _label_e8e6                ; $E889  F0 5B
  cmp #$9C                       ; $E88B  C9 9C
  beq _label_e8ef                ; $E88D  F0 60
  tay                            ; $E88F  A8
  cmp #$FF                       ; $E890  C9 FF
  beq _label_e89d                ; $E892  F0 09
  and #$C0                       ; $E894  29 C0
  cmp #$C0                       ; $E896  C9 C0
  beq _label_e8ad                ; $E898  F0 13
  jmp _label_e8f8                ; $E89A  4C F8 E8

_label_e89d:
  lda a:_var_06bc_indexed,X      ; $E89D  BD BC 06
  beq _label_e8bc                ; $E8A0  F0 1A
  dec a:_var_06bc_indexed,X      ; $E8A2  DE BC 06
  lda a:_var_06b0_indexed,X      ; $E8A5  BD B0 06
  sta a:_var_06ac_indexed,X      ; $E8A8  9D AC 06
  bne _label_e8bc                ; $E8AB  D0 0F

_label_e8ad:
  tya                            ; $E8AD  98
  and #$3F                       ; $E8AE  29 3F
  sta a:_var_06bc_indexed,X      ; $E8B0  9D BC 06
  dec a:_var_06bc_indexed,X      ; $E8B3  DE BC 06
  lda a:_var_06ac_indexed,X      ; $E8B6  BD AC 06
  sta a:_var_06b0_indexed,X      ; $E8B9  9D B0 06

_label_e8bc:
  jmp _label_e87e                ; $E8BC  4C 7E E8

_label_e8bf:
  jsr _func_e766                 ; $E8BF  20 66 E7
  jsr _func_e5d0                 ; $E8C2  20 D0 E5
  jmp _label_e84d                ; $E8C5  4C 4D E8

_label_e8c8:
  jmp _label_e9dc                ; $E8C8  4C DC E9

_label_e8cb:
  jmp _label_e9b2                ; $E8CB  4C B2 E9

_label_e8ce:
  jsr _func_ea41                 ; $E8CE  20 41 EA
  sta a:_var_069a_indexed,X      ; $E8D1  9D 9A 06
  jsr _func_ea41                 ; $E8D4  20 41 EA
  sta a:_var_069d_indexed,X      ; $E8D7  9D 9D 06
  jmp _label_e87e                ; $E8DA  4C 7E E8

.byte $20, $41, $ea, $20, $41, $ea, $4c, $7e, $e8 ; $E8DD

_label_e8e6:
  jsr _func_ea41                 ; $E8E6  20 41 EA
  sta a:_var_0691                ; $E8E9  8D 91 06
  jmp _label_e87e                ; $E8EC  4C 7E E8

_label_e8ef:
  jsr _func_ea41                 ; $E8EF  20 41 EA
  sta a:_var_0690_indexed        ; $E8F2  8D 90 06
  jmp _label_e87e                ; $E8F5  4C 7E E8

_label_e8f8:
  tya                            ; $E8F8  98
  and #$B0                       ; $E8F9  29 B0
  cmp #$B0                       ; $E8FB  C9 B0
  bne _label_e917                ; $E8FD  D0 18
  tya                            ; $E8FF  98
  and #$0F                       ; $E900  29 0F
  clc                            ; $E902  18
  adc a:_var_0691                ; $E903  6D 91 06
  tay                            ; $E906  A8
  lda a:_data_ebaf_indexed,Y     ; $E907  B9 AF EB
  sta a:_var_06b8_indexed,X      ; $E90A  9D B8 06
  tay                            ; $E90D  A8
  txa                            ; $E90E  8A
  cmp #$02                       ; $E90F  C9 02
  beq _label_e8cb                ; $E911  F0 B8

_label_e913:
  jsr _func_ea41                 ; $E913  20 41 EA
  tay                            ; $E916  A8

_label_e917:
  tya                            ; $E917  98
  sta a:_var_06c3_indexed,X      ; $E918  9D C3 06
  txa                            ; $E91B  8A
  cmp #$03                       ; $E91C  C9 03
  beq _label_e8c8                ; $E91E  F0 A8
  pha                            ; $E920  48
  ldx z:_var_00ee                ; $E921  A6 EE
  lda a:_data_eb14_indexed,Y     ; $E923  B9 14 EB
  beq _label_e94c                ; $E926  F0 24
  lda a:_var_0690_indexed        ; $E928  AD 90 06
  bpl _label_e938                ; $E92B  10 0B
  and #$7F                       ; $E92D  29 7F
  sta z:_var_00e3                ; $E92F  85 E3
  tya                            ; $E931  98
  clc                            ; $E932  18
  sbc z:_var_00e3                ; $E933  E5 E3
  jmp _label_e93d                ; $E935  4C 3D E9

_label_e938:
  tya                            ; $E938  98
  clc                            ; $E939  18
  adc a:_var_0690_indexed        ; $E93A  6D 90 06

_label_e93d:
  tay                            ; $E93D  A8
  lda a:_data_eb14_indexed,Y     ; $E93E  B9 14 EB
  sta a:_var_0680_indexed,X      ; $E941  9D 80 06
  lda a:_data_eb13_indexed,Y     ; $E944  B9 13 EB
  ora #$08                       ; $E947  09 08
  sta a:_var_0681_indexed,X      ; $E949  9D 81 06

_label_e94c:
  tay                            ; $E94C  A8
  pla                            ; $E94D  68
  tax                            ; $E94E  AA
  tya                            ; $E94F  98
  bne _label_e961                ; $E950  D0 0F
  lda #$00                       ; $E952  A9 00
  sta z:_var_00e0_indexed        ; $E954  85 E0
  txa                            ; $E956  8A
  cmp #$02                       ; $E957  C9 02
  beq _label_e966                ; $E959  F0 0B
  lda #$10                       ; $E95B  A9 10
  sta z:_var_00e0_indexed        ; $E95D  85 E0
  bne _label_e966                ; $E95F  D0 05

_label_e961:
  lda a:_var_069d_indexed,X      ; $E961  BD 9D 06
  sta z:_var_00e0_indexed        ; $E964  85 E0

_label_e966:
  txa                            ; $E966  8A
  dec a:_var_06c8_indexed,X      ; $E967  DE C8 06
  cmp a:_var_06c8_indexed,X      ; $E96A  DD C8 06
  beq _label_e9ac                ; $E96D  F0 3D
  inc a:_var_06c8_indexed,X      ; $E96F  FE C8 06
  ldy z:_var_00ee                ; $E972  A4 EE
  txa                            ; $E974  8A
  cmp #$02                       ; $E975  C9 02
  beq _label_e98c                ; $E977  F0 13
  lda a:_var_069a_indexed,X      ; $E979  BD 9A 06
  and #$1F                       ; $E97C  29 1F
  beq _label_e98c                ; $E97E  F0 0C
  lda z:_var_00e0_indexed        ; $E980  A5 E0
  cmp #$10                       ; $E982  C9 10
  beq _label_e98e                ; $E984  F0 08
  and #$F0                       ; $E986  29 F0
  ora #$00                       ; $E988  09 00
  bne _label_e98e                ; $E98A  D0 02

_label_e98c:
  lda z:_var_00e0_indexed        ; $E98C  A5 E0

_label_e98e:
  sta APU_PL1_VOL,Y              ; $E98E  99 00 40
  lda a:_var_06c0_indexed,X      ; $E991  BD C0 06
  sta APU_PL1_SWEEP,Y            ; $E994  99 01 40
  lda a:_var_0680_indexed,Y      ; $E997  B9 80 06
  sta APU_PL1_LO,Y               ; $E99A  99 02 40
  lda a:_var_0681_indexed,Y      ; $E99D  B9 81 06
  sta APU_PL1_HI,Y               ; $E9A0  99 03 40

_label_e9a3:
  lda a:_var_06b8_indexed,X      ; $E9A3  BD B8 06
  sta a:_var_06b4_indexed,X      ; $E9A6  9D B4 06
  jmp _label_e84d                ; $E9A9  4C 4D E8

_label_e9ac:
  inc a:_var_06c8_indexed,X      ; $E9AC  FE C8 06
  jmp _label_e9a3                ; $E9AF  4C A3 E9

_label_e9b2:
  lda a:_var_069c                ; $E9B2  AD 9C 06
  and #$1F                       ; $E9B5  29 1F
  bne _label_e9d6                ; $E9B7  D0 1D
  lda a:_var_069c                ; $E9B9  AD 9C 06
  and #$C0                       ; $E9BC  29 C0
  bne _label_e9c3                ; $E9BE  D0 03

_label_e9c0:
  tya                            ; $E9C0  98
  bne _label_e9cb                ; $E9C1  D0 08

_label_e9c3:
  cmp #$C0                       ; $E9C3  C9 C0
  beq _label_e9c0                ; $E9C5  F0 F9
  lda #$FF                       ; $E9C7  A9 FF
  bne _label_e9d6                ; $E9C9  D0 0B

_label_e9cb:
  clc                            ; $E9CB  18
  adc #$FF                       ; $E9CC  69 FF
  asl a                          ; $E9CE  0A
  asl a                          ; $E9CF  0A
  cmp #$3C                       ; $E9D0  C9 3C
  bcc _label_e9d6                ; $E9D2  90 02
  lda #$3C                       ; $E9D4  A9 3C

_label_e9d6:
  sta a:$069F                    ; $E9D6  8D 9F 06
  jmp _label_e913                ; $E9D9  4C 13 E9

_label_e9dc:
  tya                            ; $E9DC  98
  pha                            ; $E9DD  48
  jsr _func_ea03                 ; $E9DE  20 03 EA
  pla                            ; $E9E1  68
  and #$3F                       ; $E9E2  29 3F
  tay                            ; $E9E4  A8
  jsr _func_e9eb                 ; $E9E5  20 EB E9
  jmp _label_e9a3                ; $E9E8  4C A3 E9

_func_e9eb:
  lda a:_var_06f8_indexed        ; $E9EB  AD F8 06
  bne _label_ea02                ; $E9EE  D0 12
  lda a:_data_e5ab_indexed,Y     ; $E9F0  B9 AB E5
  sta APU_NOISE_VOL              ; $E9F3  8D 0C 40
  lda a:_data_e5ac_indexed,Y     ; $E9F6  B9 AC E5
  sta APU_NOISE_LO               ; $E9F9  8D 0E 40
  lda a:_data_e5ad_indexed,Y     ; $E9FC  B9 AD E5
  sta APU_NOISE_HI               ; $E9FF  8D 0F 40

_label_ea02:
  rts                            ; $EA02  60

_func_ea03:
  tya                            ; $EA03  98
  and #$C0                       ; $EA04  29 C0
  cmp #$40                       ; $EA06  C9 40
  beq _label_ea0f                ; $EA08  F0 05
  cmp #$80                       ; $EA0A  C9 80
  beq _label_ea19                ; $EA0C  F0 0B
  rts                            ; $EA0E  60

_label_ea0f:
  lda #$0E                       ; $EA0F  A9 0E
  sta z:_var_00e1                ; $EA11  85 E1
  lda #$07                       ; $EA13  A9 07
  ldy #$00                       ; $EA15  A0 00
  beq _label_ea21                ; $EA17  F0 08

_label_ea19:
  lda #$0E                       ; $EA19  A9 0E
  sta z:_var_00e1                ; $EA1B  85 E1
  lda #$0F                       ; $EA1D  A9 0F
  ldy #$02                       ; $EA1F  A0 02

_label_ea21:
  sta APU_DMC_LEN                ; $EA21  8D 13 40
  sty APU_DMC_START              ; $EA24  8C 12 40
  lda a:$06F7                    ; $EA27  AD F7 06
  bne _label_ea40                ; $EA2A  D0 14
  lda z:_var_00e1                ; $EA2C  A5 E1
  sta APU_DMC_FREQ               ; $EA2E  8D 10 40
  lda #$0F                       ; $EA31  A9 0F
  sta APU_SND_CHN                ; $EA33  8D 15 40
  lda #$00                       ; $EA36  A9 00
  sta APU_DMC_RAW                ; $EA38  8D 11 40
  lda #$1F                       ; $EA3B  A9 1F
  sta APU_SND_CHN                ; $EA3D  8D 15 40

_label_ea40:
  rts                            ; $EA40  60

_func_ea41:
  ldy a:_var_06ac_indexed,X      ; $EA41  BC AC 06
  inc a:_var_06ac_indexed,X      ; $EA44  FE AC 06
  lda (_var_00e6_indexed),Y      ; $EA47  B1 E6
  rts                            ; $EA49  60

_data_ea4a_indexed:
.byte $76                        ; $EA4A

_data_ea4b_indexed:
.byte $ea, $82, $ea, $8b, $ea, $91, $ea, $9a, $ea, $a2, $ea, $a5, $ea, $a8, $ea, $ac ; $EA4B
.byte $ea, $ba, $ea, $c7, $ea, $d4, $ea, $de, $ea, $e8, $ea, $f2, $ea, $f7, $ea, $fc ; $EA5B
.byte $ea, $01, $eb, $05, $eb, $0a, $eb, $0d, $eb, $10, $eb, $46, $89, $87, $76, $66 ; $EA6B
.byte $55, $44, $33, $22, $21, $11, $f0, $86, $55, $44, $44, $31, $11, $11, $11, $f0 ; $EA7B
.byte $54, $43, $33, $22, $11, $f0, $23, $45, $77, $66, $55, $44, $44, $44, $ff, $32 ; $EA8B
.byte $22, $22, $22, $22, $22, $22, $ff, $99, $81, $ff, $58, $71, $ff, $e7, $99, $81 ; $EA9B
.byte $ff, $a8, $66, $55, $54, $43, $43, $32, $22, $22, $21, $11, $11, $11, $f0, $97 ; $EAAB
.byte $65, $44, $33, $33, $33, $22, $22, $11, $11, $11, $11, $f0, $65, $44, $44, $33 ; $EABB
.byte $22, $22, $11, $11, $11, $11, $11, $11, $f0, $44, $33, $22, $22, $11, $11, $11 ; $EACB
.byte $11, $11, $f0, $22, $22, $11, $11, $11, $11, $11, $11, $11, $f0, $97, $65, $32 ; $EADB
.byte $43, $21, $11, $32, $21, $11, $ff, $d8, $76, $54, $32, $ff, $b8, $76, $53, $21 ; $EAEB
.byte $ff, $85, $43, $21, $11, $ff, $53, $22, $11, $ff, $eb, $97, $53, $21, $ff, $a9 ; $EAFB
.byte $91, $f0, $85, $51, $f0, $63, $31, $f0 ; $EB0B

_data_eb13_indexed:
.byte $07                        ; $EB13

_data_eb14_indexed:
.byte $f0, $00, $00, $06, $ae, $06, $4e, $05, $f3, $05, $9e, $05, $4d, $05, $01, $04 ; $EB14
.byte $b9, $04, $75, $04, $35, $03, $f8, $03, $bf, $03, $89, $03, $57, $03, $27, $02 ; $EB24
.byte $f9, $02, $cf, $02, $a6, $02, $80, $02, $5c, $02, $3a, $02, $1a, $01, $fc, $01 ; $EB34
.byte $df, $01, $c4, $01, $ab, $01, $93, $01, $7c, $01, $67, $01, $52, $01, $3f, $01 ; $EB44
.byte $2d, $01, $1c, $01, $0c, $00, $fd, $00, $ee, $00, $e1, $00, $d4, $00, $c8, $00 ; $EB54
.byte $bd, $00, $b2, $00, $a8, $00, $9f, $00, $96, $00, $8d, $00, $85, $00, $7e, $00 ; $EB64
.byte $76, $00, $70, $00, $69, $00, $63, $00, $5e, $00, $58, $00, $53, $00, $4f, $00 ; $EB74
.byte $4a, $00, $46, $00, $42, $00, $3e, $00, $3a, $00, $37, $00, $34, $00, $31, $00 ; $EB84
.byte $2e, $00, $2b, $00, $29, $00, $27, $00, $01, $00, $24, $00, $22, $00, $20, $00 ; $EB94
.byte $1e, $00, $1c, $00, $1a, $00, $0a, $00, $10, $00, $19 ; $EBA4

_data_ebaf_indexed:
.byte $03, $06, $0c, $18, $30, $12, $24, $09, $08, $04, $02, $01, $04, $08, $10, $20 ; $EBAF
.byte $40, $18, $30, $0c, $0a, $05, $02, $01, $05, $0a, $14, $28, $50, $1e, $3c, $0f ; $EBBF
.byte $0d, $06, $02, $01, $06, $0c, $18, $30, $60, $24, $48, $12, $10, $08, $03, $01 ; $EBCF
.byte $04, $02, $00, $90, $07, $0e, $1c, $38, $70, $2a, $54, $15, $12, $09, $03, $01 ; $EBDF
.byte $02, $08, $10, $20, $40, $80, $30, $60, $18, $15, $0a, $04, $01, $02, $c0, $09 ; $EBEF
.byte $12, $24, $48, $90, $36, $6c, $1b, $18, $0a, $14, $28, $50, $a0, $3c, $78, $1e ; $EBFF
.byte $1a, $0d, $05, $01, $02, $17, $0b, $16, $2c, $58, $b0, $42, $84, $21, $1d, $0e ; $EC0F
.byte $05, $01, $02, $17         ; $EC1F

_data_ec23_indexed:
.byte $00, $0a, $14, $1e, $28, $32, $3c, $46, $50, $5a ; $EC23

_data_ec2d_indexed:
.byte $0a, $24, $f1, $ec, $f5, $ec, $f7, $ec, $f9, $ec, $83, $00, $91, $ec, $95, $ec ; $EC2D
.byte $97, $ec, $99, $ec, $81, $24, $bf, $ee, $c9, $ee, $d3, $ee, $dd, $ee, $83, $24 ; $EC3D
.byte $c2, $f5, $d0, $f5, $de, $f5, $ec, $f5, $81, $24, $b1, $f2, $b9, $f2, $bf, $f2 ; $EC4D
.byte $ff, $ff, $81, $00, $bf, $ee, $c9, $ee, $d3, $ee, $dd, $ee, $83, $0c, $c2, $f5 ; $EC5D
.byte $d0, $f5, $de, $f5, $ec, $f5, $81, $0c, $b1, $f2, $b9, $f2, $bf, $f2, $ff, $ff ; $EC6D
.byte $00, $18, $a4, $f3, $aa, $f3, $b0, $f3, $b6, $f3, $8f, $24, $9e, $f8, $aa, $f8 ; $EC7D
.byte $b6, $f8, $c2, $f8, $9b, $ec, $00, $00, $c7, $ec, $b1, $ec, $dd, $ec, $9f, $a4 ; $EC8D
.byte $b3, $b1, $50, $02, $50, $b5, $54, $b1, $5a, $58, $50, $b5, $54, $b1, $5a, $5e ; $EC9D
.byte $60, $b4, $62, $00, $9f, $a0, $00, $b1, $4a, $02, $4a, $b5, $4e, $b1, $50, $50 ; $ECAD
.byte $46, $b5, $4e, $b1, $50, $54, $56, $b4, $5c, $00, $9f, $a4, $b3, $b1, $42, $02 ; $ECBD
.byte $42, $b5, $46, $b1, $4a, $46, $40, $b5, $46, $b1, $4a, $4c, $50, $b4, $54, $00 ; $ECCD
.byte $b1, $04, $01, $04, $b5, $04, $b1, $04, $04, $04, $b5, $04, $b1, $04, $04, $04 ; $ECDD
.byte $e0, $b0, $04, $ff, $ff, $ec, $00, $00, $6f, $ed, $e2, $ed, $6f, $ee, $ff, $ff ; $ECED
.byte $f9, $ec, $9f, $14, $b1, $b9, $02, $02, $42, $b2, $5a, $42, $46, $4a, $4c, $50 ; $ECFD
.byte $54, $b3, $56, $b8, $56, $56, $56, $b4, $54, $b9, $02, $02, $b2, $5e, $b9, $02 ; $ED0D
.byte $b2, $46, $4a, $b2, $4c, $4a, $4c, $4e, $b9, $50, $02, $9f, $15, $b1, $b9, $70 ; $ED1D
.byte $b6, $02, $b2, $40, $b8, $02, $28, $02, $b2, $02, $9f, $14, $b1, $b9, $02, $02 ; $ED2D
.byte $42, $b2, $5a, $42, $46, $4a, $4c, $50, $54, $b3, $54, $b8, $54, $54, $54, $b4 ; $ED3D
.byte $4c, $b9, $02, $02, $b2, $56, $b9, $02, $b2, $54, $4c, $b2, $54, $50, $46, $4a ; $ED4D
.byte $b1, $02, $b5, $2e, $b8, $2a, $b9, $28, $b8, $26, $b9, $24, $b2, $02, $04, $b3 ; $ED5D
.byte $02, $00, $9f, $15, $b1, $b9, $02, $02, $3c, $b2, $54, $3c, $3c, $44, $44, $4a ; $ED6D
.byte $4e, $b3, $4e, $b8, $4e, $46, $4e, $b4, $4e, $b9, $02, $02, $b2, $56, $b9, $02 ; $ED7D
.byte $b2, $3e, $4a, $b2, $46, $44, $46, $48, $b9, $3e, $02, $9f, $15, $b1, $b9, $72 ; $ED8D
.byte $b2, $02, $5a, $02, $b9, $42, $02, $02, $02, $02, $2a, $b3, $02, $9f, $15, $b1 ; $ED9D
.byte $b9, $02, $02, $3c, $b2, $54, $3c, $3c, $44, $44, $4a, $4e, $b3, $4c, $b8, $4c ; $EDAD
.byte $4c, $4c, $b4, $46, $b9, $02, $02, $b2, $46, $b9, $02, $b2, $42, $3c, $b2, $42 ; $EDBD
.byte $3e, $3e, $38, $b1, $02, $b5, $34, $b8, $34, $b9, $34, $b8, $34, $b9, $34, $b2 ; $EDCD
.byte $02, $1c, $b3, $02, $00, $9f, $00, $00, $b1, $34, $02, $b8, $34, $b9, $2a, $b1 ; $EDDD
.byte $34, $02, $36, $02, $38, $02, $3c, $02, $3e, $02, $40, $02, $42, $02, $b2, $02 ; $EDED
.byte $b8, $42, $42, $42, $b8, $46, $b9, $46, $b1, $42, $02, $b8, $3e, $b9, $2e, $b1 ; $EDFD
.byte $3c, $02, $38, $02, $38, $02, $b8, $38, $b9, $38, $b1, $3c, $02, $3e, $02, $3c ; $EE0D
.byte $02, $3e, $02, $40, $02, $42, $02, $b6, $02, $b4, $02, $b1, $34, $02, $34, $02 ; $EE1D
.byte $34, $02, $36, $02, $38, $02, $3c, $02, $3e, $02, $3e, $02, $b3, $40, $b8, $40 ; $EE2D
.byte $40, $40, $b1, $40, $b5, $3e, $b8, $3c, $b9, $38, $b1, $34, $02, $38, $02, $38 ; $EE3D
.byte $02, $3c, $02, $3e, $02, $42, $02, $42, $02, $42, $02, $42, $02, $9f, $00, $00 ; $EE4D
.byte $b1, $02, $b5, $3e, $b8, $3c, $b9, $3a, $b8, $38, $b9, $34, $b2, $02, $1c, $02 ; $EE5D
.byte $02, $00, $c6, $b9, $04, $01, $04, $b2, $07, $b9, $04, $04, $04, $b2, $07, $ff ; $EE6D
.byte $c4, $b9, $04, $01, $04, $07, $01, $04, $ff, $c2, $b9, $04, $01, $04, $b2, $07 ; $EE7D
.byte $b9, $04, $01, $04, $07, $01, $04, $ff, $b2, $07, $01, $b8, $07, $07, $07, $c3 ; $EE8D
.byte $b9, $04, $01, $04, $07, $01, $04, $b9, $01, $04, $04, $07, $01, $04, $ff, $b1 ; $EE9D
.byte $01, $ba, $07, $cb, $04, $ff, $c2, $b8, $07, $b9, $07, $ff, $b2, $01, $0a, $01 ; $EEAD
.byte $01, $00, $e3, $ee, $f0, $f0, $de, $f1, $ff, $ff, $bf, $ee, $b1, $ef, $47, $f1 ; $EEBD
.byte $f7, $f1, $ff, $ff, $c9, $ee, $4f, $f0, $96, $f1, $42, $f2, $ff, $ff, $d3, $ee ; $EECD
.byte $58, $f2, $ff, $ff, $dd, $ee, $9f, $0a, $f1, $b2, $20, $38, $20, $38, $9f, $0d ; $EEDD
.byte $f1, $b2, $20, $38, $20, $38, $9f, $0a, $f1, $b2, $20, $b1, $46, $3e, $b2, $46 ; $EEED
.byte $42, $3c, $3e, $b1, $40, $40, $b2, $40, $b1, $42, $42, $b2, $42, $b1, $3c, $3c ; $EEFD
.byte $b2, $3c, $b1, $3e, $3e, $42, $42, $b2, $3e, $9f, $0a, $f1, $b0, $56, $9f, $0b ; $EF0D
.byte $f1, $b0, $54, $9f, $0c, $f1, $b0, $50, $9f, $0d, $f1, $b0, $4c, $9f, $0d, $f1 ; $EF1D
.byte $b2, $4a, $38, $50, $4e, $4e, $50, $9f, $09, $f1, $b1, $50, $50, $b2, $50, $b1 ; $EF2D
.byte $4c, $4c, $b2, $4c, $b1, $4a, $4a, $b2, $4a, $b1, $46, $46, $4a, $4a, $b2, $46 ; $EF3D
.byte $9f, $0d, $f1, $b0, $44, $9f, $0c, $f1, $b0, $46, $9f, $0b, $f1, $b0, $4a, $9f ; $EF4D
.byte $0a, $f1, $b0, $4e, $9f, $09, $f1, $b2, $50, $b1, $46, $3e, $b2, $46, $42, $3c ; $EF5D
.byte $3e, $b1, $40, $40, $b2, $40, $b1, $42, $42, $b2, $42, $b1, $3c, $3c, $b2, $3c ; $EF6D
.byte $b1, $3e, $3e, $42, $42, $b2, $3e, $b0, $50, $4c, $4a, $46, $b2, $44, $b1, $44 ; $EF7D
.byte $44, $b2, $44, $b0, $46, $4a, $46, $42, $b2, $40, $b1, $40, $40, $b2, $40, $b0 ; $EF8D
.byte $42, $46, $42, $3e, $b2, $3c, $b1, $3c, $3c, $b2, $3c, $3e, $02, $3c, $9f, $09 ; $EF9D
.byte $f1, $3e, $02, $00, $9f, $0a, $f1, $b2, $20, $3e, $20, $3e, $9f, $0b, $f1, $b2 ; $EFAD
.byte $20, $3e, $20, $3e, $9f, $09, $f1, $b2, $02, $b1, $56, $50, $b2, $56, $54, $4e ; $EFBD
.byte $50, $b1, $4c, $4c, $b2, $4c, $b1, $4a, $4a, $b2, $4a, $b1, $48, $48, $b2, $48 ; $EFCD
.byte $b1, $46, $50, $48, $50, $b2, $46, $02, $9f, $0c, $f1, $02, $b1, $50, $4a, $b2 ; $EFDD
.byte $50, $b1, $54, $46, $b2, $54, $50, $9f, $09, $f1, $b1, $56, $56, $b2, $56, $b1 ; $EFED
.byte $54, $54, $b2, $54, $b1, $50, $50, $b2, $50, $b1, $4e, $54, $50, $54, $b3, $4e ; $EFFD
.byte $9f, $09, $f1, $b2, $02, $b1, $56, $50, $b2, $56, $54, $4e, $50, $b1, $4c, $4c ; $F00D
.byte $b2, $4c, $b1, $4a, $4a, $b2, $4a, $b1, $48, $48, $b2, $48, $b1, $46, $50, $48 ; $F01D
.byte $50, $b2, $46, $02, $b2, $02, $b1, $50, $4a, $b2, $50, $4e, $02, $b1, $4c, $46 ; $F02D
.byte $b2, $4c, $4a, $02, $b1, $48, $42, $b2, $48, $46, $02, $46, $9f, $09, $f1, $50 ; $F03D
.byte $02, $00, $9f, $00, $00, $c4, $b2, $20, $b1, $46, $02, $ff, $b2, $38, $b1, $50 ; $F04D
.byte $02, $b2, $38, $b1, $4a, $02, $b2, $38, $b1, $44, $02, $b2, $38, $b1, $50, $02 ; $F05D
.byte $b2, $38, $b1, $50, $02, $b2, $38, $b1, $50, $02, $c3, $38, $02, $ff, $b0, $56 ; $F06D
.byte $54, $50, $4c, $b2, $44, $b1, $4a, $02, $b2, $42, $b1, $5e, $02, $b2, $3e, $b1 ; $F07D
.byte $5e, $02, $b2, $3c, $b1, $62, $02, $b2, $3c, $b1, $5e, $02, $b2, $3c, $b1, $5c ; $F08D
.byte $02, $c3, $b1, $46, $02, $ff, $b2, $02, $b2, $38, $b1, $50, $02, $b2, $38, $b1 ; $F09D
.byte $62, $02, $b2, $38, $b1, $5c, $02, $b2, $38, $b1, $5e, $02, $b2, $38, $b1, $50 ; $F0AD
.byte $02, $b2, $38, $b1, $60, $02, $c3, $38, $02, $ff, $b0, $50, $4c, $4a, $46, $b2 ; $F0BD
.byte $3c, $b1, $62, $02, $b2, $62, $b1, $46, $02, $b2, $38, $b1, $5e, $02, $b2, $46 ; $F0CD
.byte $b1, $2a, $02, $b2, $34, $b1, $42, $02, $b2, $42, $b1, $46, $02, $b2, $02, $46 ; $F0DD
.byte $38, $02, $00, $c2, $b1, $46, $46, $4a, $4a, $4e, $4e, $50, $50, $50, $50, $4a ; $F0ED
.byte $4a, $b2, $4e, $76, $b9, $38, $3e, $46, $38, $3e, $46, $38, $3e, $46, $38, $3e ; $F0FD
.byte $46, $34, $3c, $42, $34, $3c, $42, $b1, $42, $02, $64, $02, $ff, $9f, $0c, $f1 ; $F10D
.byte $b1, $5e, $5e, $62, $62, $b2, $66, $b1, $46, $02, $9f, $0b, $f1, $b1, $68, $68 ; $F11D
.byte $6c, $6c, $b2, $6e, $b1, $46, $02, $9f, $09, $f1, $b1, $6c, $6c, $6e, $6e, $b2 ; $F12D
.byte $72, $b1, $46, $02, $b1, $6e, $6e, $72, $72, $00, $c2, $b1, $4e, $4e, $50, $50 ; $F13D
.byte $54, $54, $56, $56, $5a, $5a, $50, $50, $b2, $54, $02, $9f, $09, $f1, $02, $b1 ; $F14D
.byte $4e, $02, $b3, $50, $b2, $02, $b1, $4a, $02, $b3, $4c, $ff, $9f, $0c, $f1, $b1 ; $F15D
.byte $66, $66, $68, $68, $b2, $6c, $b1, $46, $02, $9f, $0b, $f1, $b1, $5e, $62, $66 ; $F16D
.byte $66, $b2, $68, $b1, $46, $02, $9f, $09, $f1, $b1, $5e, $66, $68, $68, $b2, $6c ; $F17D
.byte $b1, $46, $02, $b1, $5e, $68, $6c, $6c, $00, $c2, $b1, $46, $46, $46, $46, $5e ; $F18D
.byte $5e, $5e, $5e, $62, $62, $62, $62, $5e, $02, $46, $02, $b2, $38, $38, $b1, $38 ; $F19D
.byte $02, $38, $02, $b3, $34, $b1, $34, $02, $4c, $02, $ff, $c4, $b1, $46, $ff, $b2 ; $F1AD
.byte $46, $b0, $5c, $5e, $02, $02, $c4, $b1, $5e, $ff, $b2, $5e, $b0, $5c, $5e, $02 ; $F1BD
.byte $02, $c4, $b1, $5e, $ff, $b2, $5e, $b0, $5c, $5e, $02, $02, $c4, $b1, $76, $ff ; $F1CD
.byte $00, $9f, $0e, $f1, $b2, $6e, $4e, $4c, $4e, $4c, $56, $54, $56, $54, $62, $5e ; $F1DD
.byte $62, $5e, $62, $5a, $62, $5a, $76, $b2, $2e, $00, $9f, $0f, $f1, $b2, $76, $b0 ; $F1ED
.byte $02, $54, $5a, $60, $02, $54, $5a, $5e, $02, $54, $5a, $60, $02, $54, $5a, $5e ; $F1FD
.byte $02, $5a, $62, $68, $02, $5a, $62, $66, $02, $66, $72, $78, $02, $5a, $62, $66 ; $F20D
.byte $02, $5a, $62, $66, $02, $66, $72, $76, $02, $66, $72, $78, $02, $66, $72, $76 ; $F21D
.byte $02, $6c, $72, $80, $02, $6c, $72, $7e, $02, $6c, $72, $80, $02, $6c, $72, $7e ; $F22D
.byte $b2, $76, $b2, $2e, $00, $b2, $76, $02, $02, $02, $02, $02, $02, $02, $02, $6c ; $F23D
.byte $66, $6c, $66, $6c, $5e, $6c, $5e, $76, $b2, $02, $00, $c4, $b2, $01, $04, $ff ; $F24D
.byte $c6, $01, $04, $ff, $01, $07, $07, $01, $c6, $01, $04, $ff, $01, $07, $07, $01 ; $F25D
.byte $c6, $01, $04, $ff, $01, $07, $07, $01, $c2, $01, $07, $07, $01, $ff, $01, $04 ; $F26D
.byte $01, $04, $01, $07, $07, $01, $c2, $b4, $04, $ff, $c2, $b2, $01, $04, $04, $04 ; $F27D
.byte $ff, $c2, $b4, $04, $ff, $c2, $b2, $01, $04, $04, $04, $ff, $c3, $b1, $04, $04 ; $F28D
.byte $04, $04, $b2, $04, $01, $ff, $b1, $04, $04, $04, $04, $b2, $04, $c4, $b4, $01 ; $F29D
.byte $ff, $b3, $01, $00, $cb, $f2, $d4, $f2, $ff, $ff, $b3, $f2, $d1, $f2, $ff, $ff ; $F2AD
.byte $b9, $f2, $4d, $f3, $ff, $ff, $bf, $f2, $a0, $f3, $ff, $ff, $c5, $f2, $9f, $a5 ; $F2BD
.byte $b1, $b8, $02, $00, $9f, $a4, $b3, $b1, $02, $42, $48, $42, $4c, $42, $56, $42 ; $F2CD
.byte $54, $42, $50, $42, $54, $42, $4c, $42, $02, $42, $02, $42, $48, $42, $4c, $42 ; $F2DD
.byte $02, $3e, $48, $3e, $4c, $3e, $50, $3e, $52, $3e, $50, $3e, $4c, $3e, $48, $3e ; $F2ED
.byte $50, $3e, $02, $3e, $48, $3e, $50, $3e, $b1, $02, $42, $48, $42, $4c, $42, $56 ; $F2FD
.byte $42, $54, $42, $50, $42, $54, $42, $4c, $42, $02, $42, $02, $42, $48, $42, $4c ; $F30D
.byte $42, $b1, $02, $42, $48, $42, $50, $42, $56, $42, $54, $42, $50, $42, $46, $42 ; $F31D
.byte $50, $42, $4c, $42, $02, $42, $b2, $42, $02, $b1, $5a, $42, $48, $4c, $50, $56 ; $F32D
.byte $b3, $5a, $b2, $02, $b1, $42, $5a, $60, $5e, $5a, $56, $b3, $5a, $b2, $42, $00 ; $F33D
.byte $9f, $00, $00, $b5, $4c, $b1, $4c, $b2, $34, $b5, $42, $b1, $42, $b2, $42, $4c ; $F34D
.byte $42, $4c, $42, $4c, $42, $b5, $48, $b1, $48, $b2, $48, $b5, $3e, $b1, $3e, $b2 ; $F35D
.byte $3e, $48, $3e, $48, $3e, $48, $3e, $b3, $4c, $b2, $42, $4c, $42, $4c, $42, $4c ; $F36D
.byte $42, $4c, $42, $4c, $b5, $48, $b1, $48, $b2, $48, $b5, $3e, $b1, $3e, $b2, $3e ; $F37D
.byte $48, $3e, $48, $3e, $48, $3e, $4c, $42, $4c, $48, $3e, $48, $4c, $42, $4c, $48 ; $F38D
.byte $3e, $48, $00, $b2, $04, $04, $00, $bc, $f3, $ff, $ff, $a4, $f3, $58, $f4, $ff ; $F39D
.byte $ff, $aa, $f3, $30, $f5, $ff, $ff, $b0, $f3, $7f, $f5, $ff, $ff, $b6, $f3, $9f ; $F3AD
.byte $07, $b1, $b2, $42, $40, $3e, $c2, $b1, $1c, $02, $b2, $3c, $b1, $12, $02, $b2 ; $F3BD
.byte $3c, $b1, $1c, $02, $b2, $3c, $b1, $12, $02, $b2, $3c, $b1, $20, $02, $b2, $3e ; $F3CD
.byte $b1, $1e, $02, $b2, $3e, $b1, $1c, $02, $b2, $3e, $b1, $1e, $02, $b2, $3e, $b1 ; $F3DD
.byte $20, $02, $b2, $3e, $b1, $16, $02, $b2, $3e, $b1, $12, $02, $b2, $38, $b1, $12 ; $F3ED
.byte $02, $b2, $38, $b1, $1c, $02, $b2, $3c, $b1, $12, $02, $b2, $3c, $b1, $1c, $02 ; $F3FD
.byte $b6, $02, $ff, $b1, $20, $02, $b2, $46, $b1, $1e, $02, $b2, $46, $b1, $1c, $02 ; $F40D
.byte $b2, $46, $b1, $16, $02, $b2, $46, $b1, $1c, $02, $b2, $3c, $b1, $12, $02, $b2 ; $F41D
.byte $3c, $b1, $1c, $02, $b2, $3c, $b1, $12, $02, $b2, $3c, $b1, $20, $02, $b2, $46 ; $F42D
.byte $b1, $16, $02, $b2, $46, $b1, $20, $02, $b2, $46, $b1, $16, $02, $b2, $46, $c2 ; $F43D
.byte $b8, $4c, $4c, $4c, $bb, $02, $ff, $b1, $38, $02, $00, $9f, $a6, $b1, $b2, $42 ; $F44D
.byte $46, $48, $b1, $4a, $02, $b7, $4a, $b0, $48, $b1, $4a, $02, $b7, $4a, $b0, $48 ; $F45D
.byte $b1, $4a, $02, $b7, $4a, $b0, $48, $b2, $4a, $48, $b4, $46, $b1, $02, $b0, $02 ; $F46D
.byte $3c, $b7, $38, $b0, $34, $b1, $02, $b0, $02, $46, $b7, $4a, $b0, $4c, $b2, $4c ; $F47D
.byte $4c, $b1, $4c, $4c, $b0, $02, $4c, $50, $52, $b2, $54, $50, $4a, $46, $b4, $42 ; $F48D
.byte $b2, $02, $3c, $3e, $b7, $40, $b0, $42, $b1, $4a, $02, $b7, $4a, $b0, $48, $b1 ; $F49D
.byte $4a, $02, $b7, $4a, $b0, $48, $b1, $4a, $02, $b7, $4a, $b0, $48, $b2, $4a, $48 ; $F4AD
.byte $b4, $46, $b1, $02, $b0, $02, $3c, $b7, $38, $b0, $34, $b1, $02, $b0, $02, $46 ; $F4BD
.byte $b7, $4a, $b0, $4c, $b2, $4c, $4c, $b8, $4c, $4c, $4c, $bb, $02, $b2, $54, $50 ; $F4CD
.byte $46, $4a, $b4, $4c, $b2, $02, $4c, $4a, $48, $b1, $46, $b5, $3c, $b2, $38, $34 ; $F4DD
.byte $b7, $46, $b0, $3c, $b7, $38, $b5, $34, $b0, $02, $46, $48, $b1, $4a, $02, $b7 ; $F4ED
.byte $4a, $b0, $48, $b1, $4a, $02, $b7, $4a, $b0, $48, $b1, $4a, $02, $b7, $4a, $b0 ; $F4FD
.byte $48, $b2, $4a, $b9, $4a, $4c, $4e, $ba, $02, $b2, $50, $4c, $46, $b3, $3e, $b2 ; $F50D
.byte $46, $4c, $50, $b8, $52, $52, $52, $bb, $02, $b8, $52, $50, $4c, $bb, $02, $b1 ; $F51D
.byte $50, $02, $00, $9f, $0f, $00, $c3, $b2, $02, $ff, $c2, $b2, $34, $5a, $2a, $5a ; $F52D
.byte $34, $5a, $2a, $5a, $38, $5e, $36, $5e, $34, $5e, $36, $5e, $38, $5e, $2e, $5e ; $F53D
.byte $2a, $56, $2a, $56, $34, $5a, $2a, $5a, $b4, $34, $ff, $9f, $10, $00, $b2, $38 ; $F54D
.byte $56, $36, $56, $34, $56, $2e, $56, $34, $5a, $2a, $5a, $34, $5a, $2a, $5a, $38 ; $F55D
.byte $56, $2e, $56, $38, $56, $2e, $56, $c2, $b8, $2a, $2a, $2a, $bb, $02, $ff, $b2 ; $F56D
.byte $42, $00, $b2, $01, $01, $01, $c7, $b2, $04, $b7, $04, $b0, $04, $b2, $07, $b7 ; $F57D
.byte $04, $b0, $04, $ff, $b4, $04, $c7, $b2, $04, $b7, $04, $b0, $04, $b2, $07, $b7 ; $F58D
.byte $04, $b0, $04, $ff, $b4, $04, $c6, $b7, $04, $b0, $04, $b2, $07, $b7, $04, $b0 ; $F59D
.byte $04, $b2, $07, $ff, $c2, $b9, $04, $04, $04, $ba, $01, $b9, $07, $04, $04, $ba ; $F5AD
.byte $01, $ff, $b2, $07, $00, $f8, $f5, $6a, $f6, $86, $f6, $86, $f6, $f2, $f6, $ff ; $F5BD
.byte $ff, $c2, $f5, $f2, $f5, $67, $f6, $ac, $f6, $ac, $f6, $95, $f7, $ff, $ff, $d0 ; $F5CD
.byte $f5, $06, $f6, $78, $f6, $d2, $f6, $d2, $f6, $33, $f8, $ff, $ff, $de, $f5, $14 ; $F5DD
.byte $f6, $ff, $ff, $ec, $f5, $9f, $10, $31, $b4, $02, $00, $9f, $10, $31, $c2, $b1 ; $F5ED
.byte $3c, $b0, $3c, $3c, $b1, $32, $32, $ff, $00, $9f, $00, $00, $c2, $b1, $3c, $b0 ; $F5FD
.byte $3c, $3c, $b1, $32, $32, $ff, $00, $c4, $b1, $04, $b0, $04, $04, $b1, $04, $04 ; $F60D
.byte $ff, $cf, $b1, $04, $b0, $04, $04, $b1, $04, $04, $ff, $b1, $04, $b0, $04, $04 ; $F61D
.byte $b1, $07, $01, $cc, $b1, $04, $b0, $04, $04, $b1, $04, $04, $ff, $c4, $b1, $04 ; $F62D
.byte $b0, $04, $04, $b1, $04, $04, $ff, $c2, $b1, $04, $b0, $04, $04, $b1, $04, $04 ; $F63D
.byte $01, $b0, $04, $04, $b1, $04, $04, $ff, $c3, $b1, $04, $b0, $04, $04, $b1, $04 ; $F64D
.byte $04, $ff, $b1, $04, $b0, $04, $04, $b2, $07, $00, $b4, $02, $00, $9f, $12, $31 ; $F65D
.byte $c2, $b1, $3c, $b0, $3c, $3c, $b1, $32, $32, $ff, $00, $9f, $00, $00, $c2, $b1 ; $F66D
.byte $3c, $b0, $3c, $3c, $b1, $32, $32, $ff, $00, $9f, $11, $31, $b1, $3c, $4a, $54 ; $F67D
.byte $52, $54, $b0, $4a, $4a, $b1, $4c, $46, $4a, $b0, $42, $42, $b1, $46, $40, $42 ; $F68D
.byte $b0, $3c, $3c, $b1, $40, $3a, $3c, $32, $34, $3a, $3c, $32, $34, $40, $00, $9f ; $F69D
.byte $10, $31, $b1, $32, $42, $42, $46, $42, $b0, $40, $42, $b1, $46, $40, $42, $b0 ; $F6AD
.byte $3a, $3c, $b1, $40, $3a, $3c, $b0, $30, $32, $b1, $3a, $32, $32, $2a, $2e, $2e ; $F6BD
.byte $32, $2a, $2e, $3a, $00, $9f, $00, $00, $c2, $b1, $3c, $b0, $3c, $3c, $b1, $32 ; $F6CD
.byte $32, $ff, $c2, $3c, $b0, $3c, $3c, $b1, $32, $32, $ff, $c2, $3c, $b0, $3c, $3c ; $F6DD
.byte $b1, $3a, $32, $ff, $00, $9f, $11, $31, $b1, $3c, $02, $b3, $02, $b1, $40, $3a ; $F6ED
.byte $3c, $02, $b3, $02, $b2, $40, $9f, $10, $31, $c2, $b1, $42, $b0, $42, $42, $b1 ; $F6FD
.byte $46, $40, $ff, $b1, $42, $02, $b3, $02, $b2, $46, $9f, $11, $31, $c2, $b1, $4a ; $F70D
.byte $b0, $4a, $4a, $b1, $4c, $46, $ff, $4a, $02, $b3, $02, $b2, $4e, $9f, $10, $31 ; $F71D
.byte $b1, $50, $b0, $50, $50, $b1, $50, $50, $54, $50, $50, $4e, $50, $b0, $50, $50 ; $F72D
.byte $b1, $50, $50, $54, $50, $50, $4e, $9f, $11, $31, $b1, $50, $b0, $50, $50, $b1 ; $F73D
.byte $50, $50, $4e, $b0, $4e, $4e, $b1, $4e, $4e, $4c, $b0, $4c, $4c, $b1, $4c, $46 ; $F74D
.byte $40, $42, $46, $38, $9f, $10, $31, $b1, $46, $9f, $11, $31, $b0, $42, $42, $b1 ; $F75D
.byte $38, $b2, $42, $b0, $38, $3c, $b1, $38, $32, $b0, $46, $02, $b0, $42, $42, $b1 ; $F76D
.byte $38, $b2, $42, $b0, $38, $3c, $b1, $38, $30, $9f, $10, $31, $b1, $38, $02, $b6 ; $F77D
.byte $02, $02, $9f, $13, $31, $b2, $3a, $00, $9f, $10, $31, $b1, $32, $02, $b3, $02 ; $F78D
.byte $b1, $32, $32, $32, $02, $b3, $02, $b2, $38, $9f, $11, $31, $b4, $02, $b6, $02 ; $F79D
.byte $b2, $40, $c2, $b1, $42, $b0, $42, $42, $b1, $46, $40, $ff, $b1, $38, $02, $b3 ; $F7AD
.byte $02, $9f, $13, $31, $b2, $3c, $9f, $10, $31, $b1, $40, $b0, $42, $46, $b1, $40 ; $F7BD
.byte $46, $4a, $4a, $4a, $3c, $40, $b0, $42, $46, $b1, $40, $46, $48, $48, $48, $3c ; $F7CD
.byte $40, $b0, $42, $46, $b1, $40, $46, $9f, $11, $31, $3c, $b0, $40, $42, $b1, $3c ; $F7DD
.byte $42, $9f, $12, $31, $3c, $b0, $40, $42, $b1, $40, $40, $2e, $3c, $40, $28, $9f ; $F7ED
.byte $13, $31, $b1, $32, $9f, $10, $31, $b0, $32, $32, $b1, $32, $b2, $32, $b0, $32 ; $F7FD
.byte $36, $b1, $32, $2a, $9f, $11, $31, $b0, $30, $02, $30, $30, $b1, $30, $b2, $30 ; $F80D
.byte $b0, $30, $34, $b1, $30, $2a, $9f, $13, $31, $b1, $28, $02, $b6, $02, $02, $9f ; $F81D
.byte $13, $31, $b2, $2e, $00, $00, $9f, $00, $00, $b1, $3c, $b0, $3c, $3c, $b1, $34 ; $F82D
.byte $2e, $3c, $b0, $3c, $3c, $b1, $3a, $32, $3c, $b0, $3c, $3c, $b1, $34, $2e, $3c ; $F83D
.byte $b0, $3c, $3c, $b1, $2e, $20, $c7, $2a, $b0, $42, $2a, $b1, $20, $38, $ff, $2a ; $F84D
.byte $b0, $42, $2a, $b1, $2e, $46, $c2, $20, $b0, $38, $20, $b1, $20, $38, $2a, $b0 ; $F85D
.byte $42, $2a, $b1, $2a, $42, $ff, $ff, $c4, $20, $b0, $38, $20, $b1, $20, $38, $ff ; $F86D
.byte $c4, $24, $b0, $3c, $ba, $24, $02, $b1, $24, $3c, $ff, $c3, $b1, $20, $ba, $38 ; $F87D
.byte $02, $20, $02, $b1, $20, $38, $ff, $20, $b0, $38, $20, $9f, $a0, $00, $b2, $40 ; $F88D
.byte $00, $f6, $f8, $6d, $f9, $f6, $f8, $b7, $f9, $ff, $ff, $9e, $f8, $ce, $f8, $47 ; $F89D
.byte $f9, $ce, $f8, $91, $f9, $ff, $ff, $aa, $f8, $0b, $f9, $7f, $f9, $0b, $f9, $d2 ; $F8AD
.byte $f9, $ff, $ff, $b6, $f8, $20, $f9, $20, $f9, $20, $f9, $30, $f9, $ff, $ff, $c2 ; $F8BD
.byte $f8, $9f, $01, $b1, $b1, $56, $b0, $56, $56, $56, $4c, $48, $4c, $b1, $56, $b0 ; $F8CD
.byte $56, $56, $56, $5a, $5e, $5a, $b1, $56, $b0, $56, $56, $5a, $56, $54, $56, $b0 ; $F8DD
.byte $5a, $5e, $5a, $5e, $5a, $02, $58, $5a, $00, $9f, $02, $b1, $b1, $02, $46, $02 ; $F8ED
.byte $42, $02, $46, $02, $48, $02, $46, $02, $46, $02, $42, $02, $42, $00, $9f, $00 ; $F8FD
.byte $00, $b1, $56, $56, $4c, $54, $56, $56, $4c, $5a, $56, $56, $54, $56, $50, $56 ; $F90D
.byte $4c, $54, $00, $c6, $b0, $04, $04, $0a, $04, $ff, $b1, $04, $0a, $b0, $04, $04 ; $F91D
.byte $b1, $0a, $00, $c4, $b0, $04, $04, $0a, $04, $ff, $b1, $01, $b0, $0a, $0a, $b1 ; $F92D
.byte $0a, $b0, $0a, $0a, $b2, $0a, $b1, $0a, $04, $00, $b1, $60, $b0, $60, $60, $60 ; $F93D
.byte $56, $52, $56, $b1, $60, $b0, $60, $60, $60, $64, $68, $64, $b1, $60, $b0, $60 ; $F94D
.byte $5e, $b1, $5a, $b0, $5a, $56, $b0, $54, $56, $54, $56, $54, $02, $50, $54, $00 ; $F95D
.byte $b1, $02, $48, $02, $4c, $02, $48, $02, $4c, $02, $48, $02, $48, $02, $48, $02 ; $F96D
.byte $48, $00, $b1, $48, $56, $56, $56, $48, $56, $56, $56, $48, $56, $54, $5a, $46 ; $F97D
.byte $54, $4c, $5a, $00, $9f, $01, $b1, $b1, $64, $b0, $64, $64, $64, $60, $5c, $60 ; $F98D
.byte $b1, $64, $b0, $64, $64, $64, $60, $5c, $60, $b0, $64, $02, $4c, $50, $b1, $54 ; $F99D
.byte $b0, $4c, $5e, $b2, $5a, $b0, $56, $b7, $6e, $00, $9f, $01, $b1, $b1, $02, $4c ; $F9AD
.byte $02, $4c, $02, $4c, $02, $4c, $02, $b0, $48, $48, $b1, $48, $b0, $48, $48, $b2 ; $F9BD
.byte $48, $b1, $46, $02, $00, $b1, $44, $5c, $52, $5c, $44, $5c, $52, $5c, $b0, $4c ; $F9CD
.byte $02, $54, $54, $b1, $54, $b0, $54, $54, $b2, $54, $b1, $56, $02, $00, $00, $00 ; $F9DD
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $F9ED
.byte $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $F9FD
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FA0D
.byte $ff, $ff, $ff, $00, $00, $00, $00, $00, $20, $00, $00, $00, $00, $00, $00, $00 ; $FA1D
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FA2D
.byte $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FA3D
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FA4D
.byte $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FA5D
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FA6D
.byte $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FA7D
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FA8D
.byte $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $10, $00, $00, $00, $00, $00, $00 ; $FA9D
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FAAD
.byte $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FABD
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FACD
.byte $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FADD
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FAED
.byte $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FAFD
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FB0D
.byte $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $40, $00, $00 ; $FB1D
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FB2D
.byte $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FB3D
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FB4D
.byte $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FB5D
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FB6D
.byte $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FB7D
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FB8D
.byte $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FB9D
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FBAD
.byte $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FBBD
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FBCD
.byte $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FBDD
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FBED
.byte $00, $81, $08, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $df, $ff, $ff, $ff ; $FBFD
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $bd, $ff, $ff, $ff ; $FC0D
.byte $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FC1D
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FC2D
.byte $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FC3D
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fe, $ff, $ff, $7f, $ff, $ff, $f9, $ff ; $FC4D
.byte $ff, $ef, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FC5D
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FC6D
.byte $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FC7D
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $7f, $ff, $ff, $df, $ff ; $FC8D
.byte $ff, $bf, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FC9D
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FCAD
.byte $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FCBD
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FCCD
.byte $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FCDD
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FCED
.byte $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FCFD
.byte $ff, $fb, $ff, $ff, $ff, $fd, $ff, $ff, $ff, $fb, $ff, $ff, $ff, $ff, $ff, $ff ; $FD0D
.byte $7d, $7f, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FD1D
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FD2D
.byte $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $fb, $ff, $ff, $ff, $ff, $ff, $ff ; $FD3D
.byte $ff, $ff, $ff, $fb, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FD4D
.byte $fd, $af, $fb, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FD5D
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FD6D
.byte $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ef, $ff, $ff ; $FD7D
.byte $ff, $7f, $fe, $f7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fe ; $FD8D
.byte $fe, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FD9D
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FDAD
.byte $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FDBD
.byte $ff, $7f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FDCD
.byte $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FDDD
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FDED
.byte $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f7, $ff, $ff ; $FDFD
.byte $ff, $f7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fe, $ff, $fb, $ff, $ff, $ff, $ff ; $FE0D
.byte $ff, $ff, $fa, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FE1D
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FE2D
.byte $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FE3D
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FE4D
.byte $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FE5D
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FE6D
.byte $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fd, $fe ; $FE7D
.byte $f7, $ff, $ff, $bf, $ff, $df, $ff, $ff, $bf, $ff, $ff, $ff, $fd, $df, $ff, $bf ; $FE8D
.byte $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FE9D
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FEAD
.byte $00, $00, $00, $ff, $bf, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ef, $ff, $ff ; $FEBD
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FECD
.byte $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FEDD
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FEED
.byte $00, $00, $00              ; $FEFD

Reset:
  cld                            ; $FF00  D8
  sei                            ; $FF01  78
  ldx #$00                       ; $FF02  A2 00
  stx PPU_CTRL                   ; $FF04  8E 00 20
  stx PPU_MASK                   ; $FF07  8E 01 20

_label_ff0a:
  lda PPU_STATUS                 ; $FF0A  AD 02 20
  bpl _label_ff0a                ; $FF0D  10 FB

_label_ff0f:
  lda PPU_STATUS                 ; $FF0F  AD 02 20
  bpl _label_ff0f                ; $FF12  10 FB
  dex                            ; $FF14  CA
  txs                            ; $FF15  9A
  inc a:Reset                    ; $FF16  EE 00 FF
  lda #$10                       ; $FF19  A9 10
  jsr _func_aca3                 ; $FF1B  20 A3 AC
  lda #$00                       ; $FF1E  A9 00
  jsr _func_acb7                 ; $FF20  20 B7 AC
  lda #$00                       ; $FF23  A9 00
  jsr _func_accb                 ; $FF25  20 CB AC
  lda #$00                       ; $FF28  A9 00
  jsr _func_acdf                 ; $FF2A  20 DF AC
  jmp _data_8000                 ; $FF2D  4C 00 80

.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FF30
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FF40
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $bf, $ff, $ff, $ff, $ef, $ff ; $FF50
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FF60
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FF70
.byte $ff, $ff, $ff, $ff, $ef, $7f, $ff, $ff, $ff, $ff, $7d, $ff, $ff, $ff, $ff, $ff ; $FF80
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff ; $FF90
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FFA0
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FFB0
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fb, $ff, $ff, $ff, $ff, $bf, $ff ; $FFC0
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $bf, $ff, $ff, $7f, $ff, $ff, $ff, $ff ; $FFD0
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00 ; $FFE0

_data_fff0:
.byte $00                        ; $FFF0

.segment "TILES"

.byte $38, $4c, $c6, $c6, $c6, $64, $38, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $18, $38, $18, $18, $18, $18, $7e, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $7c, $c6, $0e, $3c, $78, $e0, $fe, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $7e, $0c, $18, $3c, $06, $c6, $7c, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $1c, $3c, $6c, $cc, $fe, $0c, $0c, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $fc, $c0, $fc, $06, $06, $c6, $7c, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $3c, $60, $c0, $fc, $c6, $c6, $7c, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $fe, $c6, $0c, $18, $30, $30, $30, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $7c, $c6, $c6, $7c, $c6, $c6, $7c, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $7c, $c6, $c6, $7e, $06, $0c, $78, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $38, $6c, $c6, $c6, $fe, $c6, $c6, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $fc, $c6, $c6, $fc, $c6, $c6, $fc, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $3c, $66, $c0, $c0, $c0, $66, $3c, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $f8, $cc, $c6, $c6, $c6, $cc, $f8, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $fe, $c0, $c0, $fc, $c0, $c0, $fe, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $fe, $c0, $c0, $fc, $c0, $c0, $c0, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $3e, $60, $c0, $ce, $c6, $66, $3e, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $c6, $c6, $c6, $fe, $c6, $c6, $c6, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $7e, $18, $18, $18, $18, $18, $7e, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $1e, $06, $06, $06, $c6, $c6, $7c, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $c6, $cc, $d8, $f0, $f8, $dc, $ce, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $60, $60, $60, $60, $60, $60, $7e, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $c6, $ee, $fe, $fe, $d6, $c6, $c6, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $c6, $e6, $f6, $fe, $de, $ce, $c6, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $7c, $c6, $c6, $c6, $c6, $c6, $7c, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $fc, $c6, $c6, $c6, $fc, $c0, $c0, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $7c, $c6, $c6, $c6, $de, $cc, $7a, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $fc, $c6, $c6, $ce, $f8, $dc, $ce, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $78, $cc, $c0, $7c, $06, $c6, $7c, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $7e, $18, $18, $18, $18, $18, $18, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $c6, $c6, $c6, $c6, $c6, $c6, $7c, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $c6, $c6, $c6, $ee, $7c, $38, $10, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $c6, $c6, $d6, $fe, $fe, $ee, $c6, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $c6, $ee, $7c, $38, $7c, $ee, $c6, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $66, $66, $66, $3c, $18, $18, $18, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $fe, $0e, $1c, $38, $70, $e0, $fe, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $3c, $3c, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $30, $30, $10, $20, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $18, $18, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $c0, $f0, $fc, $fe, $fc, $f0, $c0, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $1d, $1d, $18, $00, $18, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $55, $55, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $5c, $5c, $0c, $00, $0c, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $18, $00, $18, $00, $18, $00, $18, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $0c, $00, $0c, $00, $0c, $00, $0c, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $18, $00, $18, $1d, $1d, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $55, $55, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $0c, $00, $0c, $5c, $5c, $00, $00, $00
.byte $c0, $80, $00, $10, $08, $04, $00, $00, $c0, $bf, $60, $5f, $5f, $5c, $58, $58
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $00, $ff, $ff, $00, $00, $00
.byte $03, $01, $00, $08, $10, $20, $00, $00, $03, $fd, $06, $fa, $fa, $3a, $1a, $1a
.byte $00, $00, $00, $00, $00, $00, $00, $00, $58, $58, $58, $58, $58, $58, $58, $58
.byte $00, $00, $00, $00, $00, $00, $00, $00, $1a, $1a, $1a, $1a, $1a, $1a, $1a, $1a
.byte $00, $00, $04, $08, $10, $00, $80, $c0, $58, $58, $5c, $5f, $5f, $60, $bf, $c0
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $00, $ff, $00
.byte $00, $00, $20, $10, $08, $00, $01, $03, $1a, $1a, $3a, $fa, $fa, $06, $fd, $03
.byte $00, $00, $18, $00, $20, $20, $00, $00, $00, $7e, $66, $7e, $5e, $58, $78, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $00, $00, $00, $00
.byte $00, $00, $30, $00, $04, $04, $00, $00, $00, $7e, $4e, $7e, $7a, $1a, $1e, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $30, $30, $30, $30, $30, $30, $30, $30
.byte $00, $00, $00, $00, $00, $00, $00, $00, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c
.byte $00, $00, $20, $20, $00, $0c, $00, $00, $00, $78, $58, $5e, $7e, $72, $7e, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $00, $00
.byte $00, $00, $04, $04, $00, $30, $00, $00, $00, $1e, $1a, $7a, $7e, $4e, $7e, $00
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fe, $7e, $7f, $7f, $7f, $7f, $7f, $7f, $7e
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
.byte $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $7e
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fe, $00, $ff, $ff, $ff, $ff, $ff, $ff, $fe
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $17, $3b, $1d, $2c, $30, $38
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $e8, $dc, $b8, $34, $0c, $1c
.byte $00, $00, $00, $00, $00, $00, $00, $00, $38, $38, $38, $38, $38, $38, $38, $38
.byte $00, $00, $00, $00, $00, $00, $00, $00, $1c, $1c, $1c, $1c, $1c, $1c, $1c, $1c
.byte $00, $00, $00, $00, $00, $00, $00, $00, $38, $30, $2c, $1d, $3b, $17, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $1c, $0c, $34, $b8, $dc, $e8, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $18, $00, $18, $02, $1a, $00, $18, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $18, $00, $aa, $aa, $00, $18, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $0c, $00, $0c, $a0, $ac, $00, $0c, $00
.byte $08, $18, $10, $30, $20, $60, $40, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $55, $55, $00, $18, $00, $18
.byte $00, $00, $00, $00, $00, $00, $00, $00, $18, $00, $00, $55, $55, $00, $00, $00
.byte $0c, $1c, $1c, $18, $00, $60, $60, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $07, $07, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $e0, $e0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $40, $40, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $01, $41, $00, $00, $00, $00, $00, $00, $01, $41
.byte $e0, $40, $00, $40, $a0, $a0, $50, $50, $c0, $40, $00, $40, $a0, $a0, $50, $50
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $83, $c3, $c1, $e0, $e0, $f0, $f8, $f8
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $7f, $3f, $3f
.byte $30, $60, $40, $40, $40, $60, $30, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $30, $18, $08, $08, $08, $18, $30, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $7f, $7f, $7f, $7f, $7f, $7f, $7f
.byte $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $00, $fe, $fe, $fe, $fe, $fe, $fe, $fe
.byte $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $00, $7e, $7e, $7e, $7e, $7e, $7e, $7e
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01
.byte $00, $40, $00, $40, $40, $00, $80, $80, $00, $00, $00, $40, $40, $00, $60, $30
.byte $00, $00, $00, $00, $00, $40, $40, $40, $00, $00, $00, $00, $00, $40, $41, $46
.byte $02, $06, $00, $06, $4a, $ed, $a1, $a0, $42, $00, $40, $06, $4a, $45, $b1, $ac
.byte $e8, $ec, $00, $ec, $a8, $d6, $f6, $d5, $e8, $00, $00, $ec, $a8, $d6, $74, $d5
.byte $00, $00, $00, $00, $00, $00, $00, $40, $00, $00, $00, $08, $00, $08, $00, $48
.byte $00, $00, $00, $04, $00, $26, $22, $99, $02, $00, $02, $03, $1a, $10, $4c, $44
.byte $00, $00, $00, $00, $40, $20, $90, $88, $00, $00, $00, $00, $80, $c0, $40, $50
.byte $00, $00, $00, $00, $00, $00, $00, $00, $fc, $fe, $fe, $ff, $ff, $ff, $ff, $ff
.byte $00, $00, $00, $00, $00, $00, $00, $00, $1f, $0f, $0f, $07, $83, $83, $c1, $e0
.byte $6c, $6c, $24, $48, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $30, $30, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $00
.byte $fe, $fe, $fe, $fe, $fe, $fe, $fe, $00, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $00
.byte $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $7e, $7e, $7e, $7e, $7e, $7e, $7e, $7e
.byte $fe, $fe, $fe, $fe, $fe, $fe, $fe, $00, $02, $fe, $fe, $fe, $fe, $fe, $fe, $00
.byte $00, $01, $03, $07, $0e, $0c, $18, $18, $02, $0c, $18, $30, $20, $61, $43, $43
.byte $88, $88, $08, $08, $18, $18, $18, $33, $20, $22, $63, $63, $c3, $c2, $c0, $80
.byte $41, $07, $06, $0e, $0c, $0c, $0c, $04, $59, $37, $26, $6e, $6d, $6d, $6d, $64
.byte $10, $1c, $0e, $0e, $06, $06, $06, $04, $53, $5d, $ee, $ee, $f6, $f6, $f6, $e4
.byte $33, $00, $00, $00, $1d, $19, $16, $0d, $32, $80, $9e, $c0, $c1, $c0, $c2, $cd
.byte $40, $40, $e1, $e1, $51, $50, $dc, $b6, $48, $41, $e0, $e0, $50, $50, $4c, $b6
.byte $9c, $8a, $27, $63, $28, $98, $4c, $23, $41, $31, $90, $0c, $46, $45, $11, $18
.byte $c8, $24, $34, $10, $88, $c8, $48, $20, $10, $90, $80, $64, $64, $24, $90, $90
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $40, $40, $60, $60, $70, $78, $78
.byte $00, $00, $00, $00, $00, $00, $00, $00, $03, $43, $41, $60, $60, $70, $78, $78
.byte $00, $00, $00, $00, $00, $00, $00, $00, $1e, $1e, $0e, $06, $06, $82, $c2, $c0
.byte $00, $00, $00, $00, $00, $00, $00, $00, $fc, $fe, $fe, $fe, $fe, $fe, $fe, $fe
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $7f, $7f, $7f, $7f, $7f, $7f, $00
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $00
.byte $fe, $fe, $fe, $fe, $fe, $fe, $fe, $00, $7e, $7e, $7e, $7e, $7e, $7e, $7e, $00
.byte $fe, $fe, $fe, $fe, $fe, $fe, $fe, $00, $00, $fe, $fe, $fe, $fe, $fe, $fe, $00
.byte $10, $10, $00, $01, $00, $07, $07, $0f, $47, $26, $0e, $04, $00, $06, $06, $0d
.byte $6c, $dc, $d8, $90, $10, $c1, $e3, $c0, $01, $01, $03, $07, $06, $cc, $e0, $c0
.byte $06, $03, $60, $66, $c2, $84, $00, $00, $b6, $8b, $00, $08, $06, $32, $66, $06
.byte $0c, $18, $00, $6e, $64, $28, $00, $00, $ed, $5a, $00, $e8, $cc, $e5, $ed, $ec
.byte $0b, $5b, $d6, $d6, $15, $15, $0d, $03, $89, $09, $16, $16, $11, $d1, $ed, $02
.byte $b6, $75, $ed, $dd, $db, $bb, $b6, $68, $92, $51, $ed, $54, $52, $bb, $92, $68
.byte $09, $00, $0f, $0f, $6f, $40, $cf, $95, $02, $00, $0b, $0b, $0b, $00, $0b, $11
.byte $00, $00, $c0, $c0, $c0, $00, $c0, $60, $40, $00, $40, $40, $40, $00, $40, $60
.byte $00, $00, $00, $00, $00, $00, $00, $00, $7c, $7e, $7e, $7f, $7f, $7f, $7f, $7f
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $c0, $e0
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $7f, $3f, $3f, $1f, $0f, $0f, $07
.byte $00, $00, $00, $00, $00, $00, $00, $00, $fe, $fe, $fe, $fe, $fc, $fc, $fc, $fc
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fe, $00, $7f, $7f, $7f, $7f, $7f, $7f, $7e
.byte $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $00, $fe, $fe, $fe, $fe, $fe, $fe, $7e
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $40, $40, $e0, $e0, $40, $a0, $00, $00, $40, $40, $e0, $e0, $40, $00
.byte $00, $0f, $1f, $1e, $1d, $1d, $1d, $1d, $00, $0d, $04, $04, $05, $05, $05, $05
.byte $00, $b8, $54, $d6, $b5, $ad, $6d, $5b, $13, $ab, $44, $c4, $84, $8c, $0c, $18
.byte $00, $0d, $1f, $5f, $1f, $1f, $5f, $1f, $ed, $e0, $c0, $16, $16, $56, $16, $16
.byte $00, $f6, $ff, $ff, $ff, $ff, $ff, $ff, $f6, $00, $00, $ed, $ed, $ed, $ed, $ed
.byte $f8, $78, $78, $7a, $7a, $70, $24, $2e, $00, $03, $00, $02, $02, $00, $04, $0e
.byte $00, $03, $03, $13, $4b, $e1, $11, $ba, $00, $f9, $f0, $10, $48, $e0, $10, $ba
.byte $80, $3f, $ab, $80, $bf, $9f, $df, $df, $00, $37, $23, $00, $37, $17, $17, $17
.byte $00, $f0, $50, $00, $c0, $a0, $30, $50, $00, $b0, $10, $00, $80, $80, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f
.byte $00, $00, $00, $00, $00, $00, $00, $00, $e0, $f0, $f8, $f8, $fc, $fe, $fe, $ff
.byte $00, $00, $00, $00, $00, $00, $00, $00, $83, $83, $c1, $e0, $e0, $f1, $ff, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $f8, $f8, $f0, $f0, $e0, $c0, $00, $00
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $7e, $7f, $7f, $7f, $7f, $7f, $7f, $00
.byte $fe, $fe, $fe, $fe, $fe, $fe, $fe, $00, $7e, $fe, $fe, $fe, $fe, $fe, $fe, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $e0, $f0, $f0, $f8, $f8, $f8, $fc, $fc
.byte $1c, $00, $00, $00, $01, $07, $1e, $81, $04, $00, $00, $3c, $79, $e1, $c2, $80
.byte $b6, $6c, $03, $40, $50, $5c, $ef, $f7, $30, $60, $03, $00, $01, $10, $08, $04
.byte $00, $3f, $92, $04, $3f, $12, $3f, $7f, $c0, $ad, $8d, $3b, $bf, $80, $3f, $00
.byte $00, $ff, $09, $04, $ff, $09, $ff, $ff, $00, $f6, $f6, $fb, $ff, $00, $ff, $00
.byte $01, $80, $00, $00, $80, $20, $80, $80, $01, $98, $1e, $2e, $b0, $1e, $bd, $7d
.byte $c0, $00, $00, $00, $00, $00, $00, $00, $c8, $01, $fb, $fb, $00, $fb, $fd, $fd
.byte $de, $00, $01, $01, $03, $00, $00, $17, $16, $00, $bc, $bc, $18, $a6, $3e, $e7
.byte $a8, $a8, $ac, $74, $76, $00, $01, $ff, $00, $00, $00, $00, $00, $02, $fb, $ff
.byte $00, $00, $00, $00, $00, $00, $00, $00, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $c0, $e0, $e0, $f0, $f8, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $3f
.byte $00, $00, $00, $00, $00, $00, $00, $00, $7f, $6b, $49, $49, $08, $08, $08, $08
.byte $00, $00, $00, $00, $00, $00, $00, $00, $41, $7f, $5d, $49, $41, $41, $41, $41
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $3f, $3f, $1f, $1f, $1f, $0f, $0f, $07
.byte $ce, $1f, $c0, $df, $df, $df, $df, $df, $cc, $00, $c0, $cd, $cd, $cd, $cd, $cd
.byte $01, $24, $48, $7f, $7f, $5c, $5c, $7f, $00, $1b, $37, $00, $77, $77, $77, $77
.byte $82, $04, $7f, $7f, $7f, $7f, $7f, $7f, $7d, $fb, $00, $7b, $7b, $7b, $7b, $7b
.byte $08, $04, $ff, $ff, $ff, $1f, $1f, $1f, $f7, $fb, $00, $fb, $fb, $fb, $bb, $bb
.byte $4f, $3f, $fd, $fa, $fa, $fa, $fa, $ff, $a0, $c0, $2d, $ea, $ea, $ea, $ea, $ef
.byte $ff, $ff, $f7, $eb, $eb, $eb, $eb, $ff, $00, $00, $b6, $aa, $aa, $aa, $aa, $be
.byte $e7, $ee, $ae, $ae, $a2, $e6, $cd, $81, $07, $ee, $ae, $ae, $a2, $e0, $c0, $81
.byte $77, $23, $03, $73, $03, $fb, $ff, $ff, $77, $23, $00, $03, $03, $03, $03, $fd
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $7f, $7f, $7f, $7f, $7f, $7f, $7f
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $1f, $0f, $07, $07, $03, $01, $01
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $fe, $fe, $fe, $fe, $fe, $fe, $fe
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $e0, $fc, $ff, $ff, $ff, $ff, $ff
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $c0, $c0, $e0
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $08, $18, $38
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $3f, $3f, $3f, $3f, $3f, $3f, $3f
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $fe, $fc, $fc, $f8, $f8, $f0, $f0
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $7f, $3f, $3f, $1f, $1f, $0f, $0f
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $fc, $fc, $fc, $fc, $fc, $fc, $fc
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $7f, $3f, $1f, $0f, $07, $03, $01
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $fe, $fe, $fe, $fe, $fe, $fe, $fe
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $07, $0f, $0f, $1f, $1f
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $8f, $07, $07, $83, $c1, $c1
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $06, $0e, $1e, $3e, $7e, $fe
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $7f, $7f, $3f, $1f, $1f, $0f, $07
.byte $00, $00, $00, $00, $00, $00, $00, $00, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
.byte $00, $00, $00, $00, $00, $00, $00, $00, $e0, $f0, $f0, $f0, $f8, $f8, $f8, $f8
.byte $00, $00, $00, $00, $00, $00, $00, $00, $78, $f8, $f8, $f8, $f8, $f8, $f8, $f8
.byte $00, $00, $00, $00, $00, $00, $00, $00, $3f, $3f, $3f, $3f, $3f, $3f, $3f, $3f
.byte $00, $00, $00, $00, $00, $00, $00, $00, $e0, $e0, $c0, $c0, $80, $80, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
.byte $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $03, $03, $01, $01, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $7f, $3f, $1f, $0f, $07, $03, $01
.byte $00, $00, $00, $00, $00, $00, $00, $00, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $01, $03, $07, $0f, $1f, $3f, $7f, $ff
.byte $00, $00, $00, $00, $00, $00, $00, $00, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe
.byte $00, $00, $00, $00, $00, $00, $00, $00, $07, $03, $01, $01, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $fe, $fe, $fe, $fe, $fe, $7e, $7e, $3e
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
.byte $00, $00, $00, $00, $00, $00, $00, $00, $f8, $f8, $f8, $f8, $f0, $f0, $f0, $e0
.byte $00, $00, $00, $00, $00, $00, $00, $00, $f8, $f8, $f8, $f8, $f8, $f8, $f8, $78
.byte $00, $00, $00, $00, $00, $00, $00, $00, $3e, $3e, $3c, $3c, $38, $38, $10, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $03, $07, $0f, $1f, $3f
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $7c, $7c, $3c, $3c, $1c, $1c, $08, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $3f, $3f, $3f, $3f, $7f, $7f, $7f, $7f
.byte $00, $00, $00, $00, $00, $00, $00, $00, $e0, $f0, $f0, $f8, $fc, $fc, $fe, $ff
.byte $00, $00, $00, $00, $00, $00, $00, $00, $fe, $7e, $3e, $1e, $0e, $06, $02, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $01, $03, $07, $0f, $1f, $3f, $7f, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $1e, $1e, $0e, $06, $06, $02, $02, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $fc, $e0, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $e0, $c0, $c0, $80, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $38, $18, $08, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $3f, $1f, $0f, $07, $03, $01, $00, $00
.byte $3c, $42, $99, $a1, $a1, $99, $42, $3c, $3c, $42, $99, $a1, $a1, $99, $42, $3c
.byte $c6, $e6, $e6, $d6, $d6, $ce, $ce, $c6, $00, $00, $00, $00, $00, $00, $00, $00
.byte $c0, $c0, $00, $db, $dd, $d9, $d9, $d9, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $30, $78, $33, $b6, $b7, $b6, $b3, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $cd, $6e, $ec, $0c, $ec, $00, $00, $00, $00, $00, $00, $00, $00
.byte $01, $01, $01, $8f, $d9, $d9, $d9, $cf, $00, $00, $00, $00, $00, $00, $00, $00
.byte $80, $80, $80, $9e, $b3, $b3, $b3, $9e, $00, $00, $00, $00, $00, $00, $00, $00
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $38, $4c, $c6, $c6, $c6, $64, $38, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $18, $38, $18, $18, $18, $18, $7e, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $7c, $c6, $0e, $3c, $78, $e0, $fe, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $7e, $0c, $18, $3c, $06, $c6, $7c, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $1c, $3c, $6c, $cc, $fe, $0c, $0c, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $fc, $c0, $fc, $06, $06, $c6, $7c, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $3c, $60, $c0, $fc, $c6, $c6, $7c, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $fe, $c6, $0c, $18, $30, $30, $30, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $7c, $c6, $c6, $7c, $c6, $c6, $7c, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $7c, $c6, $c6, $7e, $06, $0c, $78, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $78, $cc, $c0, $7c, $06, $c6, $7c, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $3c, $66, $c0, $c0, $c0, $66, $3c, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $7c, $c6, $c6, $c6, $c6, $c6, $7c, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $fc, $c6, $c6, $ce, $f8, $dc, $ce, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $fe, $c0, $c0, $fc, $c0, $c0, $fe, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $60, $60, $60, $60, $60, $60, $7e, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $c6, $c6, $c6, $ee, $7c, $38, $10, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $c6, $c6, $c6, $fe, $c6, $c6, $c6, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $7e, $18, $18, $18, $18, $18, $7e, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $3e, $60, $c0, $ce, $c6, $66, $3e, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $7e, $18, $18, $18, $18, $18, $18, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $38, $6c, $c6, $c6, $fe, $c6, $c6, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $3c, $3c, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $3f, $40, $80, $9f, $90, $90, $90, $90, $00, $3f, $7f, $7f, $70, $70, $70, $70
.byte $ff, $00, $00, $ff, $00, $00, $00, $00, $00, $ff, $ff, $ff, $00, $00, $00, $00
.byte $fc, $02, $01, $f9, $09, $09, $09, $09, $00, $fc, $fe, $fe, $0e, $0e, $0e, $0e
.byte $90, $90, $90, $90, $90, $90, $90, $90, $70, $70, $70, $70, $70, $70, $70, $70
.byte $09, $09, $09, $09, $09, $09, $09, $09, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
.byte $90, $90, $90, $90, $9f, $80, $40, $3f, $70, $70, $70, $70, $7f, $7f, $3f, $00
.byte $00, $00, $00, $00, $ff, $00, $00, $ff, $00, $00, $00, $00, $ff, $ff, $ff, $00
.byte $09, $09, $09, $09, $f9, $01, $02, $fc, $0e, $0e, $0e, $0e, $fe, $fe, $fc, $00
.byte $0b, $09, $10, $10, $10, $1f, $20, $3f, $01, $00, $00, $00, $00, $00, $1f, $00
.byte $a0, $20, $10, $10, $10, $f0, $08, $f8, $00, $00, $00, $00, $00, $00, $f0, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $01, $3a, $44, $e7, $f7, $ff, $ff, $7f, $00, $01, $3b, $58, $69, $55, $74, $07
.byte $ff, $00, $7c, $83, $ff, $ff, $ff, $ff, $00, $ff, $83, $7c, $83, $d7, $d6, $ff
.byte $00, $80, $5e, $e7, $cf, $ef, $ff, $ee, $00, $00, $80, $1a, $36, $5a, $4e, $c0
.byte $30, $79, $fa, $7c, $7f, $4f, $4f, $4f, $00, $30, $79, $33, $00, $35, $34, $37
.byte $18, $3c, $fe, $7c, $dc, $e4, $e4, $e4, $00, $18, $3c, $98, $00, $58, $58, $d8
.byte $00, $00, $00, $00, $02, $01, $04, $02, $00, $00, $00, $00, $06, $07, $03, $01
.byte $07, $0f, $17, $23, $29, $2a, $1a, $0f, $02, $02, $0b, $1d, $16, $15, $05, $00
.byte $00, $00, $00, $00, $00, $00, $10, $20, $00, $00, $00, $00, $30, $78, $e8, $c0
.byte $c0, $e0, $d0, $b0, $b1, $ae, $c2, $84, $80, $80, $80, $00, $00, $11, $3d, $7b
.byte $0b, $05, $04, $04, $02, $01, $02, $03, $05, $00, $00, $00, $00, $00, $01, $00
.byte $80, $0f, $30, $08, $3c, $e4, $08, $f0, $00, $00, $00, $00, $00, $18, $f0, $00
.byte $f4, $15, $09, $06, $00, $00, $00, $00, $03, $02, $06, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $01, $02, $04, $03, $07, $0f, $0f, $0f, $00, $01, $03, $00, $01, $05, $04, $07
.byte $ff, $00, $7c, $83, $ff, $ff, $ff, $ff, $00, $ff, $83, $7c, $83, $d7, $d6, $ff
.byte $00, $80, $40, $80, $c0, $e0, $e0, $e0, $00, $00, $80, $00, $00, $40, $40, $c0
.byte $1f, $27, $47, $c3, $65, $3c, $8a, $79, $02, $03, $02, $01, $80, $c0, $70, $00
.byte $ff, $ff, $01, $ff, $ff, $fe, $01, $ff, $38, $01, $fe, $01, $fe, $00, $00, $00
.byte $c0, $f0, $ca, $85, $05, $cd, $b2, $0c, $80, $80, $80, $02, $02, $02, $0c, $00
.byte $27, $27, $17, $13, $09, $09, $09, $0f, $1a, $1a, $0b, $0d, $06, $06, $06, $00
.byte $c8, $c8, $d0, $90, $20, $20, $20, $e0, $b0, $b0, $a0, $60, $c0, $c0, $c0, $00
.byte $e0, $e0, $e0, $f0, $f0, $e0, $e0, $e0, $40, $40, $40, $e0, $e0, $40, $40, $00
.byte $00, $00, $00, $1c, $1c, $1c, $1c, $1c, $00, $00, $00, $00, $08, $00, $08, $08
.byte $00, $00, $00, $08, $1c, $14, $1c, $14, $00, $00, $00, $00, $08, $08, $00, $08
.byte $0f, $0f, $1f, $1f, $1b, $1f, $1f, $1f, $06, $02, $0d, $01, $0d, $01, $0d, $00
.byte $fe, $ff, $ff, $7d, $ff, $ff, $ff, $ff, $ec, $a8, $d6, $f6, $d4, $36, $d4, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $07, $07, $07, $0f, $11, $21, $39, $7f, $02, $02, $03, $01, $0e, $1e, $06, $38
.byte $ff, $ff, $ff, $ff, $ff, $ff, $c7, $ff, $fe, $38, $01, $ef, $38, $82, $ba, $00
.byte $c0, $c0, $c0, $e0, $10, $08, $38, $fc, $80, $80, $80, $00, $e0, $f0, $c0, $38
.byte $00, $01, $02, $02, $03, $07, $0f, $0f, $00, $00, $01, $01, $00, $03, $07, $07
.byte $00, $dc, $8a, $02, $fe, $ff, $ff, $ff, $00, $20, $74, $fc, $00, $fe, $ff, $ff
.byte $00, $00, $00, $00, $00, $00, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $0f, $30, $00, $00, $00, $00, $00, $00, $00, $0f
.byte $00, $00, $00, $00, $01, $06, $ee, $1e, $00, $00, $00, $00, $00, $01, $07, $e7
.byte $00, $18, $3c, $38, $3c, $3c, $38, $18, $00, $3c, $7c, $7e, $7e, $7e, $7e, $7e
.byte $00, $01, $01, $03, $07, $07, $09, $0f, $00, $00, $00, $01, $01, $02, $06, $00
.byte $e0, $f0, $f0, $f8, $f8, $fc, $12, $fe, $40, $a0, $a0, $50, $50, $e8, $ec, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $08, $14, $1c, $14, $dc, $f4, $00, $00, $00, $08, $00, $08, $00, $48
.byte $03, $02, $0f, $12, $37, $59, $5d, $9f, $00, $01, $02, $0d, $1b, $37, $2e, $6e
.byte $80, $80, $60, $b0, $98, $dc, $d6, $76, $00, $00, $80, $60, $70, $68, $ec, $ec
.byte $7d, $7c, $3c, $08, $08, $0f, $10, $1f, $3c, $38, $00, $00, $00, $00, $0f, $00
.byte $c7, $82, $00, $38, $28, $ef, $08, $ff, $82, $00, $00, $00, $00, $00, $e7, $00
.byte $7c, $7c, $78, $20, $20, $e0, $10, $f0, $78, $38, $00, $00, $00, $00, $e0, $00
.byte $1f, $1e, $1e, $3e, $7e, $7f, $78, $38, $0e, $0f, $0f, $1f, $3d, $38, $37, $17
.byte $ff, $53, $53, $03, $73, $07, $d8, $a8, $03, $af, $af, $ff, $fd, $f8, $27, $df
.byte $c0, $c0, $e0, $e0, $f0, $f0, $f0, $e0, $80, $80, $80, $c0, $e0, $e0, $60, $40
.byte $48, $fc, $f8, $fc, $ff, $7c, $38, $00, $3f, $7f, $7f, $7f, $74, $38, $00, $00
.byte $07, $0f, $0f, $0f, $df, $5f, $4f, $2f, $fb, $f6, $f7, $fb, $3c, $3e, $3e, $1e
.byte $10, $10, $00, $00, $00, $00, $00, $00, $7c, $3c, $38, $38, $10, $10, $00, $00
.byte $00, $00, $00, $01, $03, $03, $03, $03, $00, $00, $00, $00, $01, $00, $01, $00
.byte $00, $00, $00, $00, $80, $80, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00
.byte $08, $10, $18, $00, $00, $00, $00, $00, $18, $18, $3c, $3c, $38, $18, $18, $10
.byte $3f, $2f, $3f, $3f, $7f, $7e, $7b, $7f, $00, $1b, $0e, $1a, $0d, $39, $36, $2d
.byte $f4, $fe, $ff, $ff, $ff, $ff, $6f, $ff, $48, $40, $e6, $e2, $50, $50, $dc, $b6
.byte $e7, $b7, $f9, $9c, $5d, $77, $33, $1e, $5d, $5b, $37, $77, $2e, $2e, $1d, $05
.byte $37, $bf, $cd, $cd, $6e, $32, $b4, $c8, $da, $da, $ba, $76, $f4, $ec, $d8, $b0
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $0f, $1f, $1f, $3f, $3f
.byte $00, $00, $00, $20, $00, $00, $00, $00, $00, $00, $87, $ff, $ff, $ff, $ff, $ff
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $f0, $fc, $fc, $fe, $fe
.byte $12, $15, $0d, $02, $0f, $11, $21, $3f, $0d, $0a, $02, $01, $00, $0e, $1e, $00
.byte $fa, $ad, $ad, $22, $df, $8c, $8c, $ff, $8d, $52, $52, $dc, $20, $fb, $fb, $00
.byte $40, $40, $80, $00, $80, $40, $20, $e0, $80, $80, $00, $00, $00, $80, $c0, $00
.byte $00, $00, $00, $00, $0f, $d8, $e0, $e0, $00, $00, $00, $00, $00, $07, $df, $df
.byte $00, $00, $00, $00, $fc, $1e, $7f, $3f, $00, $00, $00, $00, $00, $fc, $fe, $fe
.byte $00, $00, $00, $00, $0f, $0f, $0f, $1f, $00, $00, $00, $00, $00, $06, $06, $0d
.byte $06, $0e, $1c, $18, $f9, $f3, $ff, $ff, $01, $05, $0b, $07, $16, $cd, $e3, $c0
.byte $c0, $60, $ff, $f7, $fb, $cd, $99, $f9, $00, $80, $60, $6e, $c6, $b6, $66, $06
.byte $00, $00, $ff, $7f, $77, $3a, $12, $13, $00, $00, $00, $ee, $ec, $ed, $ed, $ec
.byte $7d, $ad, $3f, $3f, $fb, $3b, $1f, $fe, $0b, $5b, $d6, $d6, $15, $d5, $ed, $03
.byte $db, $db, $ff, $76, $76, $ff, $db, $ff, $b6, $75, $ed, $dd, $db, $bb, $b6, $68
.byte $0f, $ff, $ff, $ff, $cf, $df, $9f, $3f, $00, $05, $75, $45, $35, $20, $65, $c8
.byte $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f8, $00, $a0, $a0, $a0, $a0, $00, $a0, $b0
.byte $00, $00, $08, $00, $00, $00, $00, $00, $3f, $3f, $1f, $0f, $00, $00, $00, $00
.byte $00, $04, $44, $82, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $fe, $38, $00, $00
.byte $00, $20, $10, $00, $00, $00, $00, $00, $fe, $fe, $fc, $e0, $00, $00, $00, $00
.byte $13, $16, $0a, $04, $0f, $11, $21, $3f, $0c, $09, $05, $03, $00, $0e, $1e, $00
.byte $fe, $fb, $fa, $f9, $df, $8c, $8c, $ff, $89, $04, $75, $06, $20, $fb, $fb, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $c0, $e0, $e3, $e4, $f4, $f4, $e4, $e8, $bf, $df, $dc, $b8, $78, $f8, $f8, $f0
.byte $7f, $7f, $fe, $1c, $00, $00, $00, $00, $fe, $ae, $1c, $00, $00, $00, $00, $00
.byte $1f, $1f, $3e, $3f, $3f, $3f, $3f, $3f, $00, $0d, $15, $14, $15, $15, $15, $15
.byte $ec, $fc, $ef, $ed, $ce, $de, $9e, $bc, $13, $ab, $54, $d6, $b5, $ad, $6d, $5b
.byte $12, $1f, $3f, $ff, $ff, $bf, $ff, $ff, $ed, $ed, $c0, $56, $16, $56, $56, $16
.byte $09, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f6, $f6, $00, $ed, $ed, $ed, $ed, $ed
.byte $07, $84, $87, $87, $87, $8f, $df, $df, $f8, $7b, $78, $7a, $7a, $70, $24, $2e
.byte $ff, $04, $0c, $fc, $fc, $fe, $fe, $ff, $00, $fb, $f3, $13, $4b, $e1, $11, $ba
.byte $3f, $ff, $3f, $3f, $3f, $3f, $1f, $1f, $c0, $1b, $d1, $c0, $db, $cb, $eb, $eb
.byte $f8, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $00, $d8, $88, $00, $c0, $d0, $98, $a8
.byte $00, $00, $00, $00, $00, $20, $18, $01, $00, $0f, $1f, $3f, $3f, $3f, $1f, $0f
.byte $00, $00, $00, $1c, $22, $45, $83, $fd, $00, $00, $00, $00, $1c, $3a, $7c, $02
.byte $00, $00, $00, $00, $00, $02, $04, $80, $00, $70, $fc, $fe, $fe, $fe, $fc, $f0
.byte $4f, $47, $4f, $9f, $9f, $9f, $8f, $b7, $37, $3b, $31, $6c, $6c, $6d, $65, $48
.byte $ff, $ff, $fe, $fc, $fe, $f7, $e7, $ff, $b9, $12, $f5, $0b, $11, $ca, $9b, $01
.byte $80, $50, $38, $38, $78, $fc, $fc, $f2, $00, $80, $d0, $c0, $90, $28, $a0, $8c
.byte $d0, $e0, $e0, $20, $e0, $f0, $d0, $88, $e0, $00, $c0, $c0, $00, $c0, $e0, $f0
.byte $17, $0f, $0f, $09, $0f, $0b, $0b, $13, $0e, $00, $06, $06, $00, $06, $06, $0e
.byte $3f, $3f, $3f, $43, $87, $9f, $bf, $fe, $14, $00, $00, $3c, $79, $67, $5e, $01
.byte $79, $f3, $ff, $bf, $ae, $b3, $18, $0c, $b6, $6c, $03, $40, $51, $5c, $ef, $f7
.byte $3f, $7f, $f2, $c4, $7f, $6d, $ff, $ff, $c0, $ad, $8d, $3b, $bf, $92, $3f, $00
.byte $ff, $ff, $09, $04, $ff, $f6, $ff, $ff, $00, $f6, $f6, $fb, $ff, $09, $ff, $00
.byte $ff, $e7, $f1, $df, $cf, $e1, $c2, $c2, $01, $98, $1e, $2e, $b0, $1e, $bd, $3d
.byte $f7, $fe, $04, $ff, $ff, $04, $02, $02, $c8, $01, $fb, $fb, $00, $fb, $fd, $fd
.byte $3f, $ff, $c3, $c3, $e7, $59, $c1, $1f, $d6, $00, $bd, $bd, $1f, $a6, $3e, $e7
.byte $fc, $fc, $fe, $fe, $ff, $fd, $05, $ff, $a8, $a8, $ac, $74, $76, $02, $fa, $fe
.byte $01, $02, $03, $03, $07, $2f, $7f, $7f, $00, $01, $00, $01, $03, $00, $2a, $28
.byte $03, $fc, $fe, $ff, $ff, $ff, $ff, $ff, $fc, $03, $fd, $f2, $8d, $7e, $db, $7f
.byte $00, $80, $a0, $f0, $f0, $e0, $e0, $c0, $00, $00, $00, $20, $60, $40, $40, $00
.byte $01, $07, $0f, $0f, $0f, $1e, $1e, $3f, $00, $00, $00, $00, $00, $0b, $0b, $07
.byte $f0, $fc, $fe, $fe, $fe, $4f, $ef, $ff, $00, $00, $00, $00, $90, $fa, $5a, $5c
.byte $00, $00, $00, $00, $20, $70, $e0, $c0, $00, $00, $00, $00, $00, $20, $40, $80
.byte $7f, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
.byte $ff, $03, $03, $03, $03, $03, $01, $ff, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $00
.byte $f1, $e0, $ff, $ef, $ef, $ef, $ef, $5e, $4e, $1f, $40, $5d, $5d, $5d, $5d, $00
.byte $ff, $85, $89, $ff, $ff, $dc, $dc, $d8, $00, $7e, $7e, $00, $77, $77, $77, $00
.byte $02, $04, $ff, $ff, $ff, $ff, $f7, $ef, $fd, $fb, $00, $7b, $7b, $7b, $73, $00
.byte $08, $04, $ff, $ff, $ff, $1f, $5f, $ff, $f7, $fb, $00, $fb, $fb, $fb, $bb, $00
.byte $5f, $3f, $ff, $ff, $ff, $ff, $ff, $f0, $a0, $c0, $0d, $ea, $ea, $ea, $ea, $00
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $b6, $aa, $aa, $aa, $aa, $00
.byte $ff, $ff, $ff, $ff, $ff, $f9, $f2, $0f, $07, $ee, $ae, $ae, $a2, $e6, $cd, $00
.byte $ff, $ff, $fd, $8f, $ff, $07, $03, $e2, $76, $22, $02, $72, $02, $fa, $fe, $00
.byte $7f, $d7, $ff, $46, $25, $1e, $03, $02, $13, $6b, $02, $39, $1a, $01, $00, $01
.byte $ff, $c6, $b8, $04, $04, $f9, $36, $01, $82, $b9, $47, $fb, $fb, $06, $c9, $fe
.byte $80, $80, $40, $40, $c0, $40, $80, $80, $00, $00, $80, $80, $00, $80, $00, $00
.byte $4f, $47, $4f, $9f, $9f, $9f, $9f, $a4, $37, $3b, $31, $6c, $6f, $67, $60, $43
.byte $ff, $ff, $fe, $fc, $fe, $f7, $e7, $3f, $b9, $12, $f5, $0b, $71, $6a, $1b, $c1
.byte $80, $40, $20, $38, $7c, $fc, $fc, $f2, $00, $80, $c0, $c0, $88, $30, $a8, $8c
.byte $fe, $02, $02, $02, $02, $02, $00, $ff, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $00
.byte $ff, $80, $80, $80, $80, $80, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $01, $01, $02, $0d, $13, $27, $4f, $5f, $00, $00, $01, $02, $0d, $1b, $37, $2e
.byte $c0, $c0, $e0, $d8, $dc, $9c, $9e, $3d, $00, $80, $80, $a0, $a8, $68, $68, $da
.byte $01, $01, $03, $0d, $33, $4f, $5f, $be, $00, $00, $00, $03, $0d, $32, $2e, $4d
.byte $c0, $c0, $e0, $d8, $e6, $79, $7d, $3e, $00, $80, $80, $60, $58, $a6, $ba, $dd
.byte $00, $00, $00, $ff, $01, $01, $01, $ff, $ff, $ff, $ff, $00, $fe, $fe, $fe, $00
.byte $01, $01, $01, $ff, $00, $00, $00, $ff, $fe, $fe, $fe, $00, $ff, $ff, $ff, $00
.byte $02, $03, $01, $01, $01, $01, $02, $1f, $01, $00, $00, $00, $00, $00, $01, $00
.byte $00, $ff, $ff, $ff, $11, $11, $10, $ff, $ff, $00, $ee, $00, $ee, $ee, $ef, $00
.byte $80, $80, $00, $00, $00, $00, $80, $c0, $00, $00, $00, $00, $00, $00, $00, $00
.byte $48, $0f, $07, $07, $05, $0f, $1f, $1f, $07, $00, $03, $00, $03, $01, $0a, $00
.byte $01, $ff, $fe, $de, $dd, $57, $df, $df, $fe, $00, $9c, $00, $8e, $8e, $8a, $00
.byte $ca, $04, $00, $00, $00, $80, $c0, $c0, $04, $00, $00, $00, $00, $00, $80, $00
.byte $1f, $0f, $1f, $0f, $0f, $0f, $1f, $14, $0e, $07, $0e, $07, $06, $06, $04, $0b
.byte $00, $83, $04, $88, $08, $10, $14, $92, $00, $00, $03, $07, $01, $08, $08, $0c
.byte $e0, $18, $24, $02, $02, $01, $11, $21, $00, $e0, $f8, $fc, $cc, $86, $06, $1e
.byte $d1, $fe, $3e, $ff, $3f, $3f, $3e, $fe, $3e, $e0, $dc, $3e, $c2, $dc, $dc, $3c
.byte $9e, $bc, $bc, $b8, $59, $31, $0b, $0f, $6d, $5b, $5b, $57, $36, $0e, $05, $00
.byte $3d, $3f, $7d, $f9, $f2, $ec, $d0, $f0, $da, $d8, $ba, $76, $ec, $d0, $a0, $00
.byte $be, $bc, $bc, $bc, $be, $5e, $2f, $1f, $5d, $5b, $5b, $5b, $49, $2d, $16, $00
.byte $3e, $1e, $1e, $1e, $3e, $3d, $7a, $fc, $dd, $ed, $ed, $ed, $c9, $da, $b4, $00
.byte $ff, $33, $33, $ff, $01, $01, $01, $ff, $ee, $ee, $ee, $00, $fe, $fe, $fe, $00
.byte $ff, $33, $33, $ff, $00, $00, $00, $ff, $ee, $ee, $ee, $00, $ff, $ff, $ff, $00
.byte $01, $01, $00, $00, $00, $19, $1f, $0f, $00, $00, $00, $00, $00, $00, $09, $07
.byte $80, $e3, $fc, $f0, $6e, $de, $de, $ef, $00, $80, $63, $7f, $37, $2d, $ad, $53
.byte $03, $8f, $7e, $1e, $ec, $f7, $f7, $ef, $00, $02, $8c, $fc, $d8, $68, $6b, $95
.byte $00, $00, $00, $00, $00, $00, $c0, $e0, $00, $00, $00, $00, $00, $00, $00, $c0
.byte $01, $02, $03, $03, $07, $1f, $3f, $3f, $00, $01, $00, $01, $03, $00, $12, $19
.byte $ff, $1f, $0f, $1f, $ff, $ff, $3f, $ff, $05, $e1, $f2, $e3, $07, $df, $1c, $00
.byte $16, $12, $0f, $0e, $1b, $3b, $3b, $3b, $09, $0d, $00, $05, $0e, $1f, $1f, $1f
.byte $4d, $df, $fd, $f3, $72, $ba, $b7, $a7, $86, $02, $92, $6c, $ad, $55, $42, $40
.byte $d1, $fe, $3e, $ff, $3f, $7f, $fe, $fc, $3e, $e0, $dc, $3e, $c6, $ba, $7c, $f8
.byte $00, $00, $00, $00, $01, $06, $0e, $0e, $00, $00, $00, $00, $00, $01, $07, $07
.byte $00, $00, $7c, $82, $01, $6c, $fe, $7c, $00, $00, $00, $7c, $fe, $ff, $d7, $ff
.byte $00, $00, $00, $00, $00, $c0, $e0, $e0, $00, $00, $00, $00, $00, $00, $c0, $c0
.byte $00, $00, $00, $ff, $00, $00, $00, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $00
.byte $01, $03, $0c, $f0, $23, $46, $4d, $8d, $fe, $fc, $f3, $0f, $dc, $b9, $b2, $72
.byte $80, $c0, $30, $0f, $c4, $62, $b2, $b1, $7f, $3f, $cf, $f0, $3b, $9d, $4d, $4e
.byte $01, $01, $01, $ff, $00, $00, $00, $ff, $fe, $fe, $fe, $00, $ff, $ff, $ff, $00
.byte $1f, $ff, $f6, $67, $5f, $7e, $7c, $7e, $0e, $0c, $7d, $3e, $3e, $3d, $33, $21
.byte $ff, $ff, $ff, $ff, $ff, $ff, $7f, $3f, $ed, $7f, $0e, $10, $4a, $60, $b5, $cf
.byte $ff, $ff, $fe, $ff, $ff, $fe, $fc, $f8, $6e, $fc, $e1, $10, $a4, $0d, $5b, $e7
.byte $fc, $fe, $dc, $cc, $e4, $f4, $7c, $fc, $e0, $6c, $78, $f8, $f8, $78, $98, $08
.byte $7f, $cf, $ff, $47, $25, $1e, $03, $02, $2b, $73, $02, $39, $1a, $01, $00, $01
.byte $fe, $f8, $fc, $fe, $fc, $c0, $80, $ff, $d8, $00, $b0, $ac, $c0, $80, $00, $00
.byte $17, $ff, $ff, $ff, $77, $77, $f7, $fb, $0e, $00, $7f, $00, $3f, $3f, $7f, $7f
.byte $7f, $c7, $c7, $e7, $bf, $97, $d4, $d5, $87, $3b, $ba, $19, $43, $63, $a3, $a3
.byte $9c, $be, $fe, $fc, $fc, $bc, $a4, $ac, $e8, $dc, $7c, $b8, $38, $18, $18, $18
.byte $1f, $2f, $4f, $47, $8f, $9f, $9f, $8f, $03, $16, $37, $3b, $7c, $7e, $6e, $72
.byte $ff, $ff, $ff, $ff, $ff, $ff, $c7, $ff, $c7, $fe, $39, $c7, $fe, $00, $ba, $ba
.byte $f0, $e8, $e4, $c4, $e2, $f2, $f2, $e2, $80, $d0, $d8, $b8, $7c, $fc, $ec, $9c
.byte $00, $01, $01, $ff, $01, $01, $01, $fe, $ff, $fe, $fe, $00, $fe, $fe, $fe, $01
.byte $9d, $1a, $1a, $3a, $3a, $3a, $3a, $3a, $62, $e4, $e4, $c4, $c4, $c4, $c4, $c4
.byte $b9, $58, $58, $5c, $5c, $5c, $5c, $5c, $46, $27, $27, $23, $23, $23, $23, $23
.byte $01, $81, $81, $ff, $80, $80, $80, $7f, $fe, $7e, $7e, $00, $7f, $7f, $7f, $80
.byte $ff, $ff, $ff, $9f, $9f, $cf, $cf, $9f, $22, $b7, $37, $73, $7b, $79, $f8, $7c
.byte $6f, $f8, $ff, $ff, $ff, $ff, $ff, $ff, $90, $67, $d5, $95, $55, $65, $95, $b5
.byte $ed, $1f, $ff, $ff, $ff, $ff, $ff, $ff, $12, $ed, $57, $53, $45, $4d, $52, $56
.byte $fe, $ff, $f6, $f2, $f2, $e2, $f6, $f7, $88, $da, $d8, $9c, $bc, $3c, $7c, $7e
.byte $3f, $f8, $ff, $ff, $ff, $ff, $ff, $ff, $c0, $37, $ea, $ca, $aa, $b2, $4a, $5a
.byte $f9, $3f, $ff, $ff, $ff, $ff, $ff, $fe, $06, $d9, $af, $a7, $8b, $9b, $a4, $ad
.byte $f3, $ff, $7f, $3f, $1f, $07, $07, $7f, $7d, $71, $3f, $1e, $00, $02, $02, $00
.byte $d7, $d7, $d7, $a7, $cc, $14, $22, $ff, $a3, $a3, $a3, $40, $03, $0f, $1f, $00
.byte $fe, $de, $df, $df, $d3, $79, $45, $ff, $9c, $8c, $8e, $82, $0c, $9e, $be, $00
.byte $8f, $9f, $ff, $3f, $1f, $0f, $0b, $13, $7c, $7a, $3e, $1e, $0c, $02, $06, $0e
.byte $c7, $c7, $c7, $c7, $c7, $c7, $c7, $c7, $ba, $ba, $ba, $ba, $ba, $ba, $ba, $ba
.byte $f2, $f2, $fc, $f8, $f0, $f0, $90, $88, $7c, $bc, $f8, $f0, $60, $80, $e0, $f0
.byte $02, $02, $02, $fe, $02, $02, $02, $fe, $fd, $fd, $fd, $01, $fd, $fd, $fd, $01
.byte $74, $74, $74, $74, $74, $74, $74, $74, $88, $88, $88, $88, $88, $88, $88, $88
.byte $2e, $2e, $2e, $2e, $2e, $2e, $2e, $2e, $11, $11, $11, $11, $11, $11, $11, $11
.byte $41, $41, $41, $7f, $40, $40, $40, $7f, $be, $be, $be, $80, $bf, $bf, $bf, $80
.byte $7c, $7f, $3f, $1f, $3f, $ff, $ff, $ff, $3b, $30, $1a, $07, $0d, $12, $b7, $00
.byte $ff, $70, $00, $c0, $ff, $ff, $f8, $ff, $40, $af, $ff, $3f, $c0, $f7, $70, $00
.byte $fe, $1d, $01, $07, $ff, $ff, $3f, $ff, $05, $ea, $fe, $f9, $07, $de, $1d, $00
.byte $fe, $fc, $fc, $f8, $f0, $fe, $ff, $ff, $38, $18, $b0, $c0, $60, $90, $da, $00
.byte $7f, $38, $00, $c0, $ff, $ff, $f8, $ff, $a0, $d7, $ff, $3f, $c0, $f7, $70, $00
.byte $fc, $39, $01, $07, $ff, $ff, $3f, $ff, $0b, $d6, $fe, $f9, $07, $de, $1d, $00
.byte $1b, $1f, $1f, $3f, $7b, $7b, $fb, $fb, $0e, $00, $0f, $00, $3f, $3f, $7f, $7f
.byte $4f, $f1, $f1, $f9, $a7, $97, $d4, $d5, $81, $0e, $ee, $06, $41, $63, $a3, $a3
.byte $e4, $ee, $fe, $fc, $fc, $bc, $a4, $ac, $f8, $f4, $9c, $38, $38, $18, $18, $18
.byte $21, $21, $20, $1a, $7f, $ff, $ff, $ff, $1e, $1e, $1f, $0f, $1f, $71, $47, $00
.byte $c7, $ff, $42, $c2, $a5, $e7, $e7, $ff, $ba, $00, $81, $81, $c3, $c3, $81, $00
.byte $04, $04, $04, $dc, $f2, $ff, $ff, $ff, $f8, $f8, $f8, $f0, $fc, $9e, $c2, $00
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $38, $4c, $c6, $c6, $c6, $64, $38, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $18, $38, $18, $18, $18, $18, $7e, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $7c, $c6, $0e, $3c, $78, $e0, $fe, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $7e, $0c, $18, $3c, $06, $c6, $7c, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $1c, $3c, $6c, $cc, $fe, $0c, $0c, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $fc, $c0, $fc, $06, $06, $c6, $7c, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $3c, $60, $c0, $fc, $c6, $c6, $7c, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $fe, $c6, $0c, $18, $30, $30, $30, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $7c, $c6, $c6, $7c, $c6, $c6, $7c, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $7c, $c6, $c6, $7e, $06, $0c, $78, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $78, $cc, $c0, $7c, $06, $c6, $7c, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $3c, $66, $c0, $c0, $c0, $66, $3c, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $7c, $c6, $c6, $c6, $c6, $c6, $7c, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $fc, $c6, $c6, $ce, $f8, $dc, $ce, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $fe, $c0, $c0, $fc, $c0, $c0, $fe, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $60, $60, $60, $60, $60, $60, $7e, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $c6, $c6, $c6, $ee, $7c, $38, $10, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $c6, $c6, $c6, $fe, $c6, $c6, $c6, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $7e, $18, $18, $18, $18, $18, $7e, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $3e, $60, $c0, $ce, $c6, $66, $3e, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $7e, $18, $18, $18, $18, $18, $18, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $38, $6c, $c6, $c6, $fe, $c6, $c6, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $3c, $3c, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $3f, $40, $80, $9f, $90, $90, $90, $90, $00, $3f, $7f, $7f, $70, $70, $70, $70
.byte $ff, $00, $00, $ff, $00, $00, $00, $00, $00, $ff, $ff, $ff, $00, $00, $00, $00
.byte $fc, $02, $01, $f9, $09, $09, $09, $09, $00, $fc, $fe, $fe, $0e, $0e, $0e, $0e
.byte $90, $90, $90, $90, $90, $90, $90, $90, $70, $70, $70, $70, $70, $70, $70, $70
.byte $09, $09, $09, $09, $09, $09, $09, $09, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
.byte $90, $90, $90, $90, $9f, $80, $40, $3f, $70, $70, $70, $70, $7f, $7f, $3f, $00
.byte $00, $00, $00, $00, $ff, $00, $00, $ff, $00, $00, $00, $00, $ff, $ff, $ff, $00
.byte $09, $09, $09, $09, $f9, $01, $02, $fc, $0e, $0e, $0e, $0e, $fe, $fe, $fc, $00
.byte $04, $0c, $0d, $93, $ff, $01, $00, $00, $04, $0c, $0d, $ec, $01, $00, $00, $00
.byte $00, $00, $01, $93, $ef, $0d, $04, $04, $00, $00, $01, $ec, $0d, $0c, $04, $00
.byte $00, $1f, $20, $18, $26, $54, $48, $22, $00, $00, $1f, $07, $01, $23, $37, $1d
.byte $00, $00, $c0, $38, $24, $4e, $04, $08, $00, $00, $00, $c0, $d8, $b6, $f8, $f0
.byte $00, $00, $00, $00, $23, $54, $48, $20, $00, $00, $00, $00, $00, $23, $37, $1f
.byte $00, $00, $00, $18, $a4, $4e, $04, $08, $00, $00, $00, $00, $18, $b6, $f8, $f0
.byte $01, $02, $84, $88, $3b, $df, $df, $ff, $00, $01, $02, $84, $84, $37, $37, $07
.byte $c0, $26, $1f, $1f, $df, $ff, $f8, $ff, $00, $c0, $26, $ee, $2e, $f8, $ff, $f8
.byte $01, $02, $04, $08, $bb, $df, $5f, $7f, $00, $01, $02, $04, $04, $b7, $b7, $87
.byte $6f, $fe, $7f, $1f, $07, $0f, $07, $00, $b6, $25, $16, $00, $02, $07, $02, $00
.byte $00, $01, $03, $03, $03, $01, $00, $00, $03, $07, $0f, $0f, $0f, $0f, $07, $03
.byte $00, $80, $c0, $c0, $c0, $80, $00, $00, $c0, $e0, $f0, $f0, $f0, $f0, $e0, $c0
.byte $00, $00, $00, $05, $0c, $1c, $18, $38, $03, $0f, $1f, $3f, $7f, $7f, $ff, $ff
.byte $00, $00, $40, $00, $58, $18, $0c, $0c, $e0, $f0, $fc, $fc, $fe, $fe, $ff, $ff
.byte $18, $1c, $1c, $0e, $07, $01, $00, $00, $ff, $ff, $7f, $7f, $3f, $3f, $0f, $03
.byte $0c, $0c, $18, $38, $f0, $c0, $00, $00, $ff, $ff, $fe, $fe, $fe, $fc, $f8, $e0
.byte $ff, $ff, $ff, $ff, $ff, $6e, $5e, $38, $55, $15, $bb, $ff, $00, $3a, $38, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $4b, $38, $07, $00, $00, $00, $00, $00, $34, $07, $00, $00, $00, $00, $00, $00
.byte $90, $20, $c0, $00, $00, $00, $00, $00, $60, $c0, $00, $00, $00, $00, $00, $00
.byte $4a, $3c, $02, $02, $02, $04, $05, $02, $35, $03, $01, $01, $01, $03, $02, $00
.byte $30, $20, $20, $40, $40, $80, $00, $00, $c0, $c0, $c0, $80, $80, $00, $00, $00
.byte $ef, $7e, $7f, $9f, $87, $0f, $07, $00, $36, $a5, $96, $80, $02, $07, $02, $00
.byte $ff, $1e, $3c, $fc, $04, $80, $00, $00, $1e, $ec, $d8, $00, $04, $00, $00, $00
.byte $00, $40, $e0, $e0, $f0, $f0, $e0, $e0, $00, $00, $40, $40, $e0, $e0, $40, $40
.byte $00, $00, $00, $00, $00, $40, $e0, $e0, $00, $00, $00, $00, $00, $00, $40, $40
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $01, $00, $00, $00, $01, $01, $43, $e7, $00, $00, $00, $00, $00, $00, $01, $41
.byte $d0, $e0, $e0, $e0, $f0, $f0, $f8, $f8, $e0, $40, $00, $40, $a0, $a0, $50, $50
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $02, $05, $07, $00, $00, $00, $00, $00, $00, $02, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $0f, $3f, $73, $7f, $ff, $ff, $ff, $00, $00, $0f, $3f, $3f, $73, $6f, $69
.byte $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $ff, $ff, $ff, $bb, $55, $55
.byte $00, $80, $ec, $f2, $fa, $fc, $fc, $f2, $00, $00, $80, $ec, $f4, $38, $50, $5c
.byte $00, $7f, $ff, $7f, $10, $0c, $04, $07, $00, $00, $7f, $00, $0f, $03, $03, $00
.byte $60, $f0, $f0, $ff, $a0, $3c, $1e, $18, $00, $60, $80, $c0, $7f, $e3, $f1, $f7
.byte $00, $00, $00, $00, $c0, $30, $4e, $01, $00, $00, $00, $00, $00, $c0, $b0, $fe
.byte $00, $03, $06, $0f, $1a, $1a, $3f, $6f, $00, $00, $03, $07, $0f, $0f, $00, $3f
.byte $00, $80, $40, $20, $90, $90, $f8, $84, $00, $00, $80, $c0, $e0, $e0, $00, $f8
.byte $00, $00, $00, $00, $00, $00, $01, $02, $00, $00, $00, $00, $00, $00, $00, $01
.byte $e0, $e0, $e0, $e0, $e0, $e0, $90, $c8, $00, $40, $00, $40, $40, $00, $e0, $b0
.byte $00, $00, $00, $00, $00, $01, $06, $19, $00, $00, $00, $00, $00, $00, $01, $06
.byte $a7, $e9, $af, $ef, $ff, $ff, $ef, $f3, $42, $06, $40, $06, $4a, $45, $b1, $ac
.byte $fc, $12, $fe, $fe, $fe, $ff, $7d, $ff, $e8, $ec, $00, $ec, $a8, $d6, $f6, $d5
.byte $00, $00, $08, $14, $1c, $14, $dc, $f5, $00, $00, $00, $08, $00, $08, $00, $48
.byte $05, $07, $05, $1c, $25, $6f, $b3, $bb, $02, $00, $02, $07, $1a, $36, $6e, $dd
.byte $00, $00, $00, $c0, $60, $30, $b8, $ac, $00, $00, $00, $00, $c0, $e0, $d0, $d8
.byte $ff, $7f, $7f, $3f, $0f, $00, $00, $00, $6d, $31, $3d, $0f, $00, $00, $00, $00
.byte $ff, $ff, $ff, $ff, $ff, $6c, $5e, $38, $55, $15, $bb, $ff, $00, $38, $38, $02
.byte $fe, $f8, $f2, $e2, $9c, $00, $00, $00, $50, $30, $ec, $9c, $00, $00, $00, $00
.byte $68, $90, $7c, $4b, $30, $00, $00, $00, $07, $6f, $03, $30, $00, $00, $00, $00
.byte $80, $01, $06, $f8, $00, $00, $00, $00, $7f, $fe, $f8, $00, $00, $00, $00, $00
.byte $fe, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $de, $00, $ff, $2f, $17, $0f, $00, $00, $7f, $ff, $00, $17, $0b, $00, $00, $00
.byte $d2, $00, $fe, $e8, $d0, $e0, $00, $00, $fc, $fe, $00, $d0, $a0, $00, $00, $00
.byte $0d, $13, $27, $4f, $5f, $9e, $bc, $bc, $02, $0d, $1b, $37, $2e, $6d, $5b, $5b
.byte $de, $dd, $9c, $9c, $3c, $3d, $3f, $7f, $a8, $aa, $6b, $6b, $db, $da, $d8, $b3
.byte $27, $4f, $df, $9f, $9e, $9e, $9e, $9f, $19, $37, $26, $6e, $6d, $6d, $6d, $64
.byte $bc, $be, $1f, $1f, $0f, $0f, $0f, $1f, $53, $5d, $ee, $ee, $f6, $f6, $f6, $e4
.byte $fe, $7f, $61, $3f, $23, $26, $2b, $3f, $33, $80, $9e, $c0, $dd, $d9, $d6, $cd
.byte $f7, $fe, $ff, $ff, $ff, $ff, $6f, $ff, $48, $41, $e0, $e1, $51, $50, $dc, $b6
.byte $be, $ce, $6f, $f3, $b9, $ba, $ee, $e7, $dd, $bb, $b7, $6f, $6e, $dd, $5d, $3b
.byte $ec, $6e, $7e, $9a, $9a, $da, $6c, $68, $d8, $b4, $b4, $74, $ec, $ec, $d8, $b0
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $0f, $1f, $1f, $3f, $3f
.byte $00, $00, $00, $20, $00, $00, $00, $00, $00, $00, $87, $ff, $ff, $ff, $ff, $ff
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $f0, $fc, $fc, $fe, $fe
.byte $00, $00, $00, $00, $00, $00, $00, $67, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $1f, $20, $1c, $06, $fc, $00, $00, $00, $00, $1f, $03, $01, $03, $ff
.byte $00, $00, $00, $c0, $30, $4e, $01, $7e, $00, $00, $00, $00, $c0, $b0, $fe, $80
.byte $ec, $00, $ff, $3d, $1e, $0f, $00, $00, $7f, $ff, $00, $1e, $0d, $00, $00, $00
.byte $e2, $00, $fe, $b8, $70, $e0, $00, $00, $fc, $fe, $00, $70, $e0, $00, $00, $00
.byte $b8, $59, $31, $0b, $0f, $0f, $0f, $1f, $57, $36, $0e, $05, $00, $06, $06, $0d
.byte $fe, $fe, $fc, $f8, $f9, $f3, $ff, $ff, $6d, $dd, $db, $97, $16, $cd, $e3, $c0
.byte $4f, $77, $ff, $f7, $fb, $cd, $99, $f9, $b6, $8b, $60, $6e, $c6, $b6, $66, $06
.byte $1e, $bd, $ff, $7f, $77, $3a, $12, $13, $ed, $5a, $00, $ee, $ec, $ed, $ed, $ec
.byte $7d, $ad, $3f, $3f, $fb, $3b, $1f, $fe, $8b, $5b, $d6, $d6, $15, $d5, $ed, $03
.byte $db, $db, $ff, $76, $76, $ff, $db, $ff, $b6, $75, $ed, $dd, $db, $bb, $b6, $68
.byte $fd, $ff, $ff, $ff, $9f, $bf, $3f, $7f, $0b, $00, $0b, $0b, $6b, $40, $cb, $91
.byte $b0, $e0, $e0, $e0, $e0, $e0, $e0, $f0, $40, $00, $40, $40, $40, $00, $40, $60
.byte $00, $00, $08, $00, $00, $00, $00, $00, $3f, $3f, $1f, $0f, $00, $00, $00, $00
.byte $00, $04, $44, $82, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $fe, $38, $00, $00
.byte $00, $20, $10, $00, $00, $00, $00, $00, $fe, $fe, $fc, $e0, $00, $00, $00, $00
.byte $98, $70, $0d, $03, $06, $18, $3f, $1f, $67, $0f, $02, $00, $01, $07, $1f, $00
.byte $00, $85, $06, $0c, $18, $38, $f0, $c0, $ff, $7a, $f8, $f8, $f0, $f0, $c0, $00
.byte $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $ff, $01, $01, $01, $ff, $ff, $ff, $ff, $00, $fe, $fe, $fe, $00
.byte $01, $01, $01, $ff, $00, $00, $00, $ff, $fe, $fe, $fe, $00, $ff, $ff, $ff, $00
.byte $1f, $1f, $3e, $3f, $3f, $3f, $3f, $3f, $00, $0d, $15, $14, $15, $15, $15, $15
.byte $ec, $fc, $ef, $ed, $ce, $de, $9e, $bc, $13, $ab, $54, $d6, $b5, $ad, $6d, $5b
.byte $12, $1f, $3f, $ff, $ff, $bf, $ff, $ff, $ed, $ed, $c0, $56, $16, $56, $56, $16
.byte $09, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f6, $f6, $00, $ed, $ed, $ed, $ed, $ed
.byte $07, $84, $87, $87, $87, $8f, $df, $df, $f8, $7b, $78, $7a, $7a, $70, $24, $2e
.byte $ff, $04, $0c, $fc, $fc, $fe, $fe, $ff, $00, $fb, $f3, $13, $4b, $e1, $11, $ba
.byte $7f, $ff, $7f, $7f, $7f, $7f, $3f, $3f, $80, $37, $a3, $80, $b7, $97, $d7, $d7
.byte $f0, $f8, $f8, $f8, $f8, $f8, $f8, $f8, $00, $b0, $10, $00, $80, $a0, $30, $50
.byte $00, $00, $00, $00, $00, $20, $18, $01, $00, $0f, $1f, $3f, $3f, $3f, $1f, $0f
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $02, $04, $80, $00, $70, $fc, $fe, $fe, $fe, $fc, $f0
.byte $7f, $3f, $01, $01, $0e, $18, $22, $44, $38, $00, $00, $00, $01, $01, $03, $07
.byte $ff, $fe, $40, $7e, $c3, $3f, $c8, $9b, $0e, $00, $80, $80, $3e, $c0, $37, $74
.byte $10, $18, $0a, $12, $27, $c5, $08, $f8, $10, $08, $04, $0e, $19, $38, $f0, $00
.byte $08, $88, $20, $04, $00, $00, $40, $00, $a5, $7f, $df, $ff, $ff, $ff, $ff, $ff
.byte $a0, $00, $09, $00, $00, $00, $42, $00, $5d, $fb, $ff, $ff, $ff, $ff, $ff, $ff
.byte $3f, $3f, $3f, $43, $87, $9f, $bf, $fe, $14, $00, $00, $3c, $79, $67, $5e, $01
.byte $79, $f3, $ff, $bf, $ae, $b3, $18, $0c, $b6, $6c, $03, $40, $51, $5c, $ef, $f7
.byte $3f, $7f, $f2, $c4, $7f, $6d, $ff, $ff, $c0, $ad, $8d, $3b, $bf, $92, $3f, $00
.byte $ff, $ff, $09, $04, $ff, $f6, $ff, $ff, $00, $f6, $f6, $fb, $ff, $09, $ff, $00
.byte $ff, $e7, $f1, $df, $cf, $e1, $c2, $c2, $01, $98, $1e, $2e, $b0, $1e, $bd, $3d
.byte $f7, $fe, $04, $ff, $ff, $04, $02, $02, $c8, $01, $fb, $fb, $00, $fb, $fd, $fd
.byte $3f, $ff, $c3, $c3, $e7, $59, $c1, $1f, $d6, $00, $bd, $bd, $1f, $a6, $3e, $e7
.byte $fc, $fc, $fe, $fe, $ff, $fd, $05, $ff, $a8, $a8, $ac, $74, $76, $02, $fa, $fe
.byte $00, $00, $00, $00, $00, $00, $00, $ff, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $ff, $04, $ff, $00, $00, $00, $00, $00, $29, $ff, $00, $00, $00, $00
.byte $07, $fc, $52, $e0, $fe, $1f, $03, $00, $00, $07, $ff, $ff, $1f, $03, $00, $00
.byte $80, $81, $43, $3f, $04, $7f, $3f, $3f, $7f, $66, $3c, $00, $04, $40, $3f, $00
.byte $9e, $38, $e8, $f0, $40, $f8, $fc, $f8, $70, $e0, $10, $00, $40, $00, $f8, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $08, $00, $00, $09, $00, $40, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
.byte $00, $10, $02, $00, $08, $00, $41, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
.byte $f1, $e0, $ff, $ef, $ef, $ef, $ef, $5e, $4e, $1f, $40, $5d, $5d, $5d, $5d, $00
.byte $ff, $85, $89, $ff, $ff, $dc, $dc, $d8, $00, $7e, $7e, $00, $77, $77, $77, $00
.byte $02, $04, $ff, $ff, $ff, $ff, $f7, $ef, $fd, $fb, $00, $7b, $7b, $7b, $73, $00
.byte $08, $04, $ff, $ff, $ff, $1f, $5f, $ff, $f7, $fb, $00, $fb, $fb, $fb, $bb, $00
.byte $5f, $3f, $ff, $ff, $ff, $ff, $ff, $f0, $a0, $c0, $0d, $ea, $ea, $ea, $ea, $00
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $b6, $aa, $aa, $aa, $aa, $00
.byte $ff, $ff, $ff, $ff, $ff, $f9, $f2, $0f, $07, $ee, $ae, $ae, $a2, $e6, $cd, $00
.byte $ff, $ff, $fd, $8f, $ff, $07, $03, $e2, $76, $22, $02, $72, $02, $fa, $fe, $00
.byte $40, $60, $66, $86, $ff, $fc, $91, $ef, $ff, $bf, $bd, $7d, $f8, $03, $6f, $70
.byte $00, $f8, $fe, $87, $66, $43, $33, $e1, $00, $00, $f8, $7e, $1c, $3e, $0e, $1e
.byte $00, $00, $30, $38, $3c, $7e, $3f, $1f, $00, $00, $00, $10, $08, $24, $16, $0b
.byte $07, $03, $01, $01, $0e, $10, $30, $60, $03, $00, $00, $00, $01, $01, $11, $23
.byte $f0, $e0, $40, $7e, $c3, $3f, $c8, $9b, $e0, $00, $80, $80, $3e, $c0, $37, $74
.byte $01, $03, $0a, $1a, $34, $c4, $08, $f8, $01, $02, $04, $0c, $18, $38, $f0, $00
.byte $00, $10, $10, $10, $10, $10, $10, $00, $00, $10, $00, $10, $10, $10, $10, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $10, $10, $00, $00, $00, $00, $00, $00
.byte $18, $18, $1c, $0e, $0f, $03, $00, $00, $ff, $ff, $7f, $7f, $3f, $3f, $0f, $01
.byte $18, $19, $38, $70, $f0, $c0, $00, $00, $ff, $ff, $ff, $fe, $fe, $fc, $f0, $60
.byte $0e, $0f, $07, $07, $03, $01, $02, $00, $7f, $3f, $3f, $3f, $5f, $3f, $2f, $0f
.byte $00, $00, $00, $80, $e0, $e0, $f0, $7c, $80, $80, $c0, $e0, $f0, $fc, $ff, $ff
.byte $00, $00, $00, $01, $07, $07, $17, $bf, $01, $01, $03, $07, $0f, $df, $ff, $ff
.byte $60, $60, $f0, $d0, $c0, $20, $20, $00, $fe, $fe, $fc, $fc, $fe, $fe, $fc, $f8
.byte $00, $ff, $ff, $f6, $9c, $dd, $b7, $f7, $00, $ff, $00, $5c, $49, $77, $62, $5d
.byte $fe, $00, $fe, $92, $92, $d6, $92, $92, $fe, $fe, $00, $10, $28, $44, $28, $10
.byte $1f, $e4, $90, $00, $46, $89, $81, $c9, $00, $1f, $ff, $ff, $b9, $7e, $7f, $3f
.byte $4c, $11, $00, $02, $2f, $24, $91, $ef, $f3, $ff, $ff, $fd, $d8, $df, $6f, $70
.byte $8e, $78, $40, $0e, $ef, $ff, $db, $c0, $03, $87, $ff, $f5, $f6, $1b, $80, $80
.byte $c0, $20, $d0, $18, $c4, $f4, $c8, $00, $00, $c0, $a0, $e0, $38, $c8, $00, $00
.byte $10, $38, $38, $38, $38, $38, $44, $7c, $00, $10, $10, $00, $10, $10, $38, $00
.byte $03, $03, $03, $03, $04, $04, $09, $08, $00, $01, $01, $00, $03, $03, $07, $07
.byte $80, $80, $80, $80, $40, $40, $20, $a0, $00, $00, $00, $00, $80, $80, $c0, $c0
.byte $00, $04, $0c, $06, $07, $03, $01, $00, $08, $1c, $1c, $1f, $0f, $0f, $07, $03
.byte $00, $40, $60, $c0, $c0, $80, $00, $00, $20, $70, $f0, $f0, $e0, $e0, $c0, $80
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $0b, $03, $02, $00, $00, $00, $00, $00
.byte $5f, $0b, $05, $00, $00, $00, $00, $00, $ff, $ff, $ff, $3f, $1f, $26, $00, $00
.byte $fc, $f8, $84, $50, $00, $00, $00, $00, $ff, $ff, $ff, $fe, $fe, $b0, $c0, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $f8, $c8, $a0, $80, $00, $00, $00, $00
.byte $cd, $ff, $f2, $f6, $dc, $fe, $bf, $f7, $18, $77, $2f, $5d, $2b, $15, $62, $5d
.byte $00, $e0, $a0, $a0, $a0, $a0, $e0, $00, $00, $e0, $40, $40, $40, $40, $00, $00
.byte $61, $83, $cf, $5c, $8d, $de, $cc, $00, $1f, $7e, $3c, $23, $72, $e4, $00, $00
.byte $ff, $fe, $fc, $f0, $00, $00, $00, $00, $7e, $fc, $f0, $00, $00, $00, $00, $00
.byte $03, $03, $03, $04, $09, $10, $11, $21, $00, $01, $01, $03, $07, $0f, $0f, $1f
.byte $80, $80, $80, $40, $20, $10, $10, $08, $00, $00, $00, $80, $c0, $e0, $e0, $f0
.byte $7c, $44, $38, $7c, $c6, $7d, $45, $fe, $38, $38, $00, $38, $38, $82, $ba, $00
.byte $08, $10, $10, $1c, $1c, $1c, $1c, $1c, $07, $0f, $0f, $03, $0b, $0b, $0b, $03
.byte $a0, $10, $10, $10, $10, $10, $50, $50, $c0, $e0, $e0, $e0, $e0, $e0, $e0, $e0
.byte $00, $01, $03, $05, $05, $09, $09, $09, $00, $00, $00, $02, $02, $06, $06, $06
.byte $ba, $34, $30, $32, $7f, $70, $70, $70, $45, $cb, $cf, $cd, $df, $df, $df, $df
.byte $ba, $59, $19, $99, $fd, $1d, $1d, $1d, $44, $a6, $e6, $66, $f6, $f6, $f6, $f6
.byte $00, $00, $80, $40, $40, $20, $20, $20, $00, $00, $00, $80, $80, $c0, $c0, $c0
.byte $21, $21, $41, $41, $41, $41, $6a, $6a, $1f, $1f, $3f, $3f, $3f, $3f, $3f, $3f
.byte $00, $00, $1f, $20, $40, $43, $44, $45, $00, $00, $00, $1f, $3f, $3f, $3f, $3e
.byte $00, $00, $ef, $28, $28, $ff, $28, $ff, $00, $00, $10, $d7, $d7, $d7, $d7, $00
.byte $cd, $dd, $f3, $ff, $dc, $9d, $b7, $f7, $18, $77, $26, $5d, $2b, $77, $6a, $4c
.byte $ff, $7f, $22, $12, $0a, $04, $02, $01, $7f, $00, $12, $0a, $06, $02, $01, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $30, $7e, $7f, $38, $00, $00
.byte $00, $00, $2c, $7f, $7f, $3e, $00, $00, $00, $1f, $7f, $7f, $7f, $7f, $3f, $00
.byte $00, $00, $00, $00, $c0, $00, $00, $00, $00, $00, $c0, $f0, $fc, $f0, $80, $00
.byte $0f, $11, $33, $25, $65, $49, $ce, $89, $00, $0e, $0c, $1a, $1a, $36, $30, $76
.byte $38, $38, $10, $00, $00, $00, $00, $00, $38, $38, $10, $00, $00, $00, $00, $00
.byte $1c, $10, $10, $1c, $10, $10, $10, $1f, $0f, $0f, $0f, $03, $0f, $0f, $0f, $00
.byte $d0, $90, $10, $10, $d0, $d0, $10, $f0, $20, $60, $e0, $e0, $e0, $20, $e0, $00
.byte $09, $09, $07, $05, $05, $05, $05, $05, $06, $06, $00, $03, $03, $03, $03, $03
.byte $7f, $70, $70, $70, $7f, $70, $70, $70, $df, $df, $df, $df, $df, $df, $df, $9f
.byte $fd, $1d, $1d, $1d, $fd, $1d, $1d, $1d, $f6, $f6, $f6, $f7, $f7, $f7, $f7, $f3
.byte $20, $20, $e0, $40, $40, $40, $40, $40, $c0, $c0, $00, $80, $80, $80, $80, $80
.byte $6a, $6a, $6a, $41, $43, $46, $4c, $a8, $3f, $3f, $3f, $3f, $3c, $39, $33, $57
.byte $45, $45, $c5, $05, $05, $f9, $02, $fe, $3e, $3e, $3e, $fe, $fe, $fe, $fc, $00
.byte $10, $00, $10, $10, $10, $00, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10
.byte $ec, $80, $be, $f6, $fe, $be, $be, $ff, $39, $3f, $5f, $5f, $15, $1f, $5f, $40
.byte $92, $d6, $92, $92, $92, $d6, $92, $92, $28, $44, $28, $10, $28, $44, $28, $10
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $07, $08, $10, $10, $20, $40, $80, $00, $00, $07, $08, $00, $1f, $3f, $7f
.byte $00, $ff, $11, $08, $08, $ff, $00, $16, $00, $00, $ff, $ff, $ff, $ff, $ff, $e9
.byte $89, $8f, $02, $8e, $88, $8f, $01, $91, $76, $70, $fc, $f0, $f0, $f0, $fe, $6e
.byte $10, $38, $10, $00, $00, $00, $00, $00, $38, $7c, $7c, $38, $38, $10, $10, $10
.byte $1f, $1f, $1f, $1b, $1b, $3f, $7b, $fb, $0f, $06, $0e, $04, $05, $11, $35, $00
.byte $f0, $f0, $f0, $b0, $b0, $f8, $bc, $bc, $e0, $c0, $e0, $40, $40, $10, $58, $00
.byte $05, $05, $07, $06, $0c, $18, $1a, $10, $03, $02, $00, $01, $03, $07, $07, $0f
.byte $df, $90, $10, $10, $1f, $11, $93, $12, $3f, $7f, $ff, $ff, $ff, $fe, $fc, $fd
.byte $f7, $13, $11, $10, $f0, $17, $97, $90, $f9, $fc, $fe, $ff, $ff, $ff, $7f, $7f
.byte $40, $40, $c0, $c0, $60, $30, $30, $10, $80, $80, $00, $00, $80, $c0, $c0, $e0
.byte $08, $08, $04, $04, $04, $04, $ac, $ac, $f0, $f0, $f8, $f8, $f8, $f8, $f8, $f8
.byte $3f, $7f, $ff, $ff, $ff, $fc, $ff, $ff, $00, $3f, $60, $5f, $58, $5b, $5b, $1b
.byte $ff, $ff, $ff, $ff, $ff, $18, $df, $df, $00, $ff, $00, $ff, $10, $f7, $f7, $f7
.byte $f0, $f8, $fc, $fe, $ff, $1f, $df, $df, $00, $f0, $08, $f4, $1a, $ea, $ea, $ea
.byte $00, $00, $00, $d6, $40, $da, $00, $00, $00, $00, $00, $ff, $93, $77, $00, $00
.byte $01, $02, $02, $05, $07, $07, $07, $03, $00, $01, $01, $02, $00, $02, $01, $00
.byte $00, $78, $f8, $f8, $ff, $ff, $fc, $ff, $ff, $87, $07, $07, $00, $00, $03, $00
.byte $05, $00, $00, $0f, $f0, $80, $01, $ff, $fa, $ff, $ff, $f0, $0f, $7f, $fe, $00
.byte $3f, $17, $1d, $d5, $75, $0f, $e6, $fc, $c0, $e8, $e2, $2a, $8a, $f0, $18, $00
.byte $00, $10, $10, $10, $00, $00, $00, $00, $00, $10, $38, $38, $10, $10, $10, $10
.byte $00, $00, $00, $00, $00, $00, $00, $00, $07, $03, $01, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $e0, $c0, $80, $00, $00, $00, $00, $00
.byte $1f, $08, $0f, $05, $04, $07, $03, $03, $00, $07, $00, $02, $03, $00, $01, $00
.byte $fa, $4e, $42, $fe, $3e, $e2, $ff, $ff, $0d, $fd, $fd, $01, $c1, $1d, $4c, $00
.byte $bf, $e4, $85, $ff, $f8, $8f, $ff, $ff, $60, $7f, $7e, $00, $07, $70, $65, $00
.byte $f0, $20, $e0, $40, $40, $c0, $80, $80, $00, $c0, $00, $80, $80, $00, $00, $00
.byte $ac, $ac, $ac, $04, $84, $c4, $64, $2a, $f8, $f8, $f8, $f8, $78, $38, $98, $d4
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $38, $4c, $c6, $c6, $c6, $64, $38, $00, $38, $4c, $c6, $c6, $c6, $64, $38, $00
.byte $18, $38, $18, $18, $18, $18, $7e, $00, $18, $38, $18, $18, $18, $18, $7e, $00
.byte $7c, $c6, $0e, $3c, $78, $e0, $fe, $00, $7c, $c6, $0e, $3c, $78, $e0, $fe, $00
.byte $7e, $0c, $18, $3c, $06, $c6, $7c, $00, $7e, $0c, $18, $3c, $06, $c6, $7c, $00
.byte $1c, $3c, $6c, $cc, $fe, $0c, $0c, $00, $1c, $3c, $6c, $cc, $fe, $0c, $0c, $00
.byte $fc, $c0, $fc, $06, $06, $c6, $7c, $00, $fc, $c0, $fc, $06, $06, $c6, $7c, $00
.byte $3c, $60, $c0, $fc, $c6, $c6, $7c, $00, $3c, $60, $c0, $fc, $c6, $c6, $7c, $00
.byte $fe, $c6, $0c, $18, $30, $30, $30, $00, $fe, $c6, $0c, $18, $30, $30, $30, $00
.byte $7c, $c6, $c6, $7c, $c6, $c6, $7c, $00, $7c, $c6, $c6, $7c, $c6, $c6, $7c, $00
.byte $7c, $c6, $c6, $7e, $06, $0c, $78, $00, $7c, $c6, $c6, $7e, $06, $0c, $78, $00
.byte $38, $6c, $c6, $c6, $fe, $c6, $c6, $00, $38, $6c, $c6, $c6, $fe, $c6, $c6, $00
.byte $fc, $c6, $c6, $fc, $c6, $c6, $fc, $00, $fc, $c6, $c6, $fc, $c6, $c6, $fc, $00
.byte $3c, $66, $c0, $c0, $c0, $66, $3c, $00, $3c, $66, $c0, $c0, $c0, $66, $3c, $00
.byte $f8, $cc, $c6, $c6, $c6, $cc, $f8, $00, $f8, $cc, $c6, $c6, $c6, $cc, $f8, $00
.byte $fe, $c0, $c0, $fc, $c0, $c0, $fe, $00, $fe, $c0, $c0, $fc, $c0, $c0, $fe, $00
.byte $fe, $c0, $c0, $fc, $c0, $c0, $c0, $00, $fe, $c0, $c0, $fc, $c0, $c0, $c0, $00
.byte $3e, $60, $c0, $ce, $c6, $66, $3e, $00, $3e, $60, $c0, $ce, $c6, $66, $3e, $00
.byte $c6, $c6, $c6, $fe, $c6, $c6, $c6, $00, $c6, $c6, $c6, $fe, $c6, $c6, $c6, $00
.byte $7e, $18, $18, $18, $18, $18, $7e, $00, $7e, $18, $18, $18, $18, $18, $7e, $00
.byte $1e, $06, $06, $06, $c6, $c6, $7c, $00, $1e, $06, $06, $06, $c6, $c6, $7c, $00
.byte $c6, $cc, $d8, $f0, $f8, $dc, $ce, $00, $c6, $cc, $d8, $f0, $f8, $dc, $ce, $00
.byte $60, $60, $60, $60, $60, $60, $7e, $00, $60, $60, $60, $60, $60, $60, $7e, $00
.byte $c6, $ee, $fe, $fe, $d6, $c6, $c6, $00, $c6, $ee, $fe, $fe, $d6, $c6, $c6, $00
.byte $c6, $e6, $f6, $fe, $de, $ce, $c6, $00, $c6, $e6, $f6, $fe, $de, $ce, $c6, $00
.byte $7c, $c6, $c6, $c6, $c6, $c6, $7c, $00, $7c, $c6, $c6, $c6, $c6, $c6, $7c, $00
.byte $fc, $c6, $c6, $c6, $fc, $c0, $c0, $00, $fc, $c6, $c6, $c6, $fc, $c0, $c0, $00
.byte $7c, $c6, $c6, $c6, $de, $cc, $7a, $00, $7c, $c6, $c6, $c6, $de, $cc, $7a, $00
.byte $fc, $c6, $c6, $ce, $f8, $dc, $ce, $00, $fc, $c6, $c6, $ce, $f8, $dc, $ce, $00
.byte $78, $cc, $c0, $7c, $06, $c6, $7c, $00, $78, $cc, $c0, $7c, $06, $c6, $7c, $00
.byte $7e, $18, $18, $18, $18, $18, $18, $00, $7e, $18, $18, $18, $18, $18, $18, $00
.byte $c6, $c6, $c6, $c6, $c6, $c6, $7c, $00, $c6, $c6, $c6, $c6, $c6, $c6, $7c, $00
.byte $c6, $c6, $c6, $ee, $7c, $38, $10, $00, $c6, $c6, $c6, $ee, $7c, $38, $10, $00
.byte $c6, $c6, $d6, $fe, $fe, $ee, $c6, $00, $c6, $c6, $d6, $fe, $fe, $ee, $c6, $00
.byte $c6, $ee, $7c, $38, $7c, $ee, $c6, $00, $c6, $ee, $7c, $38, $7c, $ee, $c6, $00
.byte $66, $66, $66, $3c, $18, $18, $18, $00, $66, $66, $66, $3c, $18, $18, $18, $00
.byte $fe, $0e, $1c, $38, $70, $e0, $fe, $00, $fe, $0e, $1c, $38, $70, $e0, $fe, $00
.byte $00, $00, $00, $3c, $3c, $00, $00, $00, $00, $00, $00, $3c, $3c, $00, $00, $00
.byte $00, $00, $00, $30, $30, $10, $20, $00, $00, $00, $00, $30, $30, $10, $20, $00
.byte $18, $18, $00, $00, $00, $00, $00, $00, $18, $18, $00, $00, $00, $00, $00, $00
.byte $10, $08, $7c, $7e, $7c, $08, $10, $00, $10, $08, $7c, $7e, $7c, $08, $10, $00
.byte $0c, $1c, $1c, $18, $00, $60, $60, $00, $0c, $1c, $1c, $18, $00, $60, $60, $00
.byte $00, $00, $04, $00, $00, $00, $00, $00, $00, $6c, $fa, $fe, $7c, $38, $10, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $07, $0b, $0d, $0e, $00, $6f, $77, $38, $50, $60, $60, $60
.byte $00, $00, $00, $00, $ff, $ff, $ff, $00, $00, $ff, $ff, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $c0, $a0, $60, $e0, $00, $ec, $dc, $38, $14, $0c, $0c, $0c
.byte $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $60, $60, $60, $60, $60, $60, $60, $60
.byte $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c
.byte $0e, $0d, $0b, $07, $00, $00, $00, $00, $60, $60, $60, $50, $38, $77, $6f, $00
.byte $00, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $00
.byte $e0, $60, $a0, $c0, $00, $00, $00, $00, $0c, $0c, $0c, $14, $38, $dc, $ec, $00
.byte $00, $00, $00, $00, $0f, $08, $08, $08, $f0, $cf, $bf, $b0, $60, $60, $60, $60
.byte $00, $00, $00, $00, $ff, $00, $00, $00, $00, $ff, $ff, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $f0, $10, $10, $10, $0f, $f3, $fd, $0d, $06, $06, $06, $06
.byte $08, $08, $08, $08, $08, $08, $08, $08, $60, $60, $60, $60, $60, $60, $60, $60
.byte $10, $10, $10, $10, $10, $10, $10, $10, $06, $06, $06, $06, $06, $06, $06, $06
.byte $08, $08, $08, $0f, $00, $00, $00, $00, $60, $60, $60, $60, $b0, $bf, $cf, $f0
.byte $00, $00, $00, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $00
.byte $10, $10, $10, $f0, $00, $00, $00, $00, $06, $06, $06, $06, $0d, $fd, $f3, $0f
.byte $00, $00, $00, $00, $00, $3e, $3e, $3e, $00, $00, $00, $00, $00, $1e, $22, $22
.byte $00, $00, $00, $00, $00, $fb, $fb, $fb, $00, $00, $00, $00, $00, $79, $8a, $8a
.byte $00, $00, $00, $00, $00, $e0, $e0, $e0, $00, $00, $00, $00, $00, $e0, $20, $20
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $fb, $fb, $fb, $00, $00, $00, $00, $00, $79, $9a, $ba
.byte $00, $00, $00, $00, $00, $e0, $e0, $e0, $00, $00, $00, $00, $00, $e0, $60, $e0
.byte $00, $00, $00, $00, $00, $20, $18, $10, $00, $00, $00, $00, $00, $1e, $26, $2e
.byte $00, $00, $00, $00, $00, $80, $60, $40, $00, $00, $00, $00, $00, $78, $98, $b8
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $3e, $3e, $3e, $3e, $00, $00, $00, $00, $1e, $26, $2e, $3e
.byte $00, $00, $00, $00, $fb, $fb, $fb, $fb, $00, $00, $00, $00, $79, $9a, $ba, $fb
.byte $00, $00, $00, $00, $e0, $e0, $e0, $e0, $00, $00, $00, $00, $e0, $60, $e0, $e0
.byte $00, $00, $00, $00, $20, $18, $10, $00, $00, $00, $00, $00, $1e, $26, $2e, $3e
.byte $00, $00, $00, $00, $82, $61, $41, $00, $00, $00, $00, $00, $79, $9a, $ba, $fb
.byte $00, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $00, $e0, $60, $e0, $e0
.byte $00, $00, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $00, $00, $00, $ff, $ff, $00
.byte $3e, $3e, $00, $00, $00, $00, $00, $00, $22, $3e, $00, $00, $00, $00, $00, $00
.byte $fb, $fb, $00, $f8, $f8, $f8, $f8, $f8, $8a, $fb, $00, $78, $88, $88, $88, $f8
.byte $e0, $e0, $00, $00, $00, $00, $00, $00, $20, $e0, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $3e, $3e, $3e, $3e, $3e, $00, $00, $00, $1e, $26, $2e, $3e, $3e
.byte $fb, $fb, $00, $f8, $f8, $f8, $f8, $f8, $fb, $fb, $00, $78, $98, $b8, $f8, $f8
.byte $e0, $e0, $00, $00, $00, $00, $00, $00, $e0, $e0, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $3e, $3e, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $82, $61, $41, $00, $00, $f8, $f8, $00, $79, $9a, $ba, $fb, $fb
.byte $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $00, $e0, $60, $e0, $e0, $e0
.byte $3e, $00, $00, $00, $00, $00, $00, $00, $3e, $00, $00, $00, $00, $00, $00, $00
.byte $fb, $00, $03, $03, $03, $03, $03, $00, $fb, $00, $01, $02, $02, $03, $03, $00
.byte $e0, $00, $e0, $e0, $e0, $e0, $e0, $00, $e0, $00, $e0, $60, $e0, $e0, $e0, $00
.byte $00, $00, $20, $18, $10, $00, $00, $00, $3e, $00, $1e, $26, $2e, $3e, $3e, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $fb, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $e0, $00, $00, $00, $00, $00, $00, $00
.byte $e0, $b0, $80, $f0, $18, $98, $f0, $00, $e0, $b0, $80, $f0, $18, $98, $f0, $00
.byte $00, $00, $00, $00, $00, $07, $07, $07, $00, $00, $00, $00, $00, $07, $04, $04
.byte $00, $00, $00, $00, $00, $df, $df, $df, $00, $00, $00, $00, $00, $df, $51, $51
.byte $07, $07, $00, $07, $07, $07, $07, $07, $04, $07, $00, $07, $04, $04, $04, $07
.byte $df, $df, $00, $df, $df, $df, $df, $df, $51, $df, $00, $df, $51, $51, $51, $df
.byte $fb, $fb, $fb, $fb, $fb, $00, $00, $00, $79, $8a, $8a, $8a, $fb, $00, $00, $00
.byte $ef, $ef, $ef, $ef, $ef, $00, $00, $00, $e7, $28, $28, $28, $ef, $00, $00, $00
.byte $be, $be, $be, $be, $be, $00, $00, $00, $9e, $a2, $a2, $a2, $be, $00, $00, $00
.byte $fe, $80, $80, $80, $80, $80, $80, $80, $00, $7e, $7e, $7e, $7e, $7e, $7e, $7e
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $0e, $1b, $18, $0f, $01, $19, $0f, $00, $0e, $1b, $18, $0f, $01, $19, $0f, $00
.byte $7e, $7e, $18, $18, $98, $98, $18, $00, $7e, $7e, $18, $18, $98, $98, $18, $00
.byte $31, $79, $cc, $cc, $fc, $cc, $cc, $00, $31, $79, $cc, $cc, $fc, $cc, $cc, $00
.byte $fb, $fb, $63, $63, $63, $63, $63, $00, $fb, $fb, $63, $63, $63, $63, $63, $00
.byte $39, $6d, $60, $3c, $06, $66, $3c, $00, $39, $6d, $60, $3c, $06, $66, $3c, $00
.byte $fb, $fb, $63, $63, $63, $63, $63, $00, $fb, $fb, $63, $63, $63, $63, $63, $00
.byte $18, $3d, $61, $60, $60, $65, $38, $00, $18, $3d, $61, $60, $60, $65, $38, $00
.byte $ff, $80, $80, $80, $80, $80, $80, $80, $00, $7f, $7f, $7f, $7f, $7f, $7f, $7f
.byte $fe, $00, $00, $00, $00, $00, $00, $00, $00, $fe, $fe, $fe, $fe, $fe, $fe, $fe
.byte $ff, $80, $80, $80, $80, $80, $80, $80, $00, $7f, $7f, $7f, $7f, $7f, $7f, $7e
.byte $fe, $00, $00, $00, $00, $00, $00, $80, $00, $fe, $fe, $fe, $fe, $fe, $fe, $7e
.byte $81, $80, $80, $80, $80, $80, $80, $80, $7e, $7f, $7f, $7f, $7f, $7f, $7f, $7e
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $fe
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $80, $80, $80, $80, $80, $80, $80, $80, $7e, $7e, $7e, $7e, $7e, $7e, $7e, $7e
.byte $ff, $80, $80, $80, $80, $80, $80, $00, $00, $7f, $7f, $7f, $7f, $7f, $7f, $00
.byte $ff, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $00
.byte $fe, $00, $00, $00, $00, $00, $00, $00, $00, $fe, $fe, $fe, $fe, $fe, $fe, $00
.byte $fe, $fe, $fe, $fe, $fe, $fe, $fe, $00, $7e, $82, $82, $82, $82, $82, $fe, $00
.byte $80, $60, $40, $00, $00, $00, $00, $00, $7e, $9e, $be, $fe, $fe, $fe, $fe, $00
.byte $fe, $fe, $fe, $fe, $fe, $fe, $fe, $00, $7e, $9e, $be, $fe, $fe, $fe, $fe, $00
.byte $00, $7f, $bf, $df, $e0, $e0, $e0, $e0, $00, $00, $00, $00, $00, $07, $0b, $0c
.byte $00, $fc, $fa, $f6, $0e, $0e, $0e, $0e, $00, $00, $00, $00, $00, $c0, $a0, $60
.byte $80, $80, $80, $80, $80, $80, $80, $00, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $00
.byte $81, $80, $80, $80, $80, $80, $80, $00, $7e, $7f, $7f, $7f, $7f, $7f, $7f, $00
.byte $80, $00, $00, $00, $00, $00, $00, $00, $7e, $fe, $fe, $fe, $fe, $fe, $fe, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
.byte $00, $00, $00, $00, $00, $00, $00, $80, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $7e
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $80, $80, $80, $80, $80, $80, $80, $00, $7e, $7e, $7e, $7e, $7e, $7e, $7e, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $1c, $3e, $7f, $7f, $7f, $7f
.byte $00, $00, $00, $00, $10, $08, $08, $00, $00, $00, $38, $7c, $ee, $f6, $f6, $fe
.byte $00, $00, $00, $00, $00, $00, $00, $00, $3f, $3f, $1f, $0f, $07, $03, $01, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $fc, $fc, $f8, $f0, $e0, $c0, $80, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $e0, $e0, $e0, $e0, $df, $bf, $7f, $00, $0c, $0b, $07, $00, $00, $00, $00, $00
.byte $0e, $0e, $0e, $0e, $f6, $fa, $fc, $00, $60, $a0, $c0, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $01, $03, $07, $07, $07, $03, $01, $00, $00, $01, $03, $03, $03, $01, $00
.byte $00, $e0, $f0, $98, $28, $8e, $f1, $fe, $00, $00, $a0, $f0, $d8, $f8, $fe, $f0
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $0f, $08, $08, $08, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $f0, $10, $10, $10, $00, $00, $00, $00, $00, $00, $00, $00
.byte $fe, $fe, $fe, $fe, $fe, $fe, $fe, $00, $7e, $82, $82, $82, $82, $82, $fe, $00
.byte $80, $60, $40, $00, $00, $00, $00, $00, $7e, $9e, $be, $fe, $fe, $fe, $fe, $00
.byte $fe, $fe, $fe, $fe, $fe, $fe, $fe, $00, $7e, $9e, $be, $fe, $fe, $fe, $fe, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $09, $04, $56, $00, $00, $00, $00, $01, $06, $03, $a1
.byte $01, $00, $00, $00, $04, $08, $bf, $1f, $00, $00, $00, $f0, $b8, $f6, $40, $e0
.byte $f0, $f0, $f0, $78, $78, $7c, $3c, $bc, $e0, $60, $60, $30, $30, $38, $18, $18
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $08, $08, $08, $08, $08, $08, $08, $08, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $10, $10, $10, $10, $10, $10, $10, $10, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $3e, $4f, $a7, $00, $00, $00, $00, $00, $00, $30, $58
.byte $00, $00, $00, $00, $00, $00, $80, $c0, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $3e, $7f, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $1c, $9c, $ff, $7f, $ff, $ff, $ff, $ff, $e3, $63, $60, $20, $00, $58, $cc, $ef
.byte $5f, $3f, $7f, $df, $ff, $ff, $ff, $ff, $a0, $c0, $80, $20, $00, $00, $30, $78
.byte $fc, $f8, $f8, $f0, $f0, $f0, $e0, $e0, $00, $00, $00, $00, $00, $00, $00, $00
.byte $07, $07, $07, $07, $07, $07, $03, $01, $03, $03, $03, $03, $03, $03, $00, $00
.byte $c0, $c0, $e0, $e0, $f0, $f8, $fc, $fc, $80, $80, $c0, $c0, $c0, $30, $d8, $00
.byte $08, $08, $08, $0f, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $10, $10, $10, $f0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $07, $0f, $0f, $04, $00, $00, $00, $00, $01, $07, $04, $00, $00, $00, $00, $00
.byte $87, $cf, $bf, $83, $41, $31, $11, $3f, $78, $b0, $40, $7c, $3e, $0e, $0f, $1f
.byte $c0, $e0, $e0, $f0, $f8, $c4, $fa, $fd, $00, $00, $00, $00, $00, $38, $04, $02
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $01, $07, $0f, $0f, $05, $00, $00, $00, $00, $01, $07, $05, $00, $00, $00, $00
.byte $cf, $a7, $87, $cf, $ff, $47, $33, $17, $30, $58, $78, $b0, $00, $38, $0c, $0c
.byte $c0, $c0, $e0, $e0, $f0, $f0, $f8, $1c, $00, $00, $00, $00, $00, $00, $04, $e3
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $ff, $7f, $7c, $3e, $3e, $3e, $7e, $7c, $73, $30, $38, $1c, $0c, $14, $3c, $38
.byte $fe, $f9, $7f, $7f, $7f, $3f, $18, $00, $78, $30, $39, $3f, $3f, $18, $00, $00
.byte $00, $f0, $f8, $fc, $fc, $fe, $3e, $1e, $00, $00, $f0, $d8, $e8, $34, $14, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $01, $03, $07, $07, $07, $03, $01, $01, $00, $01, $03, $03, $03, $01, $00, $00
.byte $e0, $f0, $98, $28, $8e, $f1, $fe, $f0, $00, $a0, $f0, $d8, $f8, $fe, $f0, $e0
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $3e, $20, $20, $20, $20, $20, $20, $20, $1f, $1f, $1f, $1f, $1f, $1f, $1f, $1f
.byte $ee, $ef, $e7, $79, $3e, $3f, $3e, $1e, $11, $10, $18, $86, $c1, $c0, $c0, $e0
.byte $c0, $30, $c8, $f4, $08, $f0, $00, $00, $00, $c0, $30, $08, $f0, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $3f, $3b, $23, $23, $21, $21, $21, $20, $1c, $1c, $1c, $1c, $1e, $1e, $1e, $1f
.byte $ef, $f7, $ba, $bd, $9e, $ef, $f0, $ff, $10, $08, $45, $42, $61, $10, $0f, $00
.byte $20, $c0, $00, $80, $40, $a0, $40, $80, $c0, $20, $c0, $00, $80, $40, $80, $00
.byte $78, $78, $70, $20, $00, $00, $00, $00, $00, $30, $20, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $1e, $0e, $04, $00, $00, $00, $00, $00, $0c, $04, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $09, $00, $52, $19, $00, $01, $05, $03, $06, $47, $ad, $e6
.byte $00, $80, $00, $01, $0c, $0b, $3f, $bf, $20, $68, $fe, $be, $f2, $f4, $c0, $50
.byte $f0, $f0, $78, $78, $7c, $3c, $bc, $fc, $60, $60, $30, $30, $38, $18, $18, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $20, $16, $1f, $1f, $1f, $1f, $3f, $3f, $1f, $09, $06, $0b, $04, $00, $1c, $00
.byte $1e, $1e, $9c, $fc, $fe, $ff, $e0, $ff, $e0, $e0, $60, $80, $c0, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $20, $60, $f0, $f0, $fe, $7f, $7f, $7f, $1f, $1f, $6f, $2f, $51, $06, $05, $00
.byte $fc, $7c, $7c, $7c, $fc, $fe, $ff, $f0, $00, $80, $80, $80, $00, $00, $c0, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $bd, $3f, $7f, $3f, $3f, $1f, $1f, $0f, $42, $c0, $20, $00, $18, $0c, $0f, $03
.byte $7f, $ff, $df, $ff, $ff, $ff, $ff, $ff, $80, $00, $20, $00, $00, $30, $78, $79
.byte $f8, $f8, $f0, $f0, $f0, $e0, $e0, $c0, $00, $00, $00, $00, $00, $00, $00, $80
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $07, $03, $07, $07, $07, $07, $03, $07, $00, $01, $03, $03, $03, $03, $01, $03
.byte $ff, $ff, $e0, $e0, $c0, $c0, $c0, $c0, $f7, $e0, $40, $c0, $80, $80, $80, $80
.byte $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

.segment "VECTORS"

.addr NMI, Reset, IRQ

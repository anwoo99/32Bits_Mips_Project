main:
    # 산술
    addi    $t0,    $zero,  0x11    # $t0 = 0x00000011
    addi    $t1,    $t0,    0x01    # $t1 = 0x00000012
    add     $t2,    $t1,    $t0     # $t2 = $t1 + $t0 = 0x00000023
    sub     $t2,    $t1,    $t0     # $t2 = $t1 - $t0 = 0x00000001
    
    # 논리
    and     $t4,    $t0,    $t1     # $t4 = $t0 & $t1 = 0x00000010
    or      $t4,    $t0,    $t1     # $t4 = $t0 | $t1 = 0x00000013
    nor     $t4,    $t0,    $t1     # $t4 = $t0 ~| $t1 = 0xFFFFFFDC
    slt     $t4,    $t0,    $t1     # t4 = 1

    # 쉬프트
    sll     $t5,    $t0,    3       # $t5 = 0x88
    srl     $t6,    $t5     3       # $t6 = 0x11     

    # 분기
    bne     $t5,    $t6,    label    # if $t5 != $t6 label()[0x30]
    jal     label
    jr      $t5

label:
    nop
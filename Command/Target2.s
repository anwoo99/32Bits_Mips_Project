main:
    addiu   $ra,    $zero,  0x80        # $rs = 0x00000080
    addiu   $t0,    $zero,  0x11        # $t0 = 0x00000011
    addiu   $t1,    $t0,    0x01        # $t1 = 0x00000012
    add     $t2,    $t1,    $t0         # $t2 = $t1 + $t0 = 0x00000023
    addu    $t3,    $t2,    $t1         # $t3 = $t2 + $t1 = 0x00000035
    sub     $t2,    $t1,    $t0         # $t2 = $t1 - $t0 = 0x00000001

    and     $t2,    $t0,    $t1         # $t2 = $t0 & $t1 = 0x00000010
    andi    $t3,    $t0,    0x00000012  # $t3 = $t0 & 0x00000012 = 0x00000010
    or      $t2,    $t0,    $t1         # $t2 = $t0 | $t1 = 0x00000013
    ori     $t3,    $t0,    0x00000012  # $t3 = $t0 | 0x00000012 = 0x00000013
    nor     $t2,    $t0,    $t1         # $t2 = $t0 ~| $t1 = 0xFFFFFFEC

    slt     $t2,    $t0,    $t1         # t2 = 1
    slti    $t3,    $t0,    0x00000012  # t3 = 1
    sltu    $t4,    $t0,    $t1         # t4 = 1

    sll     $t2,    $t0,    3           # $t2 = 0x88
    srl     $t3,    $t2,    3           # $t3 = 0x11
    sra     $t4,    $t2,    3           # $t4 = 0xF1

    bne     $t2,    $t3,    test1       # if $t2 != $t3 goto test1(0x60)
    bne     $t0,    $t2,    test1       # if $t0 != $t2 goto test1(0x60)

test1:
    jal     test2                       # Jump to test2(0x70)
    jr      $ra                         # Jump to test3(0x80)

test2:
    nop     

test3:
    syscall 
    mfc0    $t0,    $12
    mtc0    $t0,    $12
    eret    

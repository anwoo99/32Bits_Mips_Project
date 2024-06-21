main:
    # 0x00
    addiu   $t0,    $zero,  0x11        # $t0 = 0x00000011
    addiu   $t1,    $t0,    0x01        # $t1 = 0x00000012
    add     $t2,    $t1,    $t0         # $t2 = $t1 + $t0 = 0x00000023
    addu    $t3,    $t2,    $t1         # $t3 = $t2 + $t1 = 0x00000035
    sub     $t2,    $t1,    $t0         # $t2 = $t1 - $t0 = 0x00000001

    # 0x07
    and     $t2,    $t0,    $t1         # $t2 = $t0 & $t1 = 0x00000010
    andi    $t3,    $t0,    0x00000012  # $t3 = $t0 & 0x00000012 = 0x00000010
    or      $t2,    $t0,    $t1         # $t2 = $t0 | $t1 = 0x00000013
    ori     $t3,    $t0,    0x00000012  # $t3 = $t0 | 0x00000012 = 0x00000013
    nor     $t2,    $t0,    $t1         # $t2 = $t0 ~| $t1 = 0xFFFFFFEC

    # 0x0c
    slt     $t2,    $t0,    $t1         # t2 = 1
    slti    $t3,    $t0,    0x00000012  # t3 = 1
    sltu    $t4,    $t0,    $t1         # t4 = 1

    # 0x0f
    sll     $t2,    $t0,    0x1b        # $t2 = 0x88000000
    srl     $t3,    $t2,    0x1b        # $t3 = 0x00000011
    sra     $t4,    $t2,    0x1b        # $t4 = 0xFFFFFFF1

    #0x12
    bne     $t0,    $t3,    test1       # if $t2 != $t3 goto test1(0x1c) => No Branch
    bne     $t0,    $t2,    test1       # if $t0 != $t2 goto test1(0x1c) => Start to Branch

test1:                                  # 0x1c
    jal     test2                       # Jump to test2(0x20)
    

test2:                                  # 0x20
    jr      $ra                         # return to  test1(0x1d)

test3:                                  # 0x24
    syscall 
    mfc0    $t0,    $12
    mtc0    $t0,    $12
    eret    

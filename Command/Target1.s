    addi    $t0,    $zero,  10
    addi    $t1,    $zero,  20
    addi    $t2,    $zero,  0x1000
    addi    $t3,    $zero,  50
    sw      $t3,    0($t2)
    addi    $t2,    $t0,    5
    lw      $t3,    0($t2)
    sw      $t3,    4($t2)
    beq     $t0,    $t1,    label
    j       end

label:    add     $t4,    $t0,    $t1
end:    nop     
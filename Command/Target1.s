main:
    addi    $t0,    $zero,  10      # $t0 = 10
    addi    $t1,    $zero,  0x1000  # $t2 = 0x1000
    beq     $t0,    $t1,    end     # No Branch
    sw      $t0,    0($t1)          # Memory[0x1000] = 10
    lw      $t2,    0($t1)          # $t2 = Memory[$t1] = 10 (Memory[0x1000])
    beq     $t0,    $t2,    label   # Branch to label(0x08)

# 0x08
label:
    add     $t4,    $t0,    $t1     # $t4 = $t0 + $t1
    j       end                     # Branch to end(0x0c)

# 0x0c
end:
    nop                             # end of program
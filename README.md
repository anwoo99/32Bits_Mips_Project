# 32Bits_Mips_Project
IC-PBL 32Bit Mips Single Cycle Processor 설계 및 검증

## 사용 프로그램
[Logisim 다운로드](https://logisim.softonic.kr/)

## Main Source Code
[./Source/PBL_MIps_32Bit_Single_Cycle_Processor.circ 바로가기](./Source/PBL_MIps_32Bit_Single_Cycle_Processor.circ)

## Assembler
Assembler는 [`Mars4_5.jar`](./Assembler/Mars4_5.jar) 프로그램을 사용하였으며, Logisim Instruction Memory에 데이터를 입력하는 과정은 아래와 같다.

1. `Mars4_5.jar` 프로그램 실행
2. `Settings` -> `Memory Configuration` / `Compact, Data Address at 0` 로 설정 변경
3. Assembly code 열기
4. `Run` -> `Assemble`
5. `File` -> `Dump Memory` 후 `Hexadecimal Test` 설정값 선택
6. Hex 파일 열어서 맨 윗 줄에 `v2.0 raw` 추가
7. `Instruction Memory`에 Load
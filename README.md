# VLSI Project Nhom5 — 16-bit Zero Leading Counter (ZLC)

## Gioi thieu

Thiet ke mach **16-bit Zero Leading Counter (ZLC)** — dem so luong bit 0 lien tiep
tinh tu MSB (Most Significant Bit) cua tu nhao 16-bit. Mach duoc thiet ke theo
quy trinh hoan chinh tu schematic, simulation, layout, DRC, LVS den
post-layout simulation va timing analysis, su dung **SkyWater SKY130** (sky130_fd_sc_hd).

Vi du: `16'b0001011000100000` co 3 so 0 dau tien => ngo ra `Y = 5'b00011`.

## Thong so thiet ke

| Thong so    | Gia tri                  |
|-------------|--------------------------|
| Ngo vao     | A[15:0]                  |
| Ngo ra      | Y[4:0]                   |
| Kieu mach   | To hop (combinational)   |
| Cong nghe   | SKY130 (sky130_fd_sc_hd) |
| Dien ap     | 1.8V                     |

## Kien truc mach

Mach gom 2 tang:

1. **Tang 1: 4 khoi zlc_4bit (x1..x4)**
   - Moi khoi nhan 4-bit tuong ung (A[15:12], A[11:8], A[7:4], A[3:0])
   - Xuat ra 3-bit ma Z{2:0}:
     - `Z[2]` = 1 neu ca 4 bit deu bang 0
     - `Z[1]` = 1 neu 2 bit MSB bang 0
     - `Z[0]` = ma hoa vi tri bit 1 dau tien trong 4-bit

2. **Tang 2: Mach giai ma tong hop (x5..x18)**
   - Ghep 4 bo Z[2:0] tu 4 khoi zlc_4bit de tinh toan tong so
   - Su dung cac cell: AND4, NAND2, AND3, INV, AND2, OR2, MUX2

### Danh sach cells su dung

| Standard cell           | So luong |
|-------------------------|----------|
| sky130_fd_sc_hd__nor4_1 |     4    |
| sky130_fd_sc_hd__nor2_1 |     4    |
| sky130_fd_sc_hd__or2_1  |     8    |
| sky130_fd_sc_hd__and2_1 |     12   |
| sky130_fd_sc_hd__inv_1  |     8    |
| sky130_fd_sc_hd__and4_1 |     1    |
| sky130_fd_sc_hd__nand2_1|     1    |
| sky130_fd_sc_hd__and3_1 |     1    |
| sky130_fd_sc_hd__mux2_1 |     6    |

## Cau truc thu muc

```
VLSI_Project_Nhom5/
├── xschem/         # Schematic (sch), symbol (sym), verilog (v), spice netlist
├── iverilog/       # Functional simulation (testbench, VCD, run script)
├── magic/          # Layout (mag), GDS, extracted spice
├── ngspice/        # Post-layout simulation (parasitic extraction)
├── netgen/         # LVS verification
├── opensta/        # Static Timing Analysis (OpenSTA)

```

## Quy trinh thiet ke

### 1. Thiet ke schematic (xschem)

- Thiet ke **zlc_4bit** (4-bit zero leading counter)
- Thiet ke **zlc_16bit** gom 4 khoi zlc_4bit + mach giai ma tong hop
- Xuat Verilog va SPICE netlist tu xschem

| File                     | Mo ta                          |
|--------------------------|--------------------------------|
| `xschem/zlc_16bit.sch`   | Schematic ZLC 16-bit           |
| `xschem/zlc_4bit.sch`    | Schematic ZLC 4-bit (cell con) |
| `xschem/zlc_16bit.v`     | Verilog netlist                |
| `xschem/zlc_4bit.v`      | Verilog netlist                |
| `xschem/zlc_16bit.spice` | SPICE netlist                  |
| `xschem/zlc_16bit.sym`   | Symbol cho schematic           |

### 2. Functional simulation (iverilog)

- Testbench: `iverilog/zlc_16bit_tb.v`
- Kiem tra toan bo 65536 gia tri nhao + cac test corner
- Su dung `iverilog` + `vvp`, standard cell tu PDK
- File VCD: `zlc_16bit.vcd`

**Ket qua: TEST PASSED — toan bo directed + exhaustive (65536) cases.**

Cu phap chay:
```bash
cd iverilog
./run zlc_16bit_tb
gtkwave zlc_16bit.vcd &
```

### 3. Thiet ke Layout (Magic)

- Layout duoc thuc hien trong **Magic VLSI**:
  - Bo tri tap trung 4 khoi zlc_4bit xep doc
  - Mach giai ma (Y[4:0]) dat o phia tren
  - Power rails (VDD/GND) bang metal1 chay ngang
  - Tap cells (TAP) de dam bao DRC
- Tat ca I/O ports duoc dan ra bien cua layout
- Layout co ty le can doi (hinh chu nhat)

| File                        | Mo ta                                |
|-----------------------------|--------------------------------------|
| `magic/zlc_16bit.mag`       | Layout chinh                         |
| `magic/zlc_16bit.spice`     | SPICE netlist tu layout              |
| `magic/zlc_16bit.rcx.spice` | Netlist co parasitic (RC extraction) |
| `magic/zlc_4bit.mag`        | Layout cell zlc_4bit                 |

### 4. LVS Verification (netgen)

- So sanh schematic netlist (`xschem/zlc_16bit.spice`) vs layout netlist (`magic/zlc_16bit.spice`)
- Su dung **netgen** vao LVS tool

**Ket qua: Circuits match uniquely!**

```
Subcircuit summary:
Circuit 1: zlc_16bit  | Circuit 2: zlc_16bit
--------------------------------------------
Number of devices: 18 | Number of devices: 18
Number of nets: 44    | Number of nets: 44
```

```bash
cd netgen
./lvs zlc_16bit
```

### 5. Post-layout Simulation (ngspice)

- Trich xuat parasitic RC tu layout (`zlc_16bit.rcx.spice`)
- Mo phong voi **ngspice** kiem tra hoat dong sau layout
- Kich thich test: PWL sources cho cac bit nhao khac nhau

| File                         | Mo ta                       |
|------------------------------|-----------------------------|
| `ngspice/zlc_16bit_tb.spice` | Testbench SPICE post-layout |
| `ngspice/zlc_16bit.rcx.raw`  | Raw output data             |

```bash
cd ngspice
ngspice -b zlc_16bit_tb.spice
```

### 6. Static Timing Analysis (OpenSTA)

- Phan tich timing voi **OpenSTA**
- Clock period: 10ns (~100 MHz)
- Dieu kien: TT corner, 25C, 1.8V

**Ket qua phan tich:**

| Thong so                   | Gia tri                 |
|----------------------------|-------------------------|
| Worst setup slack (WNS)    | 0.00 ns (MET)           |
| Total negative slack (TNS) | 0.00                    |
| Path delay lon nhat        | 1.64 ns                 |
| Cong suat tinh toan        | **3.81 uW (Internal)**  |
| Cong suat chuyen mach      | **1.90 uW (Switching)** |
| Cong suat tong             | **5.72 uW**             |
| Cong suat ri               | **0.15 pW**             |

Nhan xet:
- Toan bo timing constraints deu duoc thoa man (slack >= 0)
- Critical path: `A[3] -> x4 -> x8 -> x12 -> x11 -> x10 -> x17 -> x18 -> Y[0]` (1.64ns)
- Mach tieu thu cong suat rat thap (~5.72uW)

```bash
cd opensta
sta -script zlc_16bit.tcl
```

## So sanh voi thiet ke tham chieu (adder_4bit)

| Thong so        | adder_4bit         | zlc_16bit |
|-----------------|--------------------|-----------|
| Path delay max  | 0.90 ns            | 1.64 ns   |
| Internal power  | 2.65 uW            | 3.81 uW   |
| Switching power | 5.42 uW            | 1.90 uW   |
| Leakage power   | 0.11 pW            | 0.15 pW   |
| Total power     | 8.07 uW            | 5.72 uW   |
| Cells           | ~36 (9 nand2/cell) | ~44       |

## Tham khao

- Thiet ke tham chieu: [sky130_adder_4bit](https://github.com/dangdo44/sky130_adder_4bit)
- PDK: SkyWater SKY130 (sky130_fd_sc_hd)
- Cong cu: xschem, Magic, ngspice, netgen, OpenSTA, iverilog


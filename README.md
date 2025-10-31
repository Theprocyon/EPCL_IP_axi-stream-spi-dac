# SPI DAC Driver IP (DAC7565 / DAC8565)

This repository provides a lightweight **SPI DAC driver IP** for Xilinx FPGAs, designed to interface with **TI DAC7565 / DAC8565** digital-to-analog converters.  
The module uses an **AXI4-Stream slave interface** for seamless data feeding, and outputs an SPI sequence tailored to the DAC protocol.

---

## Features

- **4-Channel Support**  
  - Accepts 64-bit data via AXI4-Stream for simultaneous update of all four DAC channels
  - One AXI transaction triggers sequential SPI writes to channels A, B, C, and D

- **AXI4-Stream Interface**  
  - 64-bit data input via `s_axis_tdata`  
  - Handshake with `tvalid/tready`  
  - Automatic transfer start and finish signaling  

- **Configurable SPI Protocol**  
  - Clock polarity (CPOL) and phase (CPHA) options  
  - Parameterized prescaler (`PRESCALE`) to set SCK frequency  
  - Adjustable tail bits after data frame  

- **Targeted for DAC7565 / DAC8565**  
  - Generates proper frame format (STX, LOADMODE, DAC channel select, etc.)  
  - 16-bit data mode supported  

- **Outputs**  
  - `CS` (chip select)  
  - `SCK` (serial clock)  
  - `SDI` (serial data input)  
  - `LDAC` (load DAC, fixed low by default)  

- **Status Signals**  
  - `busy`: high while SPI transfer is active  
  - `finished`: pulse after transfer completes  

---

## Module Specification

| Parameter    | Description                                                                 | Default |
|--------------|-----------------------------------------------------------------------------|---------|
| `PRESCALE`   | SPI clock divider (SCK = fabric_clk / PRESCALE)                            | `2`     |
| `TAIL_BITS`  | Extra zero bits appended to the frame                                      | `2`     |
| `CPOL`       | Clock polarity (0 = idle low, 1 = idle high)                               | `0`     |
| `CPHA`       | Clock phase (0 = sample on first edge, 1 = sample on second edge)          | `0`     |

### AXI4-Stream Slave Interface
| Signal          | Direction | Description                                    |
|-----------------|-----------|------------------------------------------------|
| `s_axis_tdata`  | Input     | 64-bit data word (16-bit per channel)          |
| `s_axis_tvalid` | Input     | Valid signal for input data                    |
| `s_axis_tready` | Output    | Ready signal (low when busy)                   |

**Data Mapping:**
- Bits [15:0]   → Channel A
- Bits [31:16]  → Channel B
- Bits [47:32]  → Channel C
- Bits [63:48]  → Channel D

### SPI & Control Outputs
| Signal    | Direction | Description                             |
|-----------|-----------|-----------------------------------------|
| `CS`      | Output    | Active-low chip select                  |
| `SCK`     | Output    | SPI clock (generated internally)        |
| `SDI`     | Output    | Serial data line                        |
| `LDAC`    | Output    | Load DAC (fixed 0, can be tied external)|
| `busy`    | Output    | High while SPI transfer is in progress  |
| `finished`| Output    | High for one cycle after transfer ends  |

---

## Usage

1. Connect the `AXI4-Stream` interface to your data source (e.g., DMA, custom logic).  
2. Provide a fabric clock and active-low reset.  
3. Configure parameters as needed (`PRESCALE`, `TAIL_BITS`, etc.).  
4. Each 64-bit AXI transaction triggers a sequence of four SPI writes to all DAC channels (A→B→C→D).  
5. The `busy` signal remains high for the entire sequence until all four channels are updated.  
6. Monitor `finished` signal to synchronize with your system.  

---

## License

This project is released under the MIT License. See [LICENSE](LICENSE) for details.

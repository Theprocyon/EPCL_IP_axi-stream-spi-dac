# SPI DAC Driver IP (DAC7565 / DAC8565)

This repository provides a lightweight **SPI DAC driver IP** for Xilinx FPGAs, designed to interface with **TI DAC7565 / DAC8565** digital-to-analog converters.  
The module uses an **AXI4-Stream slave interface** for seamless data feeding, and outputs an SPI sequence tailored to the DAC protocol.

---

## Features

- **AXI4-Stream Interface**  
  - Accepts 16-bit data via `s_axis_tdata`  
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
| `DAC_CH`     | DAC channel select bits (2-bit, e.g. `00` = A, `01` = B, `10` = C, `11` = D)| `2'b00` |
| `TAIL_BITS`  | Extra zero bits appended to the frame                                      | `2`     |
| `CPOL`       | Clock polarity (0 = idle low, 1 = idle high)                               | `0`     |
| `CPHA`       | Clock phase (0 = sample on first edge, 1 = sample on second edge)          | `0`     |

### AXI4-Stream Slave Interface
| Signal          | Direction | Description                                    |
|-----------------|-----------|------------------------------------------------|
| `s_axis_tdata`  | Input     | 16-bit data word                               |
| `s_axis_tvalid` | Input     | Valid signal for input data                    |
| `s_axis_tready` | Output    | Ready signal (low when busy)                   |

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
3. Configure parameters as needed (`PRESCALE`, `DAC_CH`, etc.).  
4. Monitor `busy` and `finished` signals to synchronize with your system.  

---

## License

This project is released under the MIT License. See [LICENSE](LICENSE) for details.


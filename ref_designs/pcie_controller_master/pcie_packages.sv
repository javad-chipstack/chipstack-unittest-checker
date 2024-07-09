package packages;
  //=================================================
  // TypeDefs declaration
  //=================================================
  typedef enum logic {FALSE, TRUE} bool;  // Added 'logic' for better type definition

  typedef struct {
    bit   [7:0]   addr;
    bit   [7:0]   data;
    bit           wr;
    bit           rd;
  } mem_s; 
  
  typedef struct {
    real i, r;  // Changed 'float' to 'real' for SystemVerilog compatibility
  } Complex;
  
  typedef enum logic [1:0] {
    gen1 = 2'b00, // 2.5Gbps
    gen2 = 2'b01, // 5Gbps
    gen3 = 2'b10  // 8Gbps
  } pcie_gen;
  
  typedef enum logic [7:0] {
    ACK          = 8'h00,
    NAK          = 8'h10,
    PM_ENTER_L1  = 8'h20,
    PM_ENTER_L23 = 8'h21
  } dllp_type;
  
  typedef enum logic [2:0] {
    nodata_3dw = 3'b000,
    nodata_4dw = 3'b001,
    data_3dw   = 3'b010,
    data_4dw   = 3'b011,
    tlp_prefix = 3'b100
  } tlp_fmt_type;
  
  typedef struct {
    tlp_fmt_type Fmt;
    logic [4:0]  Type;
    logic        RES2;
    logic        TC;
    logic        RES1;
    logic        Attr1;
    logic        RES0;
    logic        TH;
    logic        TD;
    logic        EP;
    logic [1:0]  Attr0;
    logic [1:0]  AT;
    logic [9:0]  Length; // MAX(tlp payload size) = 1024
  } tlp_dw0_struct;
  
  typedef struct {
    logic [15:0] RequesterID;
    logic [7:0]  Tag;
    logic [3:0]  LastDWBE;
    logic [3:0]  FirstDWBE;
  } tlp_dw1_struct;
  
  // Parameters for special characters (need to be defined elsewhere)
  parameter bit [7:0] COM = 8'bxxxx_xxxx; // K28.5: Comma character used for lane & link initialization and management
  parameter bit [7:0] STP = 8'bxxxx_xxxx; // K27.7: Marker for start of a Transaction layer packet
  parameter bit [7:0] SDP = 8'bxxxx_xxxx; // K28.2: Marker for start of a Data link layer packet
  parameter bit [7:0] END = 8'bxxxx_xxxx; // K29.7: Marker for end of a DLP/TLP
  parameter bit [7:0] EDB = 8'bxxxx_xxxx; // K30.7: Marker for end of a Bad or nullified TLP
  parameter bit [7:0] PAD = 8'bxxxx_xxxx; // K23.7: Pad used in framing and link width & lane ordering negotiation
  parameter bit [7:0] SKP = 8'bxxxx_xxxx; // K28.0: Skip order set for difference in data-rate between links
  parameter bit [7:0] FTS = 8'bxxxx_xxxx; // K28.1: Fast training sequence used in an ordered set to exit from L0s to L0
  parameter bit [7:0] IDL = 8'bxxxx_xxxx; // K28.3: Electrical idle order set
  parameter bit [7:0] EIE = 8'bxxxx_xxxx; // K28.7: Electrical idle exit order set
  
endpackage

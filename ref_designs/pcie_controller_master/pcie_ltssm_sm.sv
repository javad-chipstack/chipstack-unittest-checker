module pcie_ltssm_sm (
  input  logic clk,
  input  logic reset,
  input  logic init_state,
  output logic link_up
);

  // Enumeration for state types
  typedef enum logic [3:0] {
    DETECT,
    POLLING,
    CONFIG,
    RECOVERY,
    L0,
    L0S,
    L1,
    L2,
    DISABLE,
    LOOPBACK,
    HOTRESET
  } state_type;

  state_type state, next_state;

  // Internal signals for state transitions
  logic detect_complete;
  logic polling_invalid;
  logic polling_complete;
  logic config_invalid;
  logic disable_valid;
  logic recovery_valid;
  logic loopback_valid;
  logic config_complete;
  logic recovery_invalid;
  logic hotreset_valid;
  logic loopback_to_config;
  logic loopback_to_l0;
  logic l0_complete;
  logic l0s_complete;
  logic l1_complete;
  logic l2_complete;
  logic disable_complete;
  logic loopback_complete;
  logic hotreset_complete;

  // State transition and link_up logic
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      state <= DETECT;
    end else if (init_state) begin
      state <= DETECT;
    end else begin
      state <= next_state;
    end
  end

  // Next state logic
  always_comb begin
    next_state = state;  // Default to current state
    case (state)
      DETECT: begin
        if (detect_complete) begin
          next_state = POLLING;
        end
      end
      POLLING: begin
        if (polling_invalid) begin
          next_state = DETECT;
        end else if (polling_complete) begin
          next_state = CONFIG;
        end
      end
      CONFIG: begin
        if (config_invalid) begin
          next_state = DETECT;
        end else if (disable_valid) begin
          next_state = DISABLE;
        end else if (recovery_valid) begin
          next_state = RECOVERY;
        end else if (loopback_valid) begin
          next_state = LOOPBACK;
        end else if (config_complete) begin
          next_state = L0;
        end
      end
      RECOVERY: begin
        if (recovery_invalid) begin
          next_state = DETECT;
        end else if (disable_valid) begin
          next_state = DISABLE;
        end else if (hotreset_valid) begin
          next_state = HOTRESET;
        end else if (loopback_valid) begin
          next_state = LOOPBACK;
        end else if (loopback_to_config) begin
          next_state = CONFIG;
        end else if (loopback_to_l0) begin
          next_state = L0;
        end
      end
      L0: begin
        if (recovery_valid) begin
          next_state = RECOVERY;
        end else if (l0_complete) begin
          next_state = L0S;
        end
      end
      L0S: begin
        if (l0s_complete) begin
          next_state = RECOVERY;
        end
      end
      L1: begin
        if (l1_complete) begin
          next_state = RECOVERY;
        end
      end
      L2: begin
        if (l2_complete) begin
          next_state = DETECT;
        end
      end
      DISABLE: begin
        if (disable_complete) begin
          next_state = DETECT;
        end
      end
      LOOPBACK: begin
        if (loopback_complete) begin
          next_state = DETECT;
        end
      end
      HOTRESET: begin
        if (hotreset_complete) begin
          next_state = DETECT;
        end
      end
      default: begin
        next_state = DETECT;
      end
    endcase
  end

  // Link up logic
  always_ff @(posedge clk or posedge reset) begin
    if (reset || init_state) begin
      link_up <= 0;
    end else if (state == L0) begin
      link_up <= 1;
    end else begin
      link_up <= 0;
    end
  end

endmodule

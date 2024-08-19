//=============================================================
// Testbench for Module: alu_controller
//=============================================================
// Author: ChipStack AI
// Date: 2024-07-23 22:38:47
// Description: Unit test for alu_controller
//=============================================================

//`timescale 1ns/1ps

module tb;
  //===========================================================
  // Testbench Parameters
  //===========================================================
  parameter CLOCK_FREQ = 100;  // Clock frequency in MHz
  parameter RESET_POLARITY = 1;  // 1 for active high, 0 for active low
  parameter RESET_DURATION = 100;  // Reset duration in ns
  parameter TIMEOUT = 10000000;  // Timeout value in ns
  parameter PER_TASK_TIMEOUT = 1000000;  // Timeout value for each task in ns
  parameter DRAIN_TIME = 100;  // Time to observe all results in ns
  parameter CLOCK_FREQ_CONVERSION_FACTOR = 1000;  // Conversion factor for clock frequency


  //===========================================================
  // Clock and Reset Signals
  //===========================================================
  logic clk;
  logic reset;

  //===========================================================
  // Other Signals and Variables
  //===========================================================
  logic [3:0] opcode;
  logic add_AB;
  logic inc_A;
  logic inc_B;
  logic sub_AB;
  logic cmp_AB;
  logic sl_AB;
  logic sr_AB;
  logic clr;
  logic dec_A;
  logic dec_B;
  logic mul_AB;
  logic cpl_A;
  logic and_AB;
  logic or_AB;
  logic xor_AB;
  logic cpl_B;
  logic clr_Z;
  logic clr_V;
  logic clr_C;
  reg load_inputs;
  reg load_outputs;

  //===========================================================
  // DUT Instantiation
  //===========================================================
  alu_controller dut (
      .clk(clk),
      .reset(reset),
      .opcode(opcode),
      .add_AB(add_AB),
      .inc_A(inc_A),
      .inc_B(inc_B),
      .sub_AB(sub_AB),
      .cmp_AB(cmp_AB),
      .sl_AB(sl_AB),
      .sr_AB(sr_AB),
      .clr(clr),
      .dec_A(dec_A),
      .dec_B(dec_B),
      .mul_AB(mul_AB),
      .cpl_A(cpl_A),
      .and_AB(and_AB),
      .or_AB(or_AB),
      .xor_AB(xor_AB),
      .cpl_B(cpl_B),
      .clr_Z(clr_Z),
      .clr_V(clr_V),
      .clr_C(clr_C),
      .load_inputs(load_inputs),
      .load_outputs(load_outputs)
  );


  //===========================================================
  // Clock Generation
  //===========================================================
  initial begin
    clk = 1'b0;
    forever #(CLOCK_FREQ_CONVERSION_FACTOR / (2 * CLOCK_FREQ)) clk = ~clk;
  end

  //===========================================================
  // Timeout Control
  //===========================================================
  initial begin
    #(TIMEOUT);
    $display("Error: Testbench timeout!");
    $finish;
  end

  //===========================================================
  // Reset Generation
  //===========================================================
  task automatic reset_dut;
    // Set all the DUT inputs to zero, making sure there are no X/Z at the inputs.
    opcode = 'h0;

    // Wiggling the reset signal.
    reset  = ~RESET_POLARITY;
    #RESET_DURATION;
    reset = RESET_POLARITY;
    #RESET_DURATION;
    reset = ~RESET_POLARITY;
    #RESET_DURATION;
  endtask

  //===========================================================
  // Initial Block to Call Tasks
  //===========================================================
  initial begin
    reset_dut();
    test_TestClrOpcode();

    reset_dut();
    test_TestAddABOpcode();

    reset_dut();
    test_TestIncBOpcode();

    reset_dut();
    test_TestDecAOpcode();

    reset_dut();
    test_TestDecBOpcode();

    reset_dut();
    test_TestSubABOpcode();

    reset_dut();
    test_TestCmpABOpcode();

    reset_dut();
    test_TestAndABOpcode();

    reset_dut();
    test_TestOrABOpcode();

    reset_dut();
    test_TestMulABOpcode();

    reset_dut();
    test_TestCplBOpcode();

    reset_dut();
    test_TestAslAbyBOpcode();

    reset_dut();
    test_TestAsrAbyBOpcode();

    reset_dut();
    test_TestArithmeticOperationSequence();

    reset_dut();
    test_TestLogicalOperationSequence();

    reset_dut();
    test_TestShiftOperationSequence();

    reset_dut();
    test_TestCombinedOperationSequence();

    reset_dut();
    test_TestInitializationAndReset();

    reset_dut();
    test_TestUndefinedOpcode();

    reset_dut();
    test_TestAsynchronousResetDuringOpcodeTransition();

    reset_dut();
    test_TestInvalidOpcode();

    $finish;
  end

  task automatic test_TestClrOpcode;
    fork
      begin
        $display("Time: %0t, INFO: Starting: test_TestClrOpcode", $time);
        #(PER_TASK_TIMEOUT);
        $display("Time: %0t, INFO: Timeout: test_TestClrOpcode", $time);
      end
      begin
        // This task tests the 'clr' opcode of the ALU.
        bit stimulus_s1 = 0, stimulus_s2 = 0, stimulus_s3 = 0;
        bit [3:0] opcode_rand;
        bit is_pass = 1;
        fork
          begin : simulation_thread
            opcode_rand = $urandom_range(0, 15);
            opcode = opcode_rand;
            $display("Time: %0t, INFO: test_TestClrOpcode -  Driving values: opcode=0x%h", $time,
                     opcode);
            // Wait for one clock cycle.
            @(posedge clk);
            stimulus_s1 = 1;
            opcode = 4'b0000;
            $display("Time: %0t, INFO: test_TestClrOpcode -  Driving values: opcode=0x%h", $time,
                     opcode);
            // Wait for one clock cycle.
            @(posedge clk);
            stimulus_s2 = 1;
            $display("Time: %0t, INFO: test_TestClrOpcode -  Driving values: opcode=0x%h", $time,
                     opcode);
            // Wait for one clock cycle.
            @(posedge clk);
            stimulus_s3 = 1;
          end : simulation_thread
          begin : check_thread
            // Wait and compare expected output with observed output for step 1 if simulation step 1 has any expected output
            wait (stimulus_s1 == 1);
            $display("Time: %0t, INFO: test_TestClrOpcode -  observed the stimulus_s1.", $time);
            // Wait and compare expected output with observed output for step 2 if simulation step 2 has any expected output
            wait (stimulus_s2 == 1);
            $display("Time: %0t, INFO: test_TestClrOpcode -  observed the stimulus_s2.", $time);
            if (clr !== 1) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestClrOpcode - Detected mismatch in clr. Expected: 0x%h, Observed: 0x%h",
                  $time, 1, clr);
            end else
              $display(
                  "Time: %0t, INFO: test_TestClrOpcode -  Output clr is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1,
                  clr
              );
            wait (stimulus_s3 == 1);
            $display("Time: %0t, INFO: test_TestClrOpcode -  observed the stimulus_s3.", $time);
            if (add_AB !== 0 || inc_A !== 0 || inc_B !== 0 || sub_AB !== 0 || cmp_AB !== 0 || sl_AB !== 0 || sr_AB !== 0 || dec_A !== 0 || dec_B !== 0 || mul_AB !== 0 || cpl_A !== 0 || and_AB !== 0 || or_AB !== 0 || xor_AB !== 0 || cpl_B !== 0 || clr_Z !== 0 || load_inputs !== 0 || load_outputs !== 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestClrOpcode - Detected mismatch in output signals. Expected all outputs to be 0.",
                  $time);
            end else
              $display(
                  "Time: %0t, INFO: test_TestClrOpcode -  All outputs are de-asserted as expected.",
                  $time
              );
          end : check_thread
        join
        if (is_pass) begin
          $display("Time: %0t, PASSED: test_TestClrOpcode", $time);
        end else begin
          $display("Time: %0t, FAILED: test_TestClrOpcode", $time);
        end
        $display("Time: %0t, INFO: Finished: test_TestClrOpcode", $time);
      end
    join_any
    disable fork;
    #(DRAIN_TIME);  // Wait for some time to observe the results
  endtask

  task automatic test_TestAddABOpcode;
    fork
      begin
        $display("Time: %0t, INFO: Starting: test_TestAddABOpcode", $time);
        #(PER_TASK_TIMEOUT);
        $display("Time: %0t, INFO: Timeout: test_TestAddABOpcode", $time);
      end
      begin
        // This task tests the functionality of the ALU's add operation.
        // It checks if the add_AB output is asserted high when the opcode is set to cADD_AB.
        bit stimulus_s1 = 0, stimulus_s2 = 0;
        bit is_pass = 1;
        fork
          begin : simulation_thread
            $display("Time: %0t, INFO: test_TestAddABOpcode -  Driving values: opcode=0x%h", $time,
                     opcode);
            // Apply random input values to the opcode port and wait for one clock cycle.
            opcode = 4'b1010;
            @(posedge clk);
            stimulus_s1 = 1;
            $display("Time: %0t, INFO: test_TestAddABOpcode -  Driving values: opcode=0x%h", $time,
                     opcode);
            // Apply the cADD_AB opcode to the opcode input and wait for one clock cycle.
            opcode = 4'b0001;
            @(posedge clk);
            stimulus_s2 = 1;
          end : simulation_thread
          begin : check_thread
            // Wait and compare expected output with observed output for step 1 if simulation step 1 has any expected output
            wait (stimulus_s1 == 1);
            $display("Time: %0t, INFO: test_TestAddABOpcode -  observed the stimulus_s1.", $time);
            // Wait and compare expected output with observed output for step 2 if simulation step 2 has any expected output
            wait (stimulus_s2 == 1);
            $display("Time: %0t, INFO: test_TestAddABOpcode -  observed the stimulus_s2.", $time);
            if (add_AB !== 1'b1 || inc_A !== 1'b0 || inc_B !== 1'b0 || sub_AB !== 1'b0 || cmp_AB !== 1'b0 || sl_AB !== 1'b0 || sr_AB !== 1'b0 || clr !== 1'b0 || dec_A !== 1'b0 || dec_B !== 1'b0 || mul_AB !== 1'b0 || cpl_A !== 1'b0 || and_AB !== 1'b0 || or_AB !== 1'b0 || xor_AB !== 1'b0 || cpl_B !== 1'b0 || clr_Z !== 1'b0 || load_inputs !== 1'b1 || load_outputs !== 1'b1) begin
              is_pass = 0;
              $display("Time: %0t, ERROR: test_TestAddABOpcode - Detected mismatch in output.",
                       $time);
            end else
              $display("Time: %0t, INFO: test_TestAddABOpcode -  Output is as expected.", $time);
          end : check_thread
        join
        if (is_pass) begin
          $display("Time: %0t, PASSED: test_TestAddABOpcode", $time);
        end else begin
          $display("Time: %0t, FAILED: test_TestAddABOpcode", $time);
        end
        $display("Time: %0t, INFO: Finished: test_TestAddABOpcode", $time);
      end
    join_any
    disable fork;
    #(DRAIN_TIME);  // Wait for some time to observe the results
  endtask

  task automatic test_TestIncBOpcode;
    fork
      begin
        $display("Time: %0t, INFO: Starting: test_TestIncBOpcode", $time);
        #(PER_TASK_TIMEOUT);
        $display("Time: %0t, INFO: Timeout: test_TestIncBOpcode", $time);
      end
      begin
        // This task verifies that the 'inc_B' output is asserted when the 'opcode' input is set to 'cINC_B'.
        bit stimulus_s1 = 0, stimulus_s2 = 0, stimulus_s3 = 0;
        bit is_pass = 1;
        fork
          begin : simulation_thread
            $display("Time: %0t, INFO: test_TestIncBOpcode -  Driving values: opcode=0x%h", $time,
                     4'b0100);
            // Apply random input values to the opcode port
            opcode = 4'b0100;
            @(posedge clk);
            stimulus_s1 = 1;
            $display("Time: %0t, INFO: test_TestIncBOpcode -  Driving values: opcode=0x%h", $time,
                     4'b0011);
            // Drive the opcode input to the value corresponding to 'cINC_B'
            opcode = 4'b0011;
            @(posedge clk);
            stimulus_s2 = 1;
            stimulus_s3 = 1;
          end : simulation_thread
          begin : check_thread
            // Wait for stimulus_s1 to be set
            wait (stimulus_s1 == 1);
            $display("Time: %0t, INFO: test_TestIncBOpcode -  observed the stimulus_s1.", $time);
            // Wait for stimulus_s2 to be set
            wait (stimulus_s2 == 1);
            $display("Time: %0t, INFO: test_TestIncBOpcode -  observed the stimulus_s2.", $time);
            // Wait for stimulus_s3 to be set
            wait (stimulus_s3 == 1);
            $display("Time: %0t, INFO: test_TestIncBOpcode -  observed the stimulus_s3.", $time);
            if (inc_B !== 1'b1) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestIncBOpcode - Detected mismatch in inc_B. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b1, inc_B);
            end else
              $display(
                  "Time: %0t, INFO: test_TestIncBOpcode -  Output inc_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b1,
                  inc_B
              );
            if (add_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestIncBOpcode - Detected mismatch in add_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, add_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestIncBOpcode -  Output add_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  add_AB
              );
            if (inc_A !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestIncBOpcode - Detected mismatch in inc_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, inc_A);
            end else
              $display(
                  "Time: %0t, INFO: test_TestIncBOpcode -  Output inc_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  inc_A
              );
            if (sub_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestIncBOpcode - Detected mismatch in sub_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, sub_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestIncBOpcode -  Output sub_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  sub_AB
              );
            if (cmp_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestIncBOpcode - Detected mismatch in cmp_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cmp_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestIncBOpcode -  Output cmp_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  cmp_AB
              );
            if (sl_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestIncBOpcode - Detected mismatch in sl_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, sl_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestIncBOpcode -  Output sl_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  sl_AB
              );
            if (sr_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestIncBOpcode - Detected mismatch in sr_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, sr_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestIncBOpcode -  Output sr_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  sr_AB
              );
            if (clr !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestIncBOpcode - Detected mismatch in clr. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, clr);
            end else
              $display(
                  "Time: %0t, INFO: test_TestIncBOpcode -  Output clr is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  clr
              );
            if (dec_A !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestIncBOpcode - Detected mismatch in dec_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, dec_A);
            end else
              $display(
                  "Time: %0t, INFO: test_TestIncBOpcode -  Output dec_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  dec_A
              );
            if (dec_B !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestIncBOpcode - Detected mismatch in dec_B. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, dec_B);
            end else
              $display(
                  "Time: %0t, INFO: test_TestIncBOpcode -  Output dec_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  dec_B
              );
            if (mul_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestIncBOpcode - Detected mismatch in mul_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, mul_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestIncBOpcode -  Output mul_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  mul_AB
              );
            if (cpl_A !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestIncBOpcode - Detected mismatch in cpl_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cpl_A);
            end else
              $display(
                  "Time: %0t, INFO: test_TestIncBOpcode -  Output cpl_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  cpl_A
              );
            if (and_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestIncBOpcode - Detected mismatch in and_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, and_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestIncBOpcode -  Output and_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  and_AB
              );
            if (or_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestIncBOpcode - Detected mismatch in or_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, or_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestIncBOpcode -  Output or_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  or_AB
              );
            if (xor_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestIncBOpcode - Detected mismatch in xor_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, xor_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestIncBOpcode -  Output xor_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  xor_AB
              );
            if (cpl_B !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestIncBOpcode - Detected mismatch in cpl_B. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cpl_B);
            end else
              $display(
                  "Time: %0t, INFO: test_TestIncBOpcode -  Output cpl_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  cpl_B
              );
            if (clr_Z !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestIncBOpcode - Detected mismatch in clr_Z. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, clr_Z);
            end else
              $display(
                  "Time: %0t, INFO: test_TestIncBOpcode -  Output clr_Z is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  clr_Z
              );
            if (load_inputs !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestIncBOpcode - Detected mismatch in load_inputs. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, load_inputs);
            end else
              $display(
                  "Time: %0t, INFO: test_TestIncBOpcode -  Output load_inputs is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  load_inputs
              );
            if (load_outputs !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestIncBOpcode - Detected mismatch in load_outputs. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, load_outputs);
            end else
              $display(
                  "Time: %0t, INFO: test_TestIncBOpcode -  Output load_outputs is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  load_outputs
              );
          end : check_thread
        join
        if (is_pass) begin
          $display("Time: %0t, PASSED: test_TestIncBOpcode", $time);
        end else begin
          $display("Time: %0t, FAILED: test_TestIncBOpcode", $time);
        end
        $display("Time: %0t, INFO: Finished: test_TestIncBOpcode", $time);
      end
    join_any
    disable fork;
    #(DRAIN_TIME);  // Wait for some time to observe the results
  endtask

  task automatic test_TestDecAOpcode;
    fork
      begin
        $display("Time: %0t, INFO: Starting: test_TestDecAOpcode", $time);
        #(PER_TASK_TIMEOUT);
        $display("Time: %0t, INFO: Timeout: test_TestDecAOpcode", $time);
      end
      begin
        // This task verifies the functionality of the 'cDEC_A' opcode.
        bit stimulus_s1 = 0, stimulus_s2 = 0, stimulus_s3 = 0;
        bit is_pass = 1;
        fork
          begin : simulation_thread
            $display("Time: %0t, INFO: test_TestDecAOpcode -  Driving values: opcode=0x%h", $time,
                     9);
            // Apply random input values to the opcode port.
            opcode = 4'b1001;
            @(posedge clk);
            stimulus_s1 = 1;
            $display("Time: %0t, INFO: test_TestDecAOpcode -  Driving values: opcode=0x%h", $time,
                     9);
            // Apply the opcode for 'cDEC_A'.
            opcode = 4'b1001;
            @(posedge clk);
            stimulus_s2 = 1;
            @(posedge clk);
            stimulus_s3 = 1;
          end : simulation_thread
          begin : check_thread
            // Wait and compare expected output with observed output for step 1 if simulation step 1 has any expected output
            wait (stimulus_s1 == 1);
            $display("Time: %0t, INFO: test_TestDecAOpcode -  observed the stimulus_s1.", $time);
            // Wait and compare expected output with observed output for step 2 if simulation step 2 has any expected output
            wait (stimulus_s2 == 1);
            $display("Time: %0t, INFO: test_TestDecAOpcode -  observed the stimulus_s2.", $time);
            if (dec_A !== 1'b1) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecAOpcode - Detected mismatch in dec_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b1, dec_A);
            end else
              $display(
                  "Time: %0t, INFO: test_TestDecAOpcode -  Output dec_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b1,
                  dec_A
              );
            wait (stimulus_s3 == 1);
            $display("Time: %0t, INFO: test_TestDecAOpcode -  observed the stimulus_s3.", $time);
            if (add_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecAOpcode - Detected mismatch in add_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, add_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestDecAOpcode -  Output add_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  add_AB
              );
            if (inc_A !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecAOpcode - Detected mismatch in inc_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, inc_A);
            end else
              $display(
                  "Time: %0t, INFO: test_TestDecAOpcode -  Output inc_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  inc_A
              );
            if (inc_B !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecAOpcode - Detected mismatch in inc_B. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, inc_B);
            end else
              $display(
                  "Time: %0t, INFO: test_TestDecAOpcode -  Output inc_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  inc_B
              );
            if (sub_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecAOpcode - Detected mismatch in sub_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, sub_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestDecAOpcode -  Output sub_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  sub_AB
              );
            if (cmp_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecAOpcode - Detected mismatch in cmp_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cmp_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestDecAOpcode -  Output cmp_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  cmp_AB
              );
            if (sl_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecAOpcode - Detected mismatch in sl_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, sl_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestDecAOpcode -  Output sl_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  sl_AB
              );
            if (sr_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecAOpcode - Detected mismatch in sr_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, sr_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestDecAOpcode -  Output sr_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  sr_AB
              );
            if (clr !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecAOpcode - Detected mismatch in clr. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, clr);
            end else
              $display(
                  "Time: %0t, INFO: test_TestDecAOpcode -  Output clr is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  clr
              );
            if (dec_B !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecAOpcode - Detected mismatch in dec_B. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, dec_B);
            end else
              $display(
                  "Time: %0t, INFO: test_TestDecAOpcode -  Output dec_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  dec_B
              );
            if (mul_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecAOpcode - Detected mismatch in mul_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, mul_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestDecAOpcode -  Output mul_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  mul_AB
              );
            if (cpl_A !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecAOpcode - Detected mismatch in cpl_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cpl_A);
            end else
              $display(
                  "Time: %0t, INFO: test_TestDecAOpcode -  Output cpl_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  cpl_A
              );
            if (and_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecAOpcode - Detected mismatch in and_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, and_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestDecAOpcode -  Output and_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  and_AB
              );
            if (or_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecAOpcode - Detected mismatch in or_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, or_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestDecAOpcode -  Output or_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  or_AB
              );
            if (xor_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecAOpcode - Detected mismatch in xor_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, xor_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestDecAOpcode -  Output xor_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  xor_AB
              );
            if (cpl_B !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecAOpcode - Detected mismatch in cpl_B. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cpl_B);
            end else
              $display(
                  "Time: %0t, INFO: test_TestDecAOpcode -  Output cpl_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  cpl_B
              );
            if (clr_Z !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecAOpcode - Detected mismatch in clr_Z. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, clr_Z);
            end else
              $display(
                  "Time: %0t, INFO: test_TestDecAOpcode -  Output clr_Z is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  clr_Z
              );
            if (load_inputs !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecAOpcode - Detected mismatch in load_inputs. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, load_inputs);
            end else
              $display(
                  "Time: %0t, INFO: test_TestDecAOpcode -  Output load_inputs is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  load_inputs
              );
            if (load_outputs !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecAOpcode - Detected mismatch in load_outputs. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, load_outputs);
            end else
              $display(
                  "Time: %0t, INFO: test_TestDecAOpcode -  Output load_outputs is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  load_outputs
              );
          end : check_thread
        join
        if (is_pass) begin
          $display("Time: %0t, PASSED: test_TestDecAOpcode", $time);
        end else begin
          $display("Time: %0t, FAILED: test_TestDecAOpcode", $time);
        end
        $display("Time: %0t, INFO: Finished: test_TestDecAOpcode", $time);
      end
    join_any
    disable fork;
    #(DRAIN_TIME);  // Wait for some time to observe the results
  endtask

  task automatic test_TestDecBOpcode;
    fork
      begin
        $display("Time: %0t, INFO: Starting: test_TestDecBOpcode", $time);
        #(PER_TASK_TIMEOUT);
        $display("Time: %0t, INFO: Timeout: test_TestDecBOpcode", $time);
      end
      begin
        // This task verifies the functionality of the 'cDEC_B' opcode.
        bit stimulus_s1 = 0, stimulus_s2 = 0, stimulus_s3 = 0;
        bit is_pass = 1;
        fork
          begin : simulation_thread
            $display("Time: %0t, INFO: test_TestDecBOpcode -  Driving values: opcode=0x%h", $time,
                     4'b1101);
            opcode = 4'b1101;
            @(posedge clk);
            stimulus_s1 = 1;
            $display("Time: %0t, INFO: test_TestDecBOpcode -  Driving values: opcode=0x%h", $time,
                     4'b1001);
            opcode = 4'b1001;
            @(posedge clk);
            stimulus_s2 = 1;
            stimulus_s3 = 1;
          end : simulation_thread
          begin : check_thread
            // Wait for the stimulus to be applied
            wait (stimulus_s1 == 1);
            $display("Time: %0t, INFO: test_TestDecBOpcode -  observed the stimulus_s1.", $time);
            // Wait for the stimulus to be applied
            wait (stimulus_s2 == 1);
            $display("Time: %0t, INFO: test_TestDecBOpcode -  observed the stimulus_s2.", $time);
            if (dec_B !== 1'b1) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecBOpcode - Detected mismatch in dec_B. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b1, dec_B);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestDecBOpcode -  Output dec_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b1, dec_B);
            end
            wait (stimulus_s3 == 1);
            $display("Time: %0t, INFO: test_TestDecBOpcode -  observed the stimulus_s3.", $time);
            if (add_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecBOpcode - Detected mismatch in add_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, add_AB);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestDecBOpcode -  Output add_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, add_AB);
            end
            if (inc_A !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecBOpcode - Detected mismatch in inc_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, inc_A);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestDecBOpcode -  Output inc_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, inc_A);
            end
            if (inc_B !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecBOpcode - Detected mismatch in inc_B. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, inc_B);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestDecBOpcode -  Output inc_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, inc_B);
            end
            if (sub_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecBOpcode - Detected mismatch in sub_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, sub_AB);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestDecBOpcode -  Output sub_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, sub_AB);
            end
            if (cmp_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecBOpcode - Detected mismatch in cmp_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cmp_AB);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestDecBOpcode -  Output cmp_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cmp_AB);
            end
            if (sl_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecBOpcode - Detected mismatch in sl_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, sl_AB);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestDecBOpcode -  Output sl_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, sl_AB);
            end
            if (sr_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecBOpcode - Detected mismatch in sr_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, sr_AB);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestDecBOpcode -  Output sr_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, sr_AB);
            end
            if (clr !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecBOpcode - Detected mismatch in clr. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, clr);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestDecBOpcode -  Output clr is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, clr);
            end
            if (dec_A !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecBOpcode - Detected mismatch in dec_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, dec_A);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestDecBOpcode -  Output dec_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, dec_A);
            end
            if (mul_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecBOpcode - Detected mismatch in mul_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, mul_AB);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestDecBOpcode -  Output mul_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, mul_AB);
            end
            if (cpl_A !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecBOpcode - Detected mismatch in cpl_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cpl_A);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestDecBOpcode -  Output cpl_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cpl_A);
            end
            if (and_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecBOpcode - Detected mismatch in and_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, and_AB);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestDecBOpcode -  Output and_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, and_AB);
            end
            if (or_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecBOpcode - Detected mismatch in or_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, or_AB);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestDecBOpcode -  Output or_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, or_AB);
            end
            if (xor_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecBOpcode - Detected mismatch in xor_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, xor_AB);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestDecBOpcode -  Output xor_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, xor_AB);
            end
            if (cpl_B !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecBOpcode - Detected mismatch in cpl_B. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cpl_B);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestDecBOpcode -  Output cpl_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cpl_B);
            end
            if (clr_Z !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecBOpcode - Detected mismatch in clr_Z. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, clr_Z);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestDecBOpcode -  Output clr_Z is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, clr_Z);
            end
            if (load_inputs !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecBOpcode - Detected mismatch in load_inputs. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, load_inputs);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestDecBOpcode -  Output load_inputs is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, load_inputs);
            end
            if (load_outputs !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestDecBOpcode - Detected mismatch in load_outputs. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, load_outputs);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestDecBOpcode -  Output load_outputs is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, load_outputs);
            end
          end : check_thread
        join
        if (is_pass) begin
          $display("Time: %0t, PASSED: test_TestDecBOpcode", $time);
        end else begin
          $display("Time: %0t, FAILED: test_TestDecBOpcode", $time);
        end
        $display("Time: %0t, INFO: Finished: test_TestDecBOpcode", $time);
      end
    join_any
    disable fork;
    #(DRAIN_TIME);  // Wait for some time to observe the results
  endtask

  task automatic test_TestSubABOpcode;
    fork
      begin
        $display("Time: %0t, INFO: Starting: test_TestSubABOpcode", $time);
        #(PER_TASK_TIMEOUT);
        $display("Time: %0t, INFO: Timeout: test_TestSubABOpcode", $time);
      end
      begin
        // This task verifies the functionality of the ALU's subtract operation (cSUB_AB).
        bit stimulus_s1 = 0, stimulus_s2 = 0, stimulus_s3 = 0;
        bit is_pass = 1;
        fork
          begin : simulation_thread
            $display("Time: %0t, INFO: test_TestSubABOpcode -  Driving values: opcode=0x%h", $time,
                     4'b1011);
            // Apply random input values to the 'opcode' port and wait for one clock cycle.
            opcode = 4'b1011;
            @(posedge clk);
            stimulus_s1 = 1;
            $display("Time: %0t, INFO: test_TestSubABOpcode -  Driving values: opcode=0x%h", $time,
                     4'b0100);
            // Set the 'opcode' input to the value corresponding to 'cSUB_AB' and wait for one clock cycle.
            opcode = 4'b0100;
            @(posedge clk);
            stimulus_s2 = 1;
            stimulus_s3 = 1;
          end : simulation_thread
          begin : check_thread
            // Wait and compare expected output with observed output for step 1 if simulation step 1 has any expected output
            wait (stimulus_s1 == 1);
            $display("Time: %0t, INFO: test_TestSubABOpcode -  observed the stimulus_s1.", $time);
            // Wait and compare expected output with observed output for step 2 if simulation step 2 has any expected output
            wait (stimulus_s2 == 1);
            $display("Time: %0t, INFO: test_TestSubABOpcode -  observed the stimulus_s2.", $time);
            // Wait and compare expected output with observed output for step 3 if simulation step 3 has any expected output
            wait (stimulus_s3 == 1);
            $display("Time: %0t, INFO: test_TestSubABOpcode -  observed the stimulus_s3.", $time);
            if (sub_AB !== 1'b1) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestSubABOpcode - Detected mismatch in sub_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b1, sub_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestSubABOpcode -  Output sub_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b1,
                  sub_AB
              );
            if (add_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestSubABOpcode - Detected mismatch in add_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, add_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestSubABOpcode -  Output add_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  add_AB
              );
            if (inc_A !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestSubABOpcode - Detected mismatch in inc_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, inc_A);
            end else
              $display(
                  "Time: %0t, INFO: test_TestSubABOpcode -  Output inc_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  inc_A
              );
            if (inc_B !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestSubABOpcode - Detected mismatch in inc_B. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, inc_B);
            end else
              $display(
                  "Time: %0t, INFO: test_TestSubABOpcode -  Output inc_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  inc_B
              );
            if (cmp_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestSubABOpcode - Detected mismatch in cmp_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cmp_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestSubABOpcode -  Output cmp_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  cmp_AB
              );
            if (sl_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestSubABOpcode - Detected mismatch in sl_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, sl_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestSubABOpcode -  Output sl_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  sl_AB
              );
            if (sr_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestSubABOpcode - Detected mismatch in sr_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, sr_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestSubABOpcode -  Output sr_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  sr_AB
              );
            if (clr !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestSubABOpcode - Detected mismatch in clr. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, clr);
            end else
              $display(
                  "Time: %0t, INFO: test_TestSubABOpcode -  Output clr is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  clr
              );
            if (dec_A !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestSubABOpcode - Detected mismatch in dec_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, dec_A);
            end else
              $display(
                  "Time: %0t, INFO: test_TestSubABOpcode -  Output dec_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  dec_A
              );
            if (dec_B !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestSubABOpcode - Detected mismatch in dec_B. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, dec_B);
            end else
              $display(
                  "Time: %0t, INFO: test_TestSubABOpcode -  Output dec_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  dec_B
              );
            if (mul_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestSubABOpcode - Detected mismatch in mul_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, mul_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestSubABOpcode -  Output mul_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  mul_AB
              );
            if (cpl_A !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestSubABOpcode - Detected mismatch in cpl_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cpl_A);
            end else
              $display(
                  "Time: %0t, INFO: test_TestSubABOpcode -  Output cpl_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  cpl_A
              );
            if (and_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestSubABOpcode - Detected mismatch in and_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, and_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestSubABOpcode -  Output and_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  and_AB
              );
            if (or_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestSubABOpcode - Detected mismatch in or_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, or_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestSubABOpcode -  Output or_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  or_AB
              );
            if (xor_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestSubABOpcode - Detected mismatch in xor_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, xor_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestSubABOpcode -  Output xor_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  xor_AB
              );
            if (cpl_B !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestSubABOpcode - Detected mismatch in cpl_B. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cpl_B);
            end else
              $display(
                  "Time: %0t, INFO: test_TestSubABOpcode -  Output cpl_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  cpl_B
              );
            if (clr_Z !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestSubABOpcode - Detected mismatch in clr_Z. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, clr_Z);
            end else
              $display(
                  "Time: %0t, INFO: test_TestSubABOpcode -  Output clr_Z is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  clr_Z
              );
            if (load_inputs !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestSubABOpcode - Detected mismatch in load_inputs. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, load_inputs);
            end else
              $display(
                  "Time: %0t, INFO: test_TestSubABOpcode -  Output load_inputs is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  load_inputs
              );
            if (load_outputs !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestSubABOpcode - Detected mismatch in load_outputs. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, load_outputs);
            end else
              $display(
                  "Time: %0t, INFO: test_TestSubABOpcode -  Output load_outputs is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  load_outputs
              );
          end
        join
        if (is_pass) begin
          $display("Time: %0t, PASSED: test_TestSubABOpcode", $time);
        end else begin
          $display("Time: %0t, FAILED: test_TestSubABOpcode", $time);
        end
        $display("Time: %0t, INFO: Finished: test_TestSubABOpcode", $time);
      end
    join_any
    disable fork;
    #(DRAIN_TIME);  // Wait for some time to observe the results
  endtask

  task automatic test_TestCmpABOpcode;
    fork
      begin
        $display("Time: %0t, INFO: Starting: test_TestCmpABOpcode", $time);
        #(PER_TASK_TIMEOUT);
        $display("Time: %0t, INFO: Timeout: test_TestCmpABOpcode", $time);
      end
      begin
        // This task tests the functionality of the 'cCMP_AB' opcode.
        bit stimulus_s1 = 0, stimulus_s2 = 0, stimulus_s3 = 0;
        bit is_pass = 1;
        fork
          begin : simulation_thread
            $display("Time: %0t, INFO: test_TestCmpABOpcode -  Driving values: opcode=0x%h", $time,
                     4'b1011);
            opcode = 4'b1011;
            @(posedge clk);
            stimulus_s1 = 1;
            $display("Time: %0t, INFO: test_TestCmpABOpcode -  Driving values: opcode=0x%h", $time,
                     4'b0101);
            opcode = 4'b0101;
            @(posedge clk);
            stimulus_s2 = 1;
            stimulus_s3 = 1;
          end
          begin : check_thread
            // Wait for stimulus_s1 to be set
            wait (stimulus_s1 == 1);
            $display("Time: %0t, INFO: test_TestCmpABOpcode -  observed the stimulus_s1.", $time);
            // Wait for stimulus_s2 to be set
            wait (stimulus_s2 == 1);
            $display("Time: %0t, INFO: test_TestCmpABOpcode -  observed the stimulus_s2.", $time);
            // Wait for stimulus_s3 to be set
            wait (stimulus_s3 == 1);
            $display("Time: %0t, INFO: test_TestCmpABOpcode -  observed the stimulus_s3.", $time);
            if (cmp_AB !== 1'b1 || add_AB !== 1'b0 || inc_A !== 1'b0 || inc_B !== 1'b0 || sub_AB !== 1'b0 || sl_AB !== 1'b0 || sr_AB !== 1'b0 || clr !== 1'b0 || dec_A !== 1'b0 || dec_B !== 1'b0 || mul_AB !== 1'b0 || cpl_A !== 1'b0 || and_AB !== 1'b0 || or_AB !== 1'b0 || xor_AB !== 1'b0 || cpl_B !== 1'b0 || clr_Z !== 1'b0 || load_inputs !== 1'b0 || load_outputs !== 1'b0) begin
              is_pass = 0;
              $display("Time: %0t, ERROR: test_TestCmpABOpcode - Detected mismatch in output.",
                       $time);
            end else
              $display("Time: %0t, INFO: test_TestCmpABOpcode -  Output is as expected.", $time);
          end
        join
        if (is_pass) begin
          $display("Time: %0t, PASSED: test_TestCmpABOpcode", $time);
        end else begin
          $display("Time: %0t, FAILED: test_TestCmpABOpcode", $time);
        end
        $display("Time: %0t, INFO: Finished: test_TestCmpABOpcode", $time);
      end
    join_any
    disable fork;
    #(DRAIN_TIME);  // Wait for some time to observe the results
  endtask

  task automatic test_TestAndABOpcode;
    fork
      begin
        $display("Time: %0t, INFO: Starting: test_TestAndABOpcode", $time);
        #(PER_TASK_TIMEOUT);
        $display("Time: %0t, INFO: Timeout: test_TestAndABOpcode", $time);
      end
      begin
        // This task verifies the functionality of the ALU when the 'opcode' input is set to 'cAND_AB'.
        // It ensures that the 'and_AB' output is asserted high for one clock cycle and all other outputs are de-asserted.
        bit stimulus_s1 = 0, stimulus_s2 = 0, stimulus_s3 = 0;
        bit is_pass = 1;
        fork
          begin : simulation_thread
            $display("Time: %0t, INFO: test_TestAndABOpcode -  Driving values: opcode=0x%h", $time,
                     9);
            // Apply random input values to the 'opcode' port and wait for one clock cycle.
            opcode = 4'b1001;
            @(posedge clk);
            stimulus_s1 = 1;
            $display("Time: %0t, INFO: test_TestAndABOpcode -  Driving values: opcode=0x%h", $time,
                     9);
            // Set the 'opcode' input to the value corresponding to 'cAND_AB' and wait for one clock cycle.
            opcode = 4'b1001;
            @(posedge clk);
            stimulus_s2 = 1;
            stimulus_s3 = 1;
          end : simulation_thread
          begin : check_thread
            // Wait and compare expected output with observed output for step 1 if simulation step 1 has any expected output
            wait (stimulus_s1 == 1);
            $display("Time: %0t, INFO: test_TestAndABOpcode -  observed the stimulus_s1.", $time);
            // Wait and compare expected output with observed output for step 2 if simulation step 2 has any expected output
            wait (stimulus_s2 == 1);
            $display("Time: %0t, INFO: test_TestAndABOpcode -  observed the stimulus_s2.", $time);
            if (and_AB !== 1'b1) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAndABOpcode - Detected mismatch in and_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b1, and_AB);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestAndABOpcode -  Output and_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b1, and_AB);
            end
            // Wait and compare expected output with observed output for step 3 if simulation step 3 has any expected output
            wait (stimulus_s3 == 1);
            $display("Time: %0t, INFO: test_TestAndABOpcode -  observed the stimulus_s3.", $time);
            if (add_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAndABOpcode - Detected mismatch in add_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, add_AB);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestAndABOpcode -  Output add_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, add_AB);
            end
            if (inc_A !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAndABOpcode - Detected mismatch in inc_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, inc_A);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestAndABOpcode -  Output inc_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, inc_A);
            end
            if (inc_B !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAndABOpcode - Detected mismatch in inc_B. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, inc_B);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestAndABOpcode -  Output inc_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, inc_B);
            end
            if (sub_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAndABOpcode - Detected mismatch in sub_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, sub_AB);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestAndABOpcode -  Output sub_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, sub_AB);
            end
            if (cmp_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAndABOpcode - Detected mismatch in cmp_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cmp_AB);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestAndABOpcode -  Output cmp_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cmp_AB);
            end
            if (sl_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAndABOpcode - Detected mismatch in sl_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, sl_AB);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestAndABOpcode -  Output sl_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, sl_AB);
            end
            if (sr_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAndABOpcode - Detected mismatch in sr_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, sr_AB);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestAndABOpcode -  Output sr_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, sr_AB);
            end
            if (clr !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAndABOpcode - Detected mismatch in clr. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, clr);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestAndABOpcode -  Output clr is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, clr);
            end
            if (dec_A !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAndABOpcode - Detected mismatch in dec_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, dec_A);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestAndABOpcode -  Output dec_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, dec_A);
            end
            if (dec_B !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAndABOpcode - Detected mismatch in dec_B. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, dec_B);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestAndABOpcode -  Output dec_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, dec_B);
            end
            if (mul_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAndABOpcode - Detected mismatch in mul_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, mul_AB);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestAndABOpcode -  Output mul_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, mul_AB);
            end
            if (cpl_A !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAndABOpcode - Detected mismatch in cpl_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cpl_A);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestAndABOpcode -  Output cpl_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cpl_A);
            end
            if (or_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAndABOpcode - Detected mismatch in or_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, or_AB);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestAndABOpcode -  Output or_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, or_AB);
            end
            if (xor_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAndABOpcode - Detected mismatch in xor_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, xor_AB);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestAndABOpcode -  Output xor_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, xor_AB);
            end
            if (cpl_B !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAndABOpcode - Detected mismatch in cpl_B. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cpl_B);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestAndABOpcode -  Output cpl_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cpl_B);
            end
            if (clr_Z !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAndABOpcode - Detected mismatch in clr_Z. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, clr_Z);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestAndABOpcode -  Output clr_Z is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, clr_Z);
            end
            if (load_inputs !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAndABOpcode - Detected mismatch in load_inputs. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, load_inputs);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestAndABOpcode -  Output load_inputs is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, load_inputs);
            end
            if (load_outputs !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAndABOpcode - Detected mismatch in load_outputs. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, load_outputs);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestAndABOpcode -  Output load_outputs is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, load_outputs);
            end
          end : check_thread
        join
        if (is_pass) begin
          $display("Time: %0t, PASSED: test_TestAndABOpcode", $time);
        end else begin
          $display("Time: %0t, FAILED: test_TestAndABOpcode", $time);
        end
        $display("Time: %0t, INFO: Finished: test_TestAndABOpcode", $time);
      end
    join_any
    disable fork;
    #(DRAIN_TIME);  // Wait for some time to observe the results
  endtask

  task automatic test_TestOrABOpcode;
    fork
      begin
        $display("Time: %0t, INFO: Starting: test_TestOrABOpcode", $time);
        #(PER_TASK_TIMEOUT);
        $display("Time: %0t, INFO: Timeout: test_TestOrABOpcode", $time);
      end
      begin
        // This task verifies the functionality of the ALU when the 'opcode' input is set to 'cOR_AB'.
        // It checks if the 'or_AB' output is asserted high for one clock cycle and all other outputs are de-asserted.
        bit stimulus_s1 = 0, stimulus_s2 = 0, stimulus_s3 = 0;
        bit is_pass = 1;
        fork
          begin : simulation_thread
            $display("Time: %0t, INFO: test_TestOrABOpcode -  Driving values: opcode=0x%h", $time,
                     4'b1010);
            // Apply random input values to the 'opcode' port and wait for one clock cycle.
            opcode = 4'b1010;
            @(posedge clk);
            stimulus_s1 = 1;
            $display("Time: %0t, INFO: test_TestOrABOpcode -  Driving values: opcode=0x%h", $time,
                     4'b1010);
            // Set the 'opcode' input to the value corresponding to 'cOR_AB' and wait for one clock cycle.
            opcode = 4'b1010;
            @(posedge clk);
            stimulus_s2 = 1;
            stimulus_s3 = 1;
          end : simulation_thread
          begin : check_thread
            // Wait and compare expected output with observed output for step 1 if simulation step 1 has any expected output
            wait (stimulus_s1 == 1);
            $display("Time: %0t, INFO: test_TestOrABOpcode -  observed the stimulus_s1.", $time);
            // Wait and compare expected output with observed output for step 2 if simulation step 2 has any expected output
            wait (stimulus_s2 == 1);
            $display("Time: %0t, INFO: test_TestOrABOpcode -  observed the stimulus_s2.", $time);
            if (or_AB !== 1'b1) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestOrABOpcode - Detected mismatch in or_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b1, or_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestOrABOpcode -  Output or_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b1,
                  or_AB
              );
            // Wait and compare expected output with observed output for step 3 if simulation step 3 has any expected output
            wait (stimulus_s3 == 1);
            $display("Time: %0t, INFO: test_TestOrABOpcode -  observed the stimulus_s3.", $time);
            if (add_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestOrABOpcode - Detected mismatch in add_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, add_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestOrABOpcode -  Output add_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  add_AB
              );
            if (inc_A !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestOrABOpcode - Detected mismatch in inc_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, inc_A);
            end else
              $display(
                  "Time: %0t, INFO: test_TestOrABOpcode -  Output inc_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  inc_A
              );
            if (inc_B !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestOrABOpcode - Detected mismatch in inc_B. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, inc_B);
            end else
              $display(
                  "Time: %0t, INFO: test_TestOrABOpcode -  Output inc_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  inc_B
              );
            if (sub_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestOrABOpcode - Detected mismatch in sub_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, sub_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestOrABOpcode -  Output sub_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  sub_AB
              );
            if (cmp_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestOrABOpcode - Detected mismatch in cmp_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cmp_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestOrABOpcode -  Output cmp_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  cmp_AB
              );
            if (sl_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestOrABOpcode - Detected mismatch in sl_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, sl_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestOrABOpcode -  Output sl_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  sl_AB
              );
            if (sr_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestOrABOpcode - Detected mismatch in sr_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, sr_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestOrABOpcode -  Output sr_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  sr_AB
              );
            if (clr !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestOrABOpcode - Detected mismatch in clr. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, clr);
            end else
              $display(
                  "Time: %0t, INFO: test_TestOrABOpcode -  Output clr is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  clr
              );
            if (dec_A !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestOrABOpcode - Detected mismatch in dec_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, dec_A);
            end else
              $display(
                  "Time: %0t, INFO: test_TestOrABOpcode -  Output dec_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  dec_A
              );
            if (dec_B !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestOrABOpcode - Detected mismatch in dec_B. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, dec_B);
            end else
              $display(
                  "Time: %0t, INFO: test_TestOrABOpcode -  Output dec_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  dec_B
              );
            if (mul_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestOrABOpcode - Detected mismatch in mul_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, mul_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestOrABOpcode -  Output mul_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  mul_AB
              );
            if (cpl_A !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestOrABOpcode - Detected mismatch in cpl_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cpl_A);
            end else
              $display(
                  "Time: %0t, INFO: test_TestOrABOpcode -  Output cpl_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  cpl_A
              );
            if (and_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestOrABOpcode - Detected mismatch in and_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, and_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestOrABOpcode -  Output and_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  and_AB
              );
            if (xor_AB !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestOrABOpcode - Detected mismatch in xor_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, xor_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestOrABOpcode -  Output xor_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  xor_AB
              );
            if (cpl_B !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestOrABOpcode - Detected mismatch in cpl_B. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, cpl_B);
            end else
              $display(
                  "Time: %0t, INFO: test_TestOrABOpcode -  Output cpl_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  cpl_B
              );
            if (clr_Z !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestOrABOpcode - Detected mismatch in clr_Z. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, clr_Z);
            end else
              $display(
                  "Time: %0t, INFO: test_TestOrABOpcode -  Output clr_Z is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  clr_Z
              );
            if (load_inputs !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestOrABOpcode - Detected mismatch in load_inputs. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, load_inputs);
            end else
              $display(
                  "Time: %0t, INFO: test_TestOrABOpcode -  Output load_inputs is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  load_inputs
              );
            if (load_outputs !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestOrABOpcode - Detected mismatch in load_outputs. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b0, load_outputs);
            end else
              $display(
                  "Time: %0t, INFO: test_TestOrABOpcode -  Output load_outputs is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b0,
                  load_outputs
              );
          end : check_thread
        join
        if (is_pass) begin
          $display("Time: %0t, PASSED: test_TestOrABOpcode", $time);
        end else begin
          $display("Time: %0t, FAILED: test_TestOrABOpcode", $time);
        end
        $display("Time: %0t, INFO: Finished: test_TestOrABOpcode", $time);
      end
    join_any
    disable fork;
    #(DRAIN_TIME);  // Wait for some time to observe the results
  endtask

  task automatic test_TestMulABOpcode;
    fork
      begin
        $display("Time: %0t, INFO: Starting: test_TestMulABOpcode", $time);
        #(PER_TASK_TIMEOUT);
        $display("Time: %0t, INFO: Timeout: test_TestMulABOpcode", $time);
      end
      begin
        // This test verifies that the 'mul_AB' output is asserted when the 'opcode' input is set to 'cMUL_AB'.
        bit stimulus_s1 = 0, stimulus_s2 = 0, stimulus_s3 = 0;
        bit is_pass = 1;
        fork
          begin : simulation_thread
            $display("Time: %0t, INFO: test_TestMulABOpcode -  Driving values: opcode=0x%h", $time,
                     opcode);
            // Apply random input values to the opcode input and wait for one clock cycle.
            opcode = 4'b1001;
            @(posedge clk);
            stimulus_s1 = 1;
            $display("Time: %0t, INFO: test_TestMulABOpcode -  Driving values: opcode=0x%h", $time,
                     opcode);
            // Set the opcode input to 'cMUL_AB' (9) and wait for one clock cycle.
            opcode = 9;
            @(posedge clk);
            stimulus_s2 = 1;
            $display("Time: %0t, INFO: test_TestMulABOpcode -  Driving values: opcode=0x%h", $time,
                     opcode);
            // Check that 'mul_AB' is high and all other outputs are low.
            @(posedge clk);
            stimulus_s3 = 1;
          end
          begin : check_thread
            // Wait and compare expected output with observed output for step 1 if simulation step 1 has any expected output
            wait (stimulus_s1 == 1);
            $display("Time: %0t, INFO: test_TestMulABOpcode -  observed the stimulus_s1.", $time);
            // Wait and compare expected output with observed output for step 2 if simulation step 2 has any expected output
            wait (stimulus_s2 == 1);
            $display("Time: %0t, INFO: test_TestMulABOpcode -  observed the stimulus_s2.", $time);
            // Wait and compare expected output with observed output for step 3 if simulation step 3 has any expected output
            wait (stimulus_s3 == 1);
            $display("Time: %0t, INFO: test_TestMulABOpcode -  observed the stimulus_s3.", $time);
            if (mul_AB !== 1 || add_AB !== 0 || inc_A !== 0 || inc_B !== 0 || sub_AB !== 0 || cmp_AB !== 0 || sl_AB !== 0 || sr_AB !== 0 || clr !== 0 || dec_A !== 0 || dec_B !== 0 || cpl_A !== 0 || and_AB !== 0 || or_AB !== 0 || xor_AB !== 0 || cpl_B !== 0 || clr_Z !== 0 || clr_V !== 0 || clr_C !== 0 || load_inputs !== 0 || load_outputs !== 0) begin
              is_pass = 0;
              $display("Time: %0t, ERROR: test_TestMulABOpcode - Detected mismatch in output.",
                       $time);
            end else begin
              $display("Time: %0t, INFO: test_TestMulABOpcode -  Output is as expected", $time);
            end
          end
        join
        if (is_pass) begin
          $display("Time: %0t, PASSED: test_TestMulABOpcode", $time);
        end else begin
          $display("Time: %0t, FAILED: test_TestMulABOpcode", $time);
        end
        $display("Time: %0t, INFO: Finished: test_TestMulABOpcode", $time);
      end
    join_any
    disable fork;
    #(DRAIN_TIME);  // Wait for some time to observe the results
  endtask

  task automatic test_TestCplBOpcode;
    fork
      begin
        $display("Time: %0t, INFO: Starting: test_TestCplBOpcode", $time);
        #(PER_TASK_TIMEOUT);
        $display("Time: %0t, INFO: Timeout: test_TestCplBOpcode", $time);
      end
      begin
        // This task verifies the functionality of the 'cpl_B' opcode.
        bit stimulus_s1 = 0, stimulus_s2 = 0;
        bit is_pass = 1;
        fork
          begin : simulation_thread
            $display("Time: %0t, INFO: test_TestCplBOpcode -  Driving values: opcode=0x%h", $time,
                     4'b1101);
            // Apply random input values to the 'opcode' port and wait for one clock cycle.
            opcode = 4'b1101;
            @(posedge clk);
            stimulus_s1 = 1;
            $display("Time: %0t, INFO: test_TestCplBOpcode -  Driving values: opcode=0x%h", $time,
                     opcode);
            // Check that 'cpl_B' is high and all other outputs are low.
            @(posedge clk);
            stimulus_s2 = 1;
          end : simulation_thread
          begin : check_thread
            // Wait and compare expected output with observed output for step 1 if simulation step 1 has any expected output
            wait (stimulus_s1 == 1);
            $display("Time: %0t, INFO: test_TestCplBOpcode -  observed the stimulus_s1.", $time);
            // Wait and compare expected output with observed output for step 2 if simulation step 2 has any expected output
            wait (stimulus_s2 == 1);
            $display("Time: %0t, INFO: test_TestCplBOpcode -  observed the stimulus_s2.", $time);
            if (cpl_B !== 1'b1 || add_AB !== 1'b0 || inc_A !== 1'b0 || inc_B !== 1'b0 || sub_AB !== 1'b0 || cmp_AB !== 1'b0 || sl_AB !== 1'b0 || sr_AB !== 1'b0 || clr !== 1'b0 || dec_A !== 1'b0 || dec_B !== 1'b0 || mul_AB !== 1'b0 || cpl_A !== 1'b0 || and_AB !== 1'b0 || or_AB !== 1'b0 || xor_AB !== 1'b0 || clr_Z !== 1'b0 || load_inputs !== 1'b0 || load_outputs !== 1'b0) begin
              is_pass = 0;
              $display("Time: %0t, ERROR: test_TestCplBOpcode - Detected mismatch in output.",
                       $time);
            end else
              $display("Time: %0t, INFO: test_TestCplBOpcode -  Output is as expected", $time);
          end : check_thread
        join
        if (is_pass) begin
          $display("Time: %0t, PASSED: test_TestCplBOpcode", $time);
        end else begin
          $display("Time: %0t, FAILED: test_TestCplBOpcode", $time);
        end
        $display("Time: %0t, INFO: Finished: test_TestCplBOpcode", $time);
      end
    join_any
    disable fork;
    #(DRAIN_TIME);  // Wait for some time to observe the results
  endtask

  task automatic test_TestAslAbyBOpcode;
    fork
      begin
        $display("Time: %0t, INFO: Starting: test_TestAslAbyBOpcode", $time);
        #(PER_TASK_TIMEOUT);
        $display("Time: %0t, INFO: Timeout: test_TestAslAbyBOpcode", $time);
      end
      begin
        // This task tests the functionality of the ALU's arithmetic shift left operation (cASL_AbyB).
        bit stimulus_s1 = 0, stimulus_s2 = 0, stimulus_s3 = 0;
        bit is_pass = 1;
        fork
          begin : simulation_thread
            $display("Time: %0t, INFO: test_TestAslAbyBOpcode -  Driving values: opcode=0x%h",
                     $time, 4'b1010);
            opcode = 4'b1010;
            @(posedge clk);
            stimulus_s1 = 1;
            $display("Time: %0t, INFO: test_TestAslAbyBOpcode -  Driving values: opcode=0x%h",
                     $time, 4'b1010);
            opcode = 4'b1010;
            @(posedge clk);
            stimulus_s2 = 1;
            @(posedge clk);
            stimulus_s3 = 1;
          end : simulation_thread
          begin : check_thread
            // Wait for the stimulus to be applied.
            wait (stimulus_s1 == 1);
            $display("Time: %0t, INFO: test_TestAslAbyBOpcode -  observed the stimulus_s1.", $time);
            if (sl_AB !== 1) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAslAbyBOpcode - Detected mismatch in sl_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1, sl_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestAslAbyBOpcode -  Output sl_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1,
                  sl_AB
              );
            wait (stimulus_s2 == 1);
            $display("Time: %0t, INFO: test_TestAslAbyBOpcode -  observed the stimulus_s2.", $time);
            if (add_AB !== 0 || inc_A !== 0 || inc_B !== 0 || sub_AB !== 0 || cmp_AB !== 0 || sr_AB !== 0 || clr !== 0 || dec_A !== 0 || dec_B !== 0 || mul_AB !== 0 || cpl_A !== 0 || and_AB !== 0 || or_AB !== 0 || xor_AB !== 0 || cpl_B !== 0 || clr_Z !== 0 || clr_V !== 0 || clr_C !== 0 || load_inputs !== 0 || load_outputs !== 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAslAbyBOpcode - Detected mismatch in output signals. Expected all outputs to be de-asserted.",
                  $time);
            end else
              $display(
                  "Time: %0t, INFO: test_TestAslAbyBOpcode -  All other outputs are de-asserted as expected.",
                  $time
              );
            wait (stimulus_s3 == 1);
            $display("Time: %0t, INFO: test_TestAslAbyBOpcode -  observed the stimulus_s3.", $time);
          end : check_thread
        join
        if (is_pass) begin
          $display("Time: %0t, PASSED: test_TestAslAbyBOpcode", $time);
        end else begin
          $display("Time: %0t, FAILED: test_TestAslAbyBOpcode", $time);
        end
        $display("Time: %0t, INFO: Finished: test_TestAslAbyBOpcode", $time);
      end
    join_any
    disable fork;
    #(DRAIN_TIME);  // Wait for some time to observe the results
  endtask

  task automatic test_TestAsrAbyBOpcode;
    fork
      begin
        $display("Time: %0t, INFO: Starting: test_TestAsrAbyBOpcode", $time);
        #(PER_TASK_TIMEOUT);
        $display("Time: %0t, INFO: Timeout: test_TestAsrAbyBOpcode", $time);
      end
      begin
        // This task tests the functionality of the 'cASR_AbyB' opcode.
        bit stimulus_s1 = 0, stimulus_s2 = 0, stimulus_s3 = 0;
        bit is_pass = 1;
        fork
          begin : simulation_thread
            $display("Time: %0t, INFO: test_TestAsrAbyBOpcode -  Driving values: opcode=0x%h",
                     $time, 10);
            opcode = 10;
            // Wait for one clock cycle.
            @(posedge clk);
            stimulus_s1 = 1;
            $display("Time: %0t, INFO: test_TestAsrAbyBOpcode -  Driving values: opcode=0x%h",
                     $time, opcode);
            // Wait for one clock cycle.
            @(posedge clk);
            stimulus_s2 = 1;
            $display("Time: %0t, INFO: test_TestAsrAbyBOpcode -  Driving values: opcode=0x%h",
                     $time, opcode);
            stimulus_s3 = 1;
          end : simulation_thread
          begin : check_thread
            // Wait for the stimulus to be applied.
            wait (stimulus_s1 == 1);
            $display("Time: %0t, INFO: test_TestAsrAbyBOpcode -  observed the stimulus_s1.", $time);
            if (sr_AB !== 1) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAsrAbyBOpcode - Detected mismatch in sr_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1, sr_AB);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestAsrAbyBOpcode -  Output sr_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 1, sr_AB);
            end
            // Wait for the stimulus to be applied.
            wait (stimulus_s2 == 1);
            $display("Time: %0t, INFO: test_TestAsrAbyBOpcode -  observed the stimulus_s2.", $time);
            if (sr_AB !== 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAsrAbyBOpcode - Detected mismatch in sr_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 0, sr_AB);
            end else begin
              $display(
                  "Time: %0t, INFO: test_TestAsrAbyBOpcode -  Output sr_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time, 0, sr_AB);
            end
            // Wait for the stimulus to be applied.
            wait (stimulus_s3 == 1);
            $display("Time: %0t, INFO: test_TestAsrAbyBOpcode -  observed the stimulus_s3.", $time);
            if (add_AB !== 0 || inc_A !== 0 || inc_B !== 0 || sub_AB !== 0 || cmp_AB !== 0 || sl_AB !== 0 || clr !== 0 || dec_A !== 0 || dec_B !== 0 || mul_AB !== 0 || cpl_A !== 0 || and_AB !== 0 || or_AB !== 0 || xor_AB !== 0 || cpl_B !== 0 || clr_Z !== 0 || clr_V !== 0 || clr_C !== 0 || load_inputs !== 0 || load_outputs !== 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAsrAbyBOpcode - Detected mismatch in one or more outputs. Expected all outputs to be 0.",
                  $time);
            end else begin
              $display("Time: %0t, INFO: test_TestAsrAbyBOpcode -  All outputs are as expected.",
                       $time);
            end
          end : check_thread
        join
        if (is_pass) begin
          $display("Time: %0t, PASSED: test_TestAsrAbyBOpcode", $time);
        end else begin
          $display("Time: %0t, FAILED: test_TestAsrAbyBOpcode", $time);
        end
        $display("Time: %0t, INFO: Finished: test_TestAsrAbyBOpcode", $time);
      end
    join_any
    disable fork;
    #(DRAIN_TIME);  // Wait for some time to observe the results
  endtask

  task automatic test_TestArithmeticOperationSequence;
    fork
      begin
        $display("Time: %0t, INFO: Starting: test_TestArithmeticOperationSequence", $time);
        #(PER_TASK_TIMEOUT);
        $display("Time: %0t, INFO: Timeout: test_TestArithmeticOperationSequence", $time);
      end
      begin
        // This task tests the ALU by applying a sequence of 5 arithmetic operations.
        // and checks if the output reflects the result of the sequence of operations.
        bit
            stimulus_s1 = 0,
            stimulus_s2 = 0,
            stimulus_s3 = 0,
            stimulus_s4 = 0,
            stimulus_s5 = 0,
            stimulus_s6 = 0;
        bit is_pass = 1;
        fork
          begin : simulation_thread
            $display(
                "Time: %0t, INFO: test_TestArithmeticOperationSequence -  Driving values: reset=0x%h",
                $time, 1'b1);
            reset = 1'b1;
            stimulus_s1 = 1;
            $display(
                "Time: %0t, INFO: test_TestArithmeticOperationSequence -  Driving values: reset=0x%h",
                $time, 1'b0);
            reset = 1'b0;
            stimulus_s2 = 1;
            $display(
                "Time: %0t, INFO: test_TestArithmeticOperationSequence -  Driving values: opcode=0x%h",
                $time, 4'b0001);
            opcode = 4'b0001;
            @(posedge clk);
            stimulus_s3 = 1;
            $display(
                "Time: %0t, INFO: test_TestArithmeticOperationSequence -  Driving values: opcode=0x%h",
                $time, 4'b0100);
            opcode = 4'b0100;
            @(posedge clk);
            stimulus_s4 = 1;
            $display(
                "Time: %0t, INFO: test_TestArithmeticOperationSequence -  Driving values: opcode=0x%h",
                $time, 4'b1001);
            opcode = 4'b1001;
            @(posedge clk);
            stimulus_s5 = 1;
            $display(
                "Time: %0t, INFO: test_TestArithmeticOperationSequence -  Driving values: opcode=0x%h",
                $time, 4'b0011);
            opcode = 4'b0011;
            @(posedge clk);
            stimulus_s6 = 1;
            $display(
                "Time: %0t, INFO: test_TestArithmeticOperationSequence -  Driving values: opcode=0x%h",
                $time, 4'b1001);
            opcode = 4'b1001;
            @(posedge clk);
          end : simulation_thread
          begin : check_thread
            // Wait for reset to be released
            wait (stimulus_s1 == 1);
            $display(
                "Time: %0t, INFO: test_TestArithmeticOperationSequence -  observed the stimulus_s1.",
                $time);
            // Wait for reset to be released
            wait (stimulus_s2 == 1);
            $display(
                "Time: %0t, INFO: test_TestArithmeticOperationSequence -  observed the stimulus_s2.",
                $time);
            // Apply add operation
            wait (stimulus_s3 == 1);
            $display(
                "Time: %0t, INFO: test_TestArithmeticOperationSequence -  observed the stimulus_s3.",
                $time);
            if (add_AB !== 1'b1) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestArithmeticOperationSequence - Detected mismatch in add_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b1, add_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestArithmeticOperationSequence -  Output add_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b1,
                  add_AB
              );
            // Apply subtract operation
            wait (stimulus_s4 == 1);
            $display(
                "Time: %0t, INFO: test_TestArithmeticOperationSequence -  observed the stimulus_s4.",
                $time);
            if (sub_AB !== 1'b1) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestArithmeticOperationSequence - Detected mismatch in sub_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b1, sub_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestArithmeticOperationSequence -  Output sub_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b1,
                  sub_AB
              );
            // Apply multiply operation
            wait (stimulus_s5 == 1);
            $display(
                "Time: %0t, INFO: test_TestArithmeticOperationSequence -  observed the stimulus_s5.",
                $time);
            if (mul_AB !== 1'b1) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestArithmeticOperationSequence - Detected mismatch in mul_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b1, mul_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestArithmeticOperationSequence -  Output mul_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b1,
                  mul_AB
              );
            // Apply increment A operation
            wait (stimulus_s6 == 1);
            $display(
                "Time: %0t, INFO: test_TestArithmeticOperationSequence -  observed the stimulus_s6.",
                $time);
            if (inc_A !== 1'b1) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestArithmeticOperationSequence - Detected mismatch in inc_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b1, inc_A);
            end else
              $display(
                  "Time: %0t, INFO: test_TestArithmeticOperationSequence -  Output inc_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b1,
                  inc_A
              );
            @(posedge clk);
            if (dec_A !== 1'b1) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestArithmeticOperationSequence - Detected mismatch in dec_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b1, dec_A);
            end else
              $display(
                  "Time: %0t, INFO: test_TestArithmeticOperationSequence -  Output dec_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b1,
                  dec_A
              );
          end : check_thread
        join
        if (is_pass) begin
          $display("Time: %0t, PASSED: test_TestArithmeticOperationSequence", $time);
        end else begin
          $display("Time: %0t, FAILED: test_TestArithmeticOperationSequence", $time);
        end
        $display("Time: %0t, INFO: Finished: test_TestArithmeticOperationSequence", $time);
      end
    join_any
    disable fork;
    #(DRAIN_TIME);  // Wait for some time to observe the results
  endtask

  task automatic test_TestLogicalOperationSequence;
    fork
      begin
        $display("Time: %0t, INFO: Starting: test_TestLogicalOperationSequence", $time);
        #(PER_TASK_TIMEOUT);
        $display("Time: %0t, INFO: Timeout: test_TestLogicalOperationSequence", $time);
      end
      begin
        // This task verifies the functionality of the ALU by applying a series of logical operations.
        // It checks if the ALU correctly performs AND, OR, XOR, and complement operations.
        bit stimulus_s1 = 0, stimulus_s2 = 0, stimulus_s3 = 0, stimulus_s4 = 0, stimulus_s5 = 0;
        bit is_pass = 1;
        fork
          begin : simulation_thread
            $display(
                "Time: %0t, INFO: test_TestLogicalOperationSequence -  Driving values: opcode=0x%h",
                $time, 4'b0101);
            opcode = 4'b0101;
            @(posedge clk);
            stimulus_s1 = 1;
            $display(
                "Time: %0t, INFO: test_TestLogicalOperationSequence -  Driving values: opcode=0x%h",
                $time, 4'b1001);
            opcode = 4'b1001;
            @(posedge clk);
            stimulus_s2 = 1;
            $display(
                "Time: %0t, INFO: test_TestLogicalOperationSequence -  Driving values: opcode=0x%h",
                $time, 4'b1010);
            opcode = 4'b1010;
            @(posedge clk);
            stimulus_s3 = 1;
            $display(
                "Time: %0t, INFO: test_TestLogicalOperationSequence -  Driving values: opcode=0x%h",
                $time, 4'b1011);
            opcode = 4'b1011;
            @(posedge clk);
            stimulus_s4 = 1;
            $display(
                "Time: %0t, INFO: test_TestLogicalOperationSequence -  Driving values: opcode=0x%h",
                $time, 4'b1101);
            opcode = 4'b1101;
            @(posedge clk);
            stimulus_s5 = 1;
          end : simulation_thread
          begin : check_thread
            // Wait for stimulus to be applied
            wait (stimulus_s1 == 1);
            $display(
                "Time: %0t, INFO: test_TestLogicalOperationSequence -  observed the stimulus_s1.",
                $time);
            if (load_inputs !== 1'b1) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestLogicalOperationSequence - Detected mismatch in load_inputs. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b1, load_inputs);
            end else
              $display(
                  "Time: %0t, INFO: test_TestLogicalOperationSequence -  Output load_inputs is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b1,
                  load_inputs
              );
            wait (stimulus_s2 == 1);
            $display(
                "Time: %0t, INFO: test_TestLogicalOperationSequence -  observed the stimulus_s2.",
                $time);
            if (and_AB !== 1'b1) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestLogicalOperationSequence - Detected mismatch in and_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b1, and_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestLogicalOperationSequence -  Output and_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b1,
                  and_AB
              );
            if (load_inputs !== 1'b1) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestLogicalOperationSequence - Detected mismatch in load_inputs. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b1, load_inputs);
            end else
              $display(
                  "Time: %0t, INFO: test_TestLogicalOperationSequence -  Output load_inputs is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b1,
                  load_inputs
              );
            wait (stimulus_s3 == 1);
            $display(
                "Time: %0t, INFO: test_TestLogicalOperationSequence -  observed the stimulus_s3.",
                $time);
            if (or_AB !== 1'b1) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestLogicalOperationSequence - Detected mismatch in or_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b1, or_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestLogicalOperationSequence -  Output or_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b1,
                  or_AB
              );
            if (load_inputs !== 1'b1) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestLogicalOperationSequence - Detected mismatch in load_inputs. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b1, load_inputs);
            end else
              $display(
                  "Time: %0t, INFO: test_TestLogicalOperationSequence -  Output load_inputs is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b1,
                  load_inputs
              );
            wait (stimulus_s4 == 1);
            $display(
                "Time: %0t, INFO: test_TestLogicalOperationSequence -  observed the stimulus_s4.",
                $time);
            if (xor_AB !== 1'b1) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestLogicalOperationSequence - Detected mismatch in xor_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b1, xor_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestLogicalOperationSequence -  Output xor_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b1,
                  xor_AB
              );
            if (load_inputs !== 1'b1) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestLogicalOperationSequence - Detected mismatch in load_inputs. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b1, load_inputs);
            end else
              $display(
                  "Time: %0t, INFO: test_TestLogicalOperationSequence -  Output load_inputs is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b1,
                  load_inputs
              );
            wait (stimulus_s5 == 1);
            $display(
                "Time: %0t, INFO: test_TestLogicalOperationSequence -  observed the stimulus_s5.",
                $time);
            if (cpl_A !== 1'b1) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestLogicalOperationSequence - Detected mismatch in cpl_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b1, cpl_A);
            end else
              $display(
                  "Time: %0t, INFO: test_TestLogicalOperationSequence -  Output cpl_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b1,
                  cpl_A
              );
            if (load_inputs !== 1'b1) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestLogicalOperationSequence - Detected mismatch in load_inputs. Expected: 0x%h, Observed: 0x%h",
                  $time, 1'b1, load_inputs);
            end else
              $display(
                  "Time: %0t, INFO: test_TestLogicalOperationSequence -  Output load_inputs is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  1'b1,
                  load_inputs
              );
          end : check_thread
        join
        if (is_pass) begin
          $display("Time: %0t, PASSED: test_TestLogicalOperationSequence", $time);
        end else begin
          $display("Time: %0t, FAILED: test_TestLogicalOperationSequence", $time);
        end
        $display("Time: %0t, INFO: Finished: test_TestLogicalOperationSequence", $time);
      end
    join_any
    disable fork;
    #(DRAIN_TIME);  // Wait for some time to observe the results
  endtask

  task automatic test_TestShiftOperationSequence;
    fork
      begin
        $display("Time: %0t, INFO: Starting: test_TestShiftOperationSequence", $time);
        #(PER_TASK_TIMEOUT);
        $display("Time: %0t, INFO: Timeout: test_TestShiftOperationSequence", $time);
      end
      begin
        // This task tests the functionality of the ALU's shift operations.
        // It applies a sequence of left and right shift operations and verifies the output.
        bit stimulus_s1 = 0, stimulus_s2 = 0, stimulus_s3 = 0, stimulus_s4 = 0, stimulus_s5 = 0;
        bit is_pass = 1;
        fork
          begin : simulation_thread
            $display(
                "Time: %0t, INFO: test_TestShiftOperationSequence -  Driving values: reset=0x%h, opcode=0x%h",
                $time, 1'b1, 4'b0000);
            reset = 1'b1;
            opcode = 4'b0000;
            // Apply reset and initialize the DUT.
            stimulus_s1 = 1;
            $display(
                "Time: %0t, INFO: test_TestShiftOperationSequence -  Driving values: reset=0x%h",
                $time, 1'b0);
            reset = 1'b0;
            // Release reset.
            stimulus_s2 = 1;
            $display(
                "Time: %0t, INFO: test_TestShiftOperationSequence -  Driving values: opcode=0x%h",
                $time, 4'b1010);
            opcode = 4'b1010;
            repeat (1) @(posedge clk);
            // Apply random input values to the input ports and wait for one clock cycle.
            stimulus_s3 = 1;
            $display(
                "Time: %0t, INFO: test_TestShiftOperationSequence -  Driving values: opcode=0x%h",
                $time, 4'b1011);
            opcode = 4'b1011;
            repeat (1) @(posedge clk);
            // Apply another random input and wait for one clock cycle.
            stimulus_s4 = 1;
            $display(
                "Time: %0t, INFO: test_TestShiftOperationSequence -  Driving values: opcode=0x%h",
                $time, 4'b1010);
            opcode = 4'b1010;
            repeat (1) @(posedge clk);
            // Apply the last random input and wait for one clock cycle.
            stimulus_s5 = 1;
          end : simulation_thread
          begin : check_thread
            // Wait and compare expected output with observed output for step 1 if simulation step 1 has any expected output
            wait (stimulus_s1 == 1);
            $display(
                "Time: %0t, INFO: test_TestShiftOperationSequence -  observed the stimulus_s1.",
                $time);
            // Wait and compare expected output with observed output for step 2 if simulation step 2 has any expected output
            wait (stimulus_s2 == 1);
            $display(
                "Time: %0t, INFO: test_TestShiftOperationSequence -  observed the stimulus_s2.",
                $time);
            // Wait and compare expected output with observed output for step 3 if simulation step 3 has any expected output
            wait (stimulus_s3 == 1);
            $display(
                "Time: %0t, INFO: test_TestShiftOperationSequence -  observed the stimulus_s3.",
                $time);
            // Wait and compare expected output with observed output for step 4 if simulation step 4 has any expected output
            wait (stimulus_s4 == 1);
            $display(
                "Time: %0t, INFO: test_TestShiftOperationSequence -  observed the stimulus_s4.",
                $time);
            // Wait and compare expected output with observed output for step 5 if simulation step 5 has any expected output
            wait (stimulus_s5 == 1);
            $display(
                "Time: %0t, INFO: test_TestShiftOperationSequence -  observed the stimulus_s5.",
                $time);
          end : check_thread
        join
        if (is_pass) begin
          $display("Time: %0t, PASSED: test_TestShiftOperationSequence", $time);
        end else begin
          $display("Time: %0t, FAILED: test_TestShiftOperationSequence", $time);
        end
        $display("Time: %0t, INFO: Finished: test_TestShiftOperationSequence", $time);
      end
    join_any
    disable fork;
    #(DRAIN_TIME);  // Wait for some time to observe the results
  endtask

  task automatic test_TestCombinedOperationSequence;
    fork
      begin
        $display("Time: %0t, INFO: Starting: test_TestCombinedOperationSequence", $time);
        #(PER_TASK_TIMEOUT);
        $display("Time: %0t, INFO: Timeout: test_TestCombinedOperationSequence", $time);
      end
      begin
        // This task applies a sequence of 6 random opcodes to the ALU and checks the output signals.
        bit stimulus_s1 = 0, stimulus_s2 = 0;
        bit is_pass = 1;
        bit [3:0] opcode_1, opcode_2, opcode_3, opcode_4, opcode_5, opcode_6;
        opcode_1 = $urandom_range(0, 15);
        opcode_2 = $urandom_range(0, 15);
        opcode_3 = $urandom_range(0, 15);
        opcode_4 = $urandom_range(0, 15);
        opcode_5 = $urandom_range(0, 15);
        opcode_6 = $urandom_range(0, 15);
        fork
          begin : simulation_thread
            $display(
                "Time: %0t, INFO: test_TestCombinedOperationSequence -  Driving values: opcode=0x%h",
                $time, opcode_1);
            // Apply the first random opcode
            opcode = opcode_1;
            @(posedge clk);
            stimulus_s1 = 1;
            $display(
                "Time: %0t, INFO: test_TestCombinedOperationSequence -  Driving values: opcode=0x%h",
                $time, opcode_2);
            // Apply the second random opcode
            opcode = opcode_2;
            @(posedge clk);
            $display(
                "Time: %0t, INFO: test_TestCombinedOperationSequence -  Driving values: opcode=0x%h",
                $time, opcode_3);
            // Apply the third random opcode
            opcode = opcode_3;
            @(posedge clk);
            $display(
                "Time: %0t, INFO: test_TestCombinedOperationSequence -  Driving values: opcode=0x%h",
                $time, opcode_4);
            // Apply the fourth random opcode
            opcode = opcode_4;
            @(posedge clk);
            $display(
                "Time: %0t, INFO: test_TestCombinedOperationSequence -  Driving values: opcode=0x%h",
                $time, opcode_5);
            // Apply the fifth random opcode
            opcode = opcode_5;
            @(posedge clk);
            $display(
                "Time: %0t, INFO: test_TestCombinedOperationSequence -  Driving values: opcode=0x%h",
                $time, opcode_6);
            // Apply the sixth random opcode
            opcode = opcode_6;
            @(posedge clk);
            stimulus_s2 = 1;
          end : simulation_thread
          begin : check_thread
            // Wait for the stimulus to be applied
            wait (stimulus_s1 == 1);
            $display(
                "Time: %0t, INFO: test_TestCombinedOperationSequence -  observed the stimulus_s1.",
                $time);
            wait (stimulus_s2 == 1);
            $display(
                "Time: %0t, INFO: test_TestCombinedOperationSequence -  observed the stimulus_s2.",
                $time);
            @(posedge clk);
            if (add_AB !== 'd0 || inc_A !== 'd0 || inc_B !== 'd0 || sub_AB !== 'd0 || cmp_AB !== 'd0 || sl_AB !== 'd0 || sr_AB !== 'd0 || clr !== 'd0 || dec_A !== 'd0 || dec_B !== 'd0 || mul_AB !== 'd0 || cpl_A !== 'd0 || and_AB !== 'd0 || or_AB !== 'd0 || xor_AB !== 'd0 || cpl_B !== 'd0 || clr_Z !== 'd0 || clr_V !== 'd0 || clr_C !== 'd0 || load_inputs !== 'd0 || load_outputs !== 'd0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestCombinedOperationSequence - Detected mismatch in output signals.",
                  $time);
            end else
              $display(
                  "Time: %0t, INFO: test_TestCombinedOperationSequence -  Output signals are as expected.",
                  $time
              );
          end : check_thread
        join
        if (is_pass) begin
          $display("Time: %0t, PASSED: test_TestCombinedOperationSequence", $time);
        end else begin
          $display("Time: %0t, FAILED: test_TestCombinedOperationSequence", $time);
        end
        $display("Time: %0t, INFO: Finished: test_TestCombinedOperationSequence", $time);
      end
    join_any
    disable fork;
    #(DRAIN_TIME);  // Wait for some time to observe the results
  endtask

  task automatic test_TestInitializationAndReset;
    fork
      begin
        $display("Time: %0t, INFO: Starting: test_TestInitializationAndReset", $time);
        #(PER_TASK_TIMEOUT);
        $display("Time: %0t, INFO: Timeout: test_TestInitializationAndReset", $time);
      end
      begin
        // This task verifies the reset functionality of the ALU.
        bit stimulus_s1 = 0, stimulus_s2 = 0, stimulus_s3 = 0;
        bit is_pass = 1;
        fork
          begin : simulation_thread
            $display(
                "Time: %0t, INFO: test_TestInitializationAndReset -  Driving values: opcode=0x%h, reset=0x%h",
                $time, opcode, reset);
            opcode = 4'b0000;
            // Apply reset and initialize inputs.
            stimulus_s1 = 1;
            $display(
                "Time: %0t, INFO: test_TestInitializationAndReset -  Driving values: opcode=0x%h, reset=0x%h",
                $time, opcode, reset);
            reset = 1'b1;
            repeat (2)
            @(posedge clk)
            // Assert reset for a few clock cycles.
            stimulus_s2 = 1;
            $display(
                "Time: %0t, INFO: test_TestInitializationAndReset -  Driving values: opcode=0x%h, reset=0x%h",
                $time, opcode, reset);
            reset = 1'b0;
            // Deassert reset.
            stimulus_s3 = 1;
          end : simulation_thread
          begin : check_thread
            // Wait and compare expected output with observed output for step 1 if simulation step 1 has any expected output
            wait (stimulus_s1 == 1);
            $display(
                "Time: %0t, INFO: test_TestInitializationAndReset -  observed the stimulus_s1.",
                $time);
            // Wait and compare expected output with observed output for step 2 if simulation step 2 has any expected output
            wait (stimulus_s2 == 1);
            $display(
                "Time: %0t, INFO: test_TestInitializationAndReset -  observed the stimulus_s2.",
                $time);
            // Wait and compare expected output with observed output for step 3 if simulation step 3 has any expected output
            wait (stimulus_s3 == 1);
            $display(
                "Time: %0t, INFO: test_TestInitializationAndReset -  observed the stimulus_s3.",
                $time);
            @(posedge clk);
            if (add_AB !== 1'b0 || inc_A !== 1'b0 || inc_B !== 1'b0 || sub_AB !== 1'b0 || cmp_AB !== 1'b0 || sl_AB !== 1'b0 || sr_AB !== 1'b0 || clr !== 1'b1 || dec_A !== 1'b0 || dec_B !== 1'b0 || mul_AB !== 1'b0 || cpl_A !== 1'b0 || and_AB !== 1'b0 || or_AB !== 1'b0 || xor_AB !== 1'b0 || cpl_B !== 1'b0 || clr_Z !== 1'b0 || load_inputs !== 1'b0 || load_outputs !== 1'b0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestInitializationAndReset - Detected mismatch in output. Expected: add_AB = 1'b0, inc_A = 1'b0, inc_B = 1'b0, sub_AB = 1'b0, cmp_AB = 1'b0, sl_AB = 1'b0, sr_AB = 1'b0, clr = 1'b1, dec_A = 1'b0, dec_B = 1'b0, mul_AB = 1'b0, cpl_A = 1'b0, and_AB = 1'b0, or_AB = 1'b0, xor_AB = 1'b0, cpl_B = 1'b0, clr_Z = 1'b0, load_inputs = 1'b0, load_outputs = 1'b0, Observed: add_AB = %b, inc_A = %b, inc_B = %b, sub_AB = %b, cmp_AB = %b, sl_AB = %b, sr_AB = %b, clr = %b, dec_A = %b, dec_B = %b, mul_AB = %b, cpl_A = %b, and_AB = %b, or_AB = %b, xor_AB = %b, cpl_B = %b, clr_Z = %b, load_inputs = %b, load_outputs = %b",
                  $time, add_AB, inc_A, inc_B, sub_AB, cmp_AB, sl_AB, sr_AB, clr, dec_A, dec_B,
                  mul_AB, cpl_A, and_AB, or_AB, xor_AB, cpl_B, clr_Z, load_inputs, load_outputs);
            end else
              $display(
                  "Time: %0t, INFO: test_TestInitializationAndReset -  Output is as expected.",
                  $time
              );
          end : check_thread
        join
        if (is_pass) begin
          $display("Time: %0t, PASSED: test_TestInitializationAndReset", $time);
        end else begin
          $display("Time: %0t, FAILED: test_TestInitializationAndReset", $time);
        end
        $display("Time: %0t, INFO: Finished: test_TestInitializationAndReset", $time);
      end
    join_any
    disable fork;
    #(DRAIN_TIME);  // Wait for some time to observe the results
  endtask

  task automatic test_TestUndefinedOpcode;
    fork
      begin
        $display("Time: %0t, INFO: Starting: test_TestUndefinedOpcode", $time);
        #(PER_TASK_TIMEOUT);
        $display("Time: %0t, INFO: Timeout: test_TestUndefinedOpcode", $time);
      end
      begin
        // This task verifies the ALU behavior for undefined opcodes.
        // An undefined opcode should result in a NOP (no operation).
        bit stimulus_s1 = 0;
        bit is_pass = 1;
        fork
          begin : simulation_thread
            $display("Time: %0t, INFO: test_TestUndefinedOpcode -  Driving values: opcode=0x%h",
                     $time, 15);
            // Apply an undefined opcode (15).
            opcode = 4'b1111;
            @(posedge clk);
            stimulus_s1 = 1;
          end : simulation_thread
          begin : check_thread
            // Wait for stimulus to be applied.
            wait (stimulus_s1 == 1);
            $display("Time: %0t, INFO: test_TestUndefinedOpcode -  observed the stimulus_s1.",
                     $time);
            if (add_AB != 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestUndefinedOpcode - Detected mismatch in add_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 0, add_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestUndefinedOpcode -  Output add_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  0,
                  add_AB
              );
            if (inc_A != 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestUndefinedOpcode - Detected mismatch in inc_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 0, inc_A);
            end else
              $display(
                  "Time: %0t, INFO: test_TestUndefinedOpcode -  Output inc_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  0,
                  inc_A
              );
            if (inc_B != 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestUndefinedOpcode - Detected mismatch in inc_B. Expected: 0x%h, Observed: 0x%h",
                  $time, 0, inc_B);
            end else
              $display(
                  "Time: %0t, INFO: test_TestUndefinedOpcode -  Output inc_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  0,
                  inc_B
              );
            if (sub_AB != 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestUndefinedOpcode - Detected mismatch in sub_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 0, sub_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestUndefinedOpcode -  Output sub_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  0,
                  sub_AB
              );
            if (cmp_AB != 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestUndefinedOpcode - Detected mismatch in cmp_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 0, cmp_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestUndefinedOpcode -  Output cmp_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  0,
                  cmp_AB
              );
            if (sl_AB != 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestUndefinedOpcode - Detected mismatch in sl_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 0, sl_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestUndefinedOpcode -  Output sl_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  0,
                  sl_AB
              );
            if (sr_AB != 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestUndefinedOpcode - Detected mismatch in sr_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 0, sr_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestUndefinedOpcode -  Output sr_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  0,
                  sr_AB
              );
            if (clr != 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestUndefinedOpcode - Detected mismatch in clr. Expected: 0x%h, Observed: 0x%h",
                  $time, 0, clr);
            end else
              $display(
                  "Time: %0t, INFO: test_TestUndefinedOpcode -  Output clr is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  0,
                  clr
              );
            if (dec_A != 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestUndefinedOpcode - Detected mismatch in dec_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 0, dec_A);
            end else
              $display(
                  "Time: %0t, INFO: test_TestUndefinedOpcode -  Output dec_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  0,
                  dec_A
              );
            if (dec_B != 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestUndefinedOpcode - Detected mismatch in dec_B. Expected: 0x%h, Observed: 0x%h",
                  $time, 0, dec_B);
            end else
              $display(
                  "Time: %0t, INFO: test_TestUndefinedOpcode -  Output dec_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  0,
                  dec_B
              );
            if (mul_AB != 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestUndefinedOpcode - Detected mismatch in mul_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 0, mul_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestUndefinedOpcode -  Output mul_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  0,
                  mul_AB
              );
            if (cpl_A != 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestUndefinedOpcode - Detected mismatch in cpl_A. Expected: 0x%h, Observed: 0x%h",
                  $time, 0, cpl_A);
            end else
              $display(
                  "Time: %0t, INFO: test_TestUndefinedOpcode -  Output cpl_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  0,
                  cpl_A
              );
            if (and_AB != 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestUndefinedOpcode - Detected mismatch in and_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 0, and_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestUndefinedOpcode -  Output and_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  0,
                  and_AB
              );
            if (or_AB != 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestUndefinedOpcode - Detected mismatch in or_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 0, or_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestUndefinedOpcode -  Output or_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  0,
                  or_AB
              );
            if (xor_AB != 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestUndefinedOpcode - Detected mismatch in xor_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, 0, xor_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestUndefinedOpcode -  Output xor_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  0,
                  xor_AB
              );
            if (cpl_B != 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestUndefinedOpcode - Detected mismatch in cpl_B. Expected: 0x%h, Observed: 0x%h",
                  $time, 0, cpl_B);
            end else
              $display(
                  "Time: %0t, INFO: test_TestUndefinedOpcode -  Output cpl_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  0,
                  cpl_B
              );
            if (clr_Z != 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestUndefinedOpcode - Detected mismatch in clr_Z. Expected: 0x%h, Observed: 0x%h",
                  $time, 0, clr_Z);
            end else
              $display(
                  "Time: %0t, INFO: test_TestUndefinedOpcode -  Output clr_Z is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  0,
                  clr_Z
              );
            if (load_inputs != 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestUndefinedOpcode - Detected mismatch in load_inputs. Expected: 0x%h, Observed: 0x%h",
                  $time, 0, load_inputs);
            end else
              $display(
                  "Time: %0t, INFO: test_TestUndefinedOpcode -  Output load_inputs is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  0,
                  load_inputs
              );
            if (load_outputs != 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestUndefinedOpcode - Detected mismatch in load_outputs. Expected: 0x%h, Observed: 0x%h",
                  $time, 0, load_outputs);
            end else
              $display(
                  "Time: %0t, INFO: test_TestUndefinedOpcode -  Output load_outputs is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  0,
                  load_outputs
              );
          end : check_thread
        join
        if (is_pass) begin
          $display("Time: %0t, PASSED: test_TestUndefinedOpcode", $time);
        end else begin
          $display("Time: %0t, FAILED: test_TestUndefinedOpcode", $time);
        end
        $display("Time: %0t, INFO: Finished: test_TestUndefinedOpcode", $time);
      end
    join_any
    disable fork;
    #(DRAIN_TIME);  // Wait for some time to observe the results
  endtask

  task automatic test_TestAsynchronousResetDuringOpcodeTransition;
    fork
      begin
        $display("Time: %0t, INFO: Starting: test_TestAsynchronousResetDuringOpcodeTransition",
                 $time);
        #(PER_TASK_TIMEOUT);
        $display("Time: %0t, INFO: Timeout: test_TestAsynchronousResetDuringOpcodeTransition",
                 $time);
      end
      begin
        // This task verifies that the ALU correctly resets to its initial state when the 'reset' signal is asserted asynchronously, even during an opcode transition.
        bit stimulus_s1 = 0, stimulus_s2 = 0, stimulus_s3 = 0, stimulus_s4 = 0;
        bit [3:0] opcode_1;
        bit [3:0] opcode_2;
        bit is_pass = 1;
        fork
          begin : simulation_thread
            $display(
                "Time: %0t, INFO: test_TestAsynchronousResetDuringOpcodeTransition -  Driving values: opcode=0x%h, reset=0x%h",
                $time, opcode, reset);
            opcode = $urandom_range(0, 15);
            // Apply a random opcode to the ALU.
            stimulus_s1 = 1;
            @(posedge clk);
            $display(
                "Time: %0t, INFO: test_TestAsynchronousResetDuringOpcodeTransition -  Driving values: opcode=0x%h, reset=0x%h",
                $time, opcode, reset);
            // Wait for one clock cycle to allow the opcode to potentially be partially latched.
            stimulus_s2 = 1;
            opcode = $urandom_range(0, 15);
            // Apply a new random opcode while the previous opcode transition might be incomplete.
            stimulus_s3 = 1;
            reset = 1;
            $display(
                "Time: %0t, INFO: test_TestAsynchronousResetDuringOpcodeTransition -  Driving values: opcode=0x%h, reset=0x%h",
                $time, opcode, reset);
            // Assert the 'reset' signal asynchronously while the opcode transition is potentially in progress.
            stimulus_s4 = 1;
          end : simulation_thread
          begin : check_thread
            // Wait and compare expected output with observed output for step 1 if simulation step 1 has any expected output
            wait (stimulus_s1 == 1);
            $display(
                "Time: %0t, INFO: test_TestAsynchronousResetDuringOpcodeTransition -  observed the stimulus_s1.",
                $time);
            // Wait and compare expected output with observed output for step 2 if simulation step 2 has any expected output
            wait (stimulus_s2 == 1);
            $display(
                "Time: %0t, INFO: test_TestAsynchronousResetDuringOpcodeTransition -  observed the stimulus_s2.",
                $time);
            // Wait and compare expected output with observed output for step 3 if simulation step 3 has any expected output
            wait (stimulus_s3 == 1);
            $display(
                "Time: %0t, INFO: test_TestAsynchronousResetDuringOpcodeTransition -  observed the stimulus_s3.",
                $time);
            // Wait and compare expected output with observed output for step 4 if simulation step 4 has any expected output
            wait (stimulus_s4 == 1);
            $display(
                "Time: %0t, INFO: test_TestAsynchronousResetDuringOpcodeTransition -  observed the stimulus_s4.",
                $time);
            @(posedge clk);
            if (clr !== 1 || add_AB !== 0 || inc_A !== 0 || inc_B !== 0 || sub_AB !== 0 || cmp_AB !== 0 || sl_AB !== 0 || sr_AB !== 0 || dec_A !== 0 || dec_B !== 0 || mul_AB !== 0 || cpl_A !== 0 || and_AB !== 0 || or_AB !== 0 || xor_AB !== 0 || cpl_B !== 0 || clr_Z !== 0 || load_inputs !== 0 || load_outputs !== 0) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestAsynchronousResetDuringOpcodeTransition - Detected mismatch in output. Expected: clr = 1, add_AB = 0, inc_A = 0, inc_B = 0, sub_AB = 0, cmp_AB = 0, sl_AB = 0, sr_AB = 0, dec_A = 0, dec_B = 0, mul_AB = 0, cpl_A = 0, and_AB = 0, or_AB = 0, xor_AB = 0, cpl_B = 0, clr_Z = 0, load_inputs = 0, load_outputs = 0, Observed: clr = %b, add_AB = %b, inc_A = %b, inc_B = %b, sub_AB = %b, cmp_AB = %b, sl_AB = %b, sr_AB = %b, dec_A = %b, dec_B = %b, mul_AB = %b, cpl_A = %b, and_AB = %b, or_AB = %b, xor_AB = %b, cpl_B = %b, clr_Z = %b, load_inputs = %b, load_outputs = %b",
                  $time, clr, add_AB, inc_A, inc_B, sub_AB, cmp_AB, sl_AB, sr_AB, dec_A, dec_B,
                  mul_AB, cpl_A, and_AB, or_AB, xor_AB, cpl_B, clr_Z, load_inputs, load_outputs);
            end else
              $display(
                  "Time: %0t, INFO: test_TestAsynchronousResetDuringOpcodeTransition -  Output is as expected.",
                  $time
              );
          end : check_thread
        join
        if (is_pass) begin
          $display("Time: %0t, PASSED: test_TestAsynchronousResetDuringOpcodeTransition", $time);
        end else begin
          $display("Time: %0t, FAILED: test_TestAsynchronousResetDuringOpcodeTransition", $time);
        end
        $display("Time: %0t, INFO: Finished: test_TestAsynchronousResetDuringOpcodeTransition",
                 $time);
      end
    join_any
    disable fork;
    #(DRAIN_TIME);  // Wait for some time to observe the results
  endtask

  task automatic test_TestInvalidOpcode;
    fork
      begin
        $display("Time: %0t, INFO: Starting: test_TestInvalidOpcode", $time);
        #(PER_TASK_TIMEOUT);
        $display("Time: %0t, INFO: Timeout: test_TestInvalidOpcode", $time);
      end
      begin
        // This task applies an invalid opcode to the ALU and verifies that all outputs remain unchanged.
        bit stimulus_s1 = 0;
        bit is_pass = 1;
        fork
          begin : simulation_thread
            $display("Time: %0t, INFO: test_TestInvalidOpcode -  Driving values: opcode=0x%h",
                     $time, 16);
            // Apply an invalid opcode (16)
            opcode = 16;
            @(posedge clk);
            stimulus_s1 = 1;
          end : simulation_thread
          begin : check_thread
            // Wait for stimulus to be applied
            wait (stimulus_s1 == 1);
            $display("Time: %0t, INFO: test_TestInvalidOpcode -  observed the stimulus_s1.", $time);
            if (load_inputs != load_inputs) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestInvalidOpcode - Detected mismatch in load_inputs. Expected: 0x%h, Observed: 0x%h",
                  $time, load_inputs, load_inputs);
            end else
              $display(
                  "Time: %0t, INFO: test_TestInvalidOpcode -  Output load_inputs is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  load_inputs,
                  load_inputs
              );
            if (load_outputs != load_outputs) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestInvalidOpcode - Detected mismatch in load_outputs. Expected: 0x%h, Observed: 0x%h",
                  $time, load_outputs, load_outputs);
            end else
              $display(
                  "Time: %0t, INFO: test_TestInvalidOpcode -  Output load_outputs is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  load_outputs,
                  load_outputs
              );
            if (add_AB != add_AB) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestInvalidOpcode - Detected mismatch in add_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, add_AB, add_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestInvalidOpcode -  Output add_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  add_AB,
                  add_AB
              );
            if (inc_A != inc_A) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestInvalidOpcode - Detected mismatch in inc_A. Expected: 0x%h, Observed: 0x%h",
                  $time, inc_A, inc_A);
            end else
              $display(
                  "Time: %0t, INFO: test_TestInvalidOpcode -  Output inc_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  inc_A,
                  inc_A
              );
            if (inc_B != inc_B) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestInvalidOpcode - Detected mismatch in inc_B. Expected: 0x%h, Observed: 0x%h",
                  $time, inc_B, inc_B);
            end else
              $display(
                  "Time: %0t, INFO: test_TestInvalidOpcode -  Output inc_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  inc_B,
                  inc_B
              );
            if (sub_AB != sub_AB) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestInvalidOpcode - Detected mismatch in sub_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, sub_AB, sub_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestInvalidOpcode -  Output sub_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  sub_AB,
                  sub_AB
              );
            if (cmp_AB != cmp_AB) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestInvalidOpcode - Detected mismatch in cmp_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, cmp_AB, cmp_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestInvalidOpcode -  Output cmp_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  cmp_AB,
                  cmp_AB
              );
            if (sl_AB != sl_AB) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestInvalidOpcode - Detected mismatch in sl_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, sl_AB, sl_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestInvalidOpcode -  Output sl_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  sl_AB,
                  sl_AB
              );
            if (sr_AB != sr_AB) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestInvalidOpcode - Detected mismatch in sr_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, sr_AB, sr_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestInvalidOpcode -  Output sr_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  sr_AB,
                  sr_AB
              );
            if (clr != clr) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestInvalidOpcode - Detected mismatch in clr. Expected: 0x%h, Observed: 0x%h",
                  $time, clr, clr);
            end else
              $display(
                  "Time: %0t, INFO: test_TestInvalidOpcode -  Output clr is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  clr,
                  clr
              );
            if (dec_A != dec_A) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestInvalidOpcode - Detected mismatch in dec_A. Expected: 0x%h, Observed: 0x%h",
                  $time, dec_A, dec_A);
            end else
              $display(
                  "Time: %0t, INFO: test_TestInvalidOpcode -  Output dec_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  dec_A,
                  dec_A
              );
            if (dec_B != dec_B) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestInvalidOpcode - Detected mismatch in dec_B. Expected: 0x%h, Observed: 0x%h",
                  $time, dec_B, dec_B);
            end else
              $display(
                  "Time: %0t, INFO: test_TestInvalidOpcode -  Output dec_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  dec_B,
                  dec_B
              );
            if (mul_AB != mul_AB) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestInvalidOpcode - Detected mismatch in mul_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, mul_AB, mul_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestInvalidOpcode -  Output mul_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  mul_AB,
                  mul_AB
              );
            if (cpl_A != cpl_A) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestInvalidOpcode - Detected mismatch in cpl_A. Expected: 0x%h, Observed: 0x%h",
                  $time, cpl_A, cpl_A);
            end else
              $display(
                  "Time: %0t, INFO: test_TestInvalidOpcode -  Output cpl_A is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  cpl_A,
                  cpl_A
              );
            if (and_AB != and_AB) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestInvalidOpcode - Detected mismatch in and_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, and_AB, and_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestInvalidOpcode -  Output and_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  and_AB,
                  and_AB
              );
            if (or_AB != or_AB) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestInvalidOpcode - Detected mismatch in or_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, or_AB, or_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestInvalidOpcode -  Output or_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  or_AB,
                  or_AB
              );
            if (xor_AB != xor_AB) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestInvalidOpcode - Detected mismatch in xor_AB. Expected: 0x%h, Observed: 0x%h",
                  $time, xor_AB, xor_AB);
            end else
              $display(
                  "Time: %0t, INFO: test_TestInvalidOpcode -  Output xor_AB is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  xor_AB,
                  xor_AB
              );
            if (cpl_B != cpl_B) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestInvalidOpcode - Detected mismatch in cpl_B. Expected: 0x%h, Observed: 0x%h",
                  $time, cpl_B, cpl_B);
            end else
              $display(
                  "Time: %0t, INFO: test_TestInvalidOpcode -  Output cpl_B is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  cpl_B,
                  cpl_B
              );
            if (clr_Z != clr_Z) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestInvalidOpcode - Detected mismatch in clr_Z. Expected: 0x%h, Observed: 0x%h",
                  $time, clr_Z, clr_Z);
            end else
              $display(
                  "Time: %0t, INFO: test_TestInvalidOpcode -  Output clr_Z is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  clr_Z,
                  clr_Z
              );
            if (clr_V != clr_V) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestInvalidOpcode - Detected mismatch in clr_V. Expected: 0x%h, Observed: 0x%h",
                  $time, clr_V, clr_V);
            end else
              $display(
                  "Time: %0t, INFO: test_TestInvalidOpcode -  Output clr_V is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  clr_V,
                  clr_V
              );
            if (clr_C != clr_C) begin
              is_pass = 0;
              $display(
                  "Time: %0t, ERROR: test_TestInvalidOpcode - Detected mismatch in clr_C. Expected: 0x%h, Observed: 0x%h",
                  $time, clr_C, clr_C);
            end else
              $display(
                  "Time: %0t, INFO: test_TestInvalidOpcode -  Output clr_C is as expected. Expected: 0x%h, Observed: 0x%h",
                  $time,
                  clr_C,
                  clr_C
              );
          end : check_thread
        join
        if (is_pass) begin
          $display("Time: %0t, PASSED: test_TestInvalidOpcode", $time);
        end else begin
          $display("Time: %0t, FAILED: test_TestInvalidOpcode", $time);
        end
        $display("Time: %0t, INFO: Finished: test_TestInvalidOpcode", $time);
      end
    join_any
    disable fork;
    #(DRAIN_TIME);  // Wait for some time to observe the results
  endtask
endmodule

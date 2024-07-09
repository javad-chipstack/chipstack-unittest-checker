//
// (c) Meta Platforms, Inc. and affiliates. Confidential and proprietary.
// NOTICE OF CONFIDENTIAL AND PROPRIETARY INFORMATION & TECHNOLOGY:
// The information and technology contained herein (including the accompanying
// binary code) is the confidential information of Meta Platforms, Inc. and its
// affiliates (collectively, "Meta"). It is protected by applicable copyright
// and trade secret law, and may be claimed in one or more U.S. or foreign
// patents or pending patent applications. Meta retains all right, title and
// interest (including all intellectual property rights) in such information 
// and technology, and no licenses are hereby granted by Meta. Unauthorized
// use, reproduction, or dissemination is a violation of Meta's rights and
// is strictly prohibited.
//
// @generated
//
 // soccomp Version 10.3.0 (2ed27f84a)
// (c) Meta Platforms, Inc. and affiliates. Confidential and proprietary.
// Started soccomp on: Tue Dec 13 16:10:20 2022
// SONICS_PATH = :/nfs/project/ipgen/src/valerioc/fbrepo/common/build_root/install/studio/../extensions/include
// PYTHONPATH = PythonPathUnset
// /nfs/regress_03_ash/sonics/nightly/sonics-no-sysc-py3-daily-20221213_140241/install/studio-10.3/sonics_code/soccomp.py --relative --uvm_test --designdir ./smp --instance xrbase --post_process /nfs/project/ipgen/src/valerioc/fbrepo/common/src/neev/ipBuilder/neev/ipBuilder/GenerateIPDefs.py{"levels":"1|tile"} xrbase_alfred_smp.conf
// @generated

module mutex0_mutex(

    // Interface clk type clock of mutex0_mutex
    input  logic            clkclk,

    // Interface sys type system of mutex0_mutex
    input  logic            sysreset_n,
    input  logic            systest_mode_cgm,
    input  logic            systest_mode_async,

    // Interface regmodel0_regmodel_smutex0_owner0 type sv_interface of mutex0_mutex
    regmodel0_regmodel_smutex0_owner_interface.sp  regmodel0_regmodel_smutex0_owner0_if,

    // Interface regmodel0_regmodel_smutex0_owner1 type sv_interface of mutex0_mutex
    regmodel0_regmodel_smutex0_owner_interface.sp  regmodel0_regmodel_smutex0_owner1_if,

    // Interface regmodel0_regmodel_smutex0_owner2 type sv_interface of mutex0_mutex
    regmodel0_regmodel_smutex0_owner_interface.sp  regmodel0_regmodel_smutex0_owner2_if,

    // Interface regmodel0_regmodel_smutex0_owner3 type sv_interface of mutex0_mutex
    regmodel0_regmodel_smutex0_owner_interface.sp  regmodel0_regmodel_smutex0_owner3_if,

    // Interface regmodel0_regmodel_smutex0_owner4 type sv_interface of mutex0_mutex
    regmodel0_regmodel_smutex0_owner_interface.sp  regmodel0_regmodel_smutex0_owner4_if,

    // Interface regmodel0_regmodel_smutex0_owner5 type sv_interface of mutex0_mutex
    regmodel0_regmodel_smutex0_owner_interface.sp  regmodel0_regmodel_smutex0_owner5_if,

    // Interface regmodel0_regmodel_smutex0_owner6 type sv_interface of mutex0_mutex
    regmodel0_regmodel_smutex0_owner_interface.sp  regmodel0_regmodel_smutex0_owner6_if,

    // Interface regmodel0_regmodel_smutex0_owner7 type sv_interface of mutex0_mutex
    regmodel0_regmodel_smutex0_owner_interface.sp  regmodel0_regmodel_smutex0_owner7_if,

    // Interface regmodel0_regmodel_smutex0_ipc_sc type sv_interface of mutex0_mutex
    regmodel0_regmodel_smutex0_ipc_sc_interface.sp  regmodel0_regmodel_smutex0_ipc_sc_if,

    // Interface regmodel0_regmodel_smutex0_timeout type sv_interface of mutex0_mutex
    regmodel0_regmodel_smutex0_timeout_interface.sp  regmodel0_regmodel_smutex0_timeout_if,

    // Interface regmodel0_regmodel_smutex0_error_err_log type sv_interface of mutex0_mutex
    regmodel0_regmodel_smutex0_error_err_log_interface.sp  regmodel0_regmodel_smutex0_error_err_log_if,

    // Interface regmodel0_regmodel_smutex0_error_err_data type sv_interface of mutex0_mutex
    regmodel0_regmodel_smutex0_error_err_data_interface.sp  regmodel0_regmodel_smutex0_error_err_data_if,

    // Interface regmodel0_regmodel_smutex0_error_err_idx type sv_interface of mutex0_mutex
    regmodel0_regmodel_smutex0_error_err_idx_interface.sp  regmodel0_regmodel_smutex0_error_err_idx_if,

    // Interface regmodel0_regmodel_mutex0_mutex0 type sv_interface of mutex0_mutex
    regmodel0_regmodel_mutex0_mutex_interface.sp  regmodel0_regmodel_mutex0_mutex0_if,

    // Interface regmodel0_regmodel_mutex0_mutex1 type sv_interface of mutex0_mutex
    regmodel0_regmodel_mutex0_mutex_interface.sp  regmodel0_regmodel_mutex0_mutex1_if,

    // Interface regmodel0_regmodel_mutex0_mutex2 type sv_interface of mutex0_mutex
    regmodel0_regmodel_mutex0_mutex_interface.sp  regmodel0_regmodel_mutex0_mutex2_if,

    // Interface regmodel0_regmodel_mutex0_mutex3 type sv_interface of mutex0_mutex
    regmodel0_regmodel_mutex0_mutex_interface.sp  regmodel0_regmodel_mutex0_mutex3_if,

    // Interface regmodel0_regmodel_mutex0_mutex4 type sv_interface of mutex0_mutex
    regmodel0_regmodel_mutex0_mutex_interface.sp  regmodel0_regmodel_mutex0_mutex4_if,

    // Interface regmodel0_regmodel_mutex0_mutex5 type sv_interface of mutex0_mutex
    regmodel0_regmodel_mutex0_mutex_interface.sp  regmodel0_regmodel_mutex0_mutex5_if,

    // Interface regmodel0_regmodel_mutex0_mutex6 type sv_interface of mutex0_mutex
    regmodel0_regmodel_mutex0_mutex_interface.sp  regmodel0_regmodel_mutex0_mutex6_if,

    // Interface regmodel0_regmodel_mutex0_mutex7 type sv_interface of mutex0_mutex
    regmodel0_regmodel_mutex0_mutex_interface.sp  regmodel0_regmodel_mutex0_mutex7_if,

    // Non-Interface Ports
    output logic            err_irq
);

parameter MUTEX_COUNT   = 8;
parameter SWID_WIDTH    = 31;
parameter HWID_WIDTH    = 6;
parameter TMR_PRE_WIDTH = 8;
parameter TIMEOUT_WIDTH = 8;

parameter logic [2:0] IPC_MUTEX_ERR_NONE    = 3'd0;
parameter logic [2:0] IPC_MUTEX_ERR_TIMEOUT = 3'd6;
parameter logic [2:0] IPC_MUTEX_ERR_PERM    = 3'd7;

logic [MUTEX_COUNT-1:0] mtx_lock_ff;
logic [MUTEX_COUNT-1:0] [SWID_WIDTH-1:0] mtx_swid_ff;
logic [MUTEX_COUNT-1:0] mtx_swid_r;
logic [MUTEX_COUNT-1:0] [SWID_WIDTH-1:0] mtx_swid_in;
logic [MUTEX_COUNT-1:0] [SWID_WIDTH-1:0] mtx_swid_out;
logic [MUTEX_COUNT-1:0] mtx_lock_w;
logic [MUTEX_COUNT-1:0] mtx_lock_in;
logic [MUTEX_COUNT-1:0] mtx_lock_out;
logic [MUTEX_COUNT-1:0] [HWID_WIDTH-1:0] mtx_hwid_in;
logic [MUTEX_COUNT-1:0] mtx_sc_owner_w;
logic [MUTEX_COUNT-1:0] [HWID_WIDTH-1:0] mtx_sc_owner_in;
logic [MUTEX_COUNT-1:0] [HWID_WIDTH-1:0] mtx_sc_owner_out;
logic [HWID_WIDTH-1:0] mtx_sc_ipcid_in;
logic [1:0] timeout_prescale;
logic [TIMEOUT_WIDTH-1:0] timeout_compare;
logic load_err_regs;
logic load_err_multi;
logic err_multi_in;
logic [2:0] err_code_in;
logic [2:0] err_code_out;
logic [4:0] err_indx_out;
logic [MUTEX_COUNT-1:0] err_timeout;
logic [MUTEX_COUNT-1:0] log_timeout;
logic [4:0] timeout_indx;

assign mtx_sc_owner_in[0] = regmodel0_regmodel_smutex0_owner0_if.id_q;
assign regmodel0_regmodel_smutex0_owner0_if.id_enb = mtx_sc_owner_w[0];
assign regmodel0_regmodel_smutex0_owner0_if.id_d = mtx_sc_owner_out[0];
assign mtx_sc_owner_in[1] = regmodel0_regmodel_smutex0_owner1_if.id_q;
assign regmodel0_regmodel_smutex0_owner1_if.id_enb = mtx_sc_owner_w[1];
assign regmodel0_regmodel_smutex0_owner1_if.id_d = mtx_sc_owner_out[1];
assign mtx_sc_owner_in[2] = regmodel0_regmodel_smutex0_owner2_if.id_q;
assign regmodel0_regmodel_smutex0_owner2_if.id_enb = mtx_sc_owner_w[2];
assign regmodel0_regmodel_smutex0_owner2_if.id_d = mtx_sc_owner_out[2];
assign mtx_sc_owner_in[3] = regmodel0_regmodel_smutex0_owner3_if.id_q;
assign regmodel0_regmodel_smutex0_owner3_if.id_enb = mtx_sc_owner_w[3];
assign regmodel0_regmodel_smutex0_owner3_if.id_d = mtx_sc_owner_out[3];
assign mtx_sc_owner_in[4] = regmodel0_regmodel_smutex0_owner4_if.id_q;
assign regmodel0_regmodel_smutex0_owner4_if.id_enb = mtx_sc_owner_w[4];
assign regmodel0_regmodel_smutex0_owner4_if.id_d = mtx_sc_owner_out[4];
assign mtx_sc_owner_in[5] = regmodel0_regmodel_smutex0_owner5_if.id_q;
assign regmodel0_regmodel_smutex0_owner5_if.id_enb = mtx_sc_owner_w[5];
assign regmodel0_regmodel_smutex0_owner5_if.id_d = mtx_sc_owner_out[5];
assign mtx_sc_owner_in[6] = regmodel0_regmodel_smutex0_owner6_if.id_q;
assign regmodel0_regmodel_smutex0_owner6_if.id_enb = mtx_sc_owner_w[6];
assign regmodel0_regmodel_smutex0_owner6_if.id_d = mtx_sc_owner_out[6];
assign mtx_sc_owner_in[7] = regmodel0_regmodel_smutex0_owner7_if.id_q;
assign regmodel0_regmodel_smutex0_owner7_if.id_enb = mtx_sc_owner_w[7];
assign regmodel0_regmodel_smutex0_owner7_if.id_d = mtx_sc_owner_out[7];

assign mtx_sc_ipcid_in = regmodel0_regmodel_smutex0_ipc_sc_if.id_q;

assign timeout_prescale = regmodel0_regmodel_smutex0_timeout_if.prescale_q;
assign timeout_compare  = regmodel0_regmodel_smutex0_timeout_if.compare_q;

assign load_err_regs  = (err_code_out != 3'd0) && (err_code_in == 3'd0);
assign load_err_multi = ((err_code_out != 3'd0) || (err_timeout > {MUTEX_COUNT{1'b0}}))
                        && (err_code_in != 3'd0) && !err_multi_in;
assign regmodel0_regmodel_smutex0_error_err_log_if.code_enb = load_err_regs;
assign regmodel0_regmodel_smutex0_error_err_log_if.code_d = err_code_out;
assign err_code_in = regmodel0_regmodel_smutex0_error_err_log_if.code_q;
assign err_multi_in = regmodel0_regmodel_smutex0_error_err_log_if.multi_q;
assign regmodel0_regmodel_smutex0_error_err_log_if.access_enb = load_err_regs;
assign regmodel0_regmodel_smutex0_error_err_log_if.access_d = 1'b1;
assign regmodel0_regmodel_smutex0_error_err_log_if.id_enb = load_err_regs && (log_timeout == '0);
assign regmodel0_regmodel_smutex0_error_err_log_if.id_d = mtx_hwid_in[err_indx_out];  //spyglass disable -rule ImproperRangeIndex-ML -rule LINT_IMPROPER_RANGE_INDEX --"leye; PermWaiver; Leye_Lint Correct range will always be selected in case statement 
assign regmodel0_regmodel_smutex0_error_err_log_if.multi_enb = load_err_regs || load_err_multi;
assign regmodel0_regmodel_smutex0_error_err_log_if.multi_d = (load_err_regs) ? '0 : '1;
assign regmodel0_regmodel_smutex0_error_err_data_if.data_enb = load_err_regs  && (log_timeout == '0);
assign regmodel0_regmodel_smutex0_error_err_data_if.data_d   = {1'b0, mtx_swid_in[err_indx_out]};  //spyglass disable -rule ImproperRangeIndex-ML -rule LINT_IMPROPER_RANGE_INDEX --"leye; PermWaiver; Leye_Lint Correct range will always be selected in case statement 
assign regmodel0_regmodel_smutex0_error_err_idx_if.mutex_idx_enb = load_err_regs;
assign regmodel0_regmodel_smutex0_error_err_idx_if.mutex_idx_d   = (log_timeout > '0) ? timeout_indx : err_indx_out;

assign mtx_swid_r[0] = regmodel0_regmodel_mutex0_mutex0_if.swid_r;
assign mtx_swid_in[0] = regmodel0_regmodel_mutex0_mutex0_if.swid_din;
assign regmodel0_regmodel_mutex0_mutex0_if.swid_qout = mtx_swid_out[0];
assign mtx_lock_w[0] = regmodel0_regmodel_mutex0_mutex0_if.lock_w;
assign mtx_lock_in[0] = regmodel0_regmodel_mutex0_mutex0_if.lock_din;
assign mtx_hwid_in[0] = regmodel0_regmodel_mutex0_mutex0_if.reqinfo;
assign regmodel0_regmodel_mutex0_mutex0_if.lock_qout = mtx_lock_out[0];
assign mtx_swid_r[1] = regmodel0_regmodel_mutex0_mutex1_if.swid_r;
assign mtx_swid_in[1] = regmodel0_regmodel_mutex0_mutex1_if.swid_din;
assign regmodel0_regmodel_mutex0_mutex1_if.swid_qout = mtx_swid_out[1];
assign mtx_lock_w[1] = regmodel0_regmodel_mutex0_mutex1_if.lock_w;
assign mtx_lock_in[1] = regmodel0_regmodel_mutex0_mutex1_if.lock_din;
assign mtx_hwid_in[1] = regmodel0_regmodel_mutex0_mutex1_if.reqinfo;
assign regmodel0_regmodel_mutex0_mutex1_if.lock_qout = mtx_lock_out[1];
assign mtx_swid_r[2] = regmodel0_regmodel_mutex0_mutex2_if.swid_r;
assign mtx_swid_in[2] = regmodel0_regmodel_mutex0_mutex2_if.swid_din;
assign regmodel0_regmodel_mutex0_mutex2_if.swid_qout = mtx_swid_out[2];
assign mtx_lock_w[2] = regmodel0_regmodel_mutex0_mutex2_if.lock_w;
assign mtx_lock_in[2] = regmodel0_regmodel_mutex0_mutex2_if.lock_din;
assign mtx_hwid_in[2] = regmodel0_regmodel_mutex0_mutex2_if.reqinfo;
assign regmodel0_regmodel_mutex0_mutex2_if.lock_qout = mtx_lock_out[2];
assign mtx_swid_r[3] = regmodel0_regmodel_mutex0_mutex3_if.swid_r;
assign mtx_swid_in[3] = regmodel0_regmodel_mutex0_mutex3_if.swid_din;
assign regmodel0_regmodel_mutex0_mutex3_if.swid_qout = mtx_swid_out[3];
assign mtx_lock_w[3] = regmodel0_regmodel_mutex0_mutex3_if.lock_w;
assign mtx_lock_in[3] = regmodel0_regmodel_mutex0_mutex3_if.lock_din;
assign mtx_hwid_in[3] = regmodel0_regmodel_mutex0_mutex3_if.reqinfo;
assign regmodel0_regmodel_mutex0_mutex3_if.lock_qout = mtx_lock_out[3];
assign mtx_swid_r[4] = regmodel0_regmodel_mutex0_mutex4_if.swid_r;
assign mtx_swid_in[4] = regmodel0_regmodel_mutex0_mutex4_if.swid_din;
assign regmodel0_regmodel_mutex0_mutex4_if.swid_qout = mtx_swid_out[4];
assign mtx_lock_w[4] = regmodel0_regmodel_mutex0_mutex4_if.lock_w;
assign mtx_lock_in[4] = regmodel0_regmodel_mutex0_mutex4_if.lock_din;
assign mtx_hwid_in[4] = regmodel0_regmodel_mutex0_mutex4_if.reqinfo;
assign regmodel0_regmodel_mutex0_mutex4_if.lock_qout = mtx_lock_out[4];
assign mtx_swid_r[5] = regmodel0_regmodel_mutex0_mutex5_if.swid_r;
assign mtx_swid_in[5] = regmodel0_regmodel_mutex0_mutex5_if.swid_din;
assign regmodel0_regmodel_mutex0_mutex5_if.swid_qout = mtx_swid_out[5];
assign mtx_lock_w[5] = regmodel0_regmodel_mutex0_mutex5_if.lock_w;
assign mtx_lock_in[5] = regmodel0_regmodel_mutex0_mutex5_if.lock_din;
assign mtx_hwid_in[5] = regmodel0_regmodel_mutex0_mutex5_if.reqinfo;
assign regmodel0_regmodel_mutex0_mutex5_if.lock_qout = mtx_lock_out[5];
assign mtx_swid_r[6] = regmodel0_regmodel_mutex0_mutex6_if.swid_r;
assign mtx_swid_in[6] = regmodel0_regmodel_mutex0_mutex6_if.swid_din;
assign regmodel0_regmodel_mutex0_mutex6_if.swid_qout = mtx_swid_out[6];
assign mtx_lock_w[6] = regmodel0_regmodel_mutex0_mutex6_if.lock_w;
assign mtx_lock_in[6] = regmodel0_regmodel_mutex0_mutex6_if.lock_din;
assign mtx_hwid_in[6] = regmodel0_regmodel_mutex0_mutex6_if.reqinfo;
assign regmodel0_regmodel_mutex0_mutex6_if.lock_qout = mtx_lock_out[6];
assign mtx_swid_r[7] = regmodel0_regmodel_mutex0_mutex7_if.swid_r;
assign mtx_swid_in[7] = regmodel0_regmodel_mutex0_mutex7_if.swid_din;
assign regmodel0_regmodel_mutex0_mutex7_if.swid_qout = mtx_swid_out[7];
assign mtx_lock_w[7] = regmodel0_regmodel_mutex0_mutex7_if.lock_w;
assign mtx_lock_in[7] = regmodel0_regmodel_mutex0_mutex7_if.lock_din;
assign mtx_hwid_in[7] = regmodel0_regmodel_mutex0_mutex7_if.reqinfo;
assign regmodel0_regmodel_mutex0_mutex7_if.lock_qout = mtx_lock_out[7];

//==========================================================
// security & integrity check {{{

logic [MUTEX_COUNT-1:0] has_perm_w, has_perm_r, has_err;
logic [MUTEX_COUNT-1:0][2:0] err_code;

// spyglass disable_block W415a
always_comb begin
    has_perm_w = '1;
    has_perm_r = '1; // everyone has permission to read
    has_err    = '0;

    for (int ii=0; ii<MUTEX_COUNT; ii++) begin
        err_code[ii] = IPC_MUTEX_ERR_NONE;
        if (mtx_lock_w[ii] & mtx_lock_ff[ii] & (mtx_lock_in[ii] == 1'b0)) begin // release
            if (((mtx_hwid_in[ii] != mtx_sc_owner_in[ii]) | (mtx_swid_in[ii] != mtx_swid_ff[ii]))
                & (mtx_hwid_in[ii] != mtx_sc_ipcid_in)) begin
                has_perm_w[ii] = 1'b0;
                has_err[ii] = 1'b1;
                err_code[ii] = IPC_MUTEX_ERR_PERM;
            end
        end
    end
end
// spyglass enable_block W415a

assign err_code_out = (log_timeout > {MUTEX_COUNT{1'b0}}) ? IPC_MUTEX_ERR_TIMEOUT : err_code[err_indx_out];  //spyglass disable -rule ImproperRangeIndex-ML -rule LINT_IMPROPER_RANGE_INDEX --"leye; PermWaiver; Leye_Lint Correct range will always be selected in case statement

always_comb begin
    err_indx_out = 5'd0;
    priority case (1'b1)
        has_err[0]: err_indx_out = 5'd0;
        has_err[1]: err_indx_out = 5'd1;
        has_err[2]: err_indx_out = 5'd2;
        has_err[3]: err_indx_out = 5'd3;
        has_err[4]: err_indx_out = 5'd4;
        has_err[5]: err_indx_out = 5'd5;
        has_err[6]: err_indx_out = 5'd6;
        has_err[7]: err_indx_out = 5'd7;
        default: err_indx_out = 5'd0;
    endcase
end

always @(posedge clkclk or negedge sysreset_n)
   if (!sysreset_n) begin 
      err_irq <= '0;
   end 
   else 
   begin
      err_irq <= (err_code_in != 3'd0);
   end
// }}}

//==========================================================
// write {{{

logic [MUTEX_COUNT-1:0] mtx_lock_nxt;
logic [MUTEX_COUNT-1:0][SWID_WIDTH-1:0] mtx_swid_nxt;

// spyglass disable_block W415a
always_comb begin
    mtx_lock_nxt     = '0;
    mtx_swid_nxt     = '0;
    mtx_sc_owner_w   = '0;
    mtx_sc_owner_out = '0;

    for (int ii=0; ii<MUTEX_COUNT; ii++) begin
        mtx_lock_nxt[ii] = mtx_lock_ff[ii];
        mtx_swid_nxt[ii] = mtx_swid_ff[ii];
        if (mtx_lock_w[ii] & has_perm_w[ii] & ~has_err[ii]) begin
            if (mtx_lock_in[ii] == 1'b1) begin  // acquire
                if (!mtx_lock_ff[ii]) begin  // no owner
                    mtx_lock_nxt[ii]   = 1'b1;
                    mtx_swid_nxt[ii]   = mtx_swid_in[ii];
                    mtx_sc_owner_w[ii] = 1'b1;
                    mtx_sc_owner_out[ii] = mtx_hwid_in[ii];
                end
            end else begin  // release
                mtx_lock_nxt[ii] = '0;
                mtx_swid_nxt[ii] = '0;
            end
        end
    end
end
// spyglass enable_block W415a

always @(posedge clkclk or negedge sysreset_n)
   if (!sysreset_n) begin 
      mtx_lock_ff <= '0;
      mtx_swid_ff <= '0;
   end 
   else 
    begin
        for (int ii=0; ii<MUTEX_COUNT; ii++) begin
            mtx_lock_ff[ii] <= mtx_lock_nxt[ii];
            mtx_swid_ff[ii] <= mtx_swid_nxt[ii];
        end
    end
// }}}

//==========================================================
// read {{{

// spyglass disable_block W415a
always_comb begin
    mtx_lock_out = '0;
    mtx_swid_out = '0;

    for (int ii=0; ii<MUTEX_COUNT; ii++) begin
        if (mtx_swid_r[ii] & has_perm_r[ii]) begin
            if (mtx_lock_ff[ii]) begin  // has owner
                mtx_lock_out[ii] = 1'b1;
                mtx_swid_out[ii] = mtx_swid_ff[ii];
            end else begin  // no owner
                mtx_lock_out[ii] = '0;
                mtx_swid_out[ii] = '0;
            end
        end
    end
end
// spyglass enable_block W415a
// }}}

//==========================================================
// timeout {{{

logic [TMR_PRE_WIDTH-1:0] timeout_pre_cnt;
always @(posedge clkclk or negedge sysreset_n)
   if (!sysreset_n) begin 
      timeout_pre_cnt <= '0;
   end 
   else 
    begin
        if ((mtx_lock_ff > '0) && (timeout_compare > '0)) begin
            timeout_pre_cnt <= timeout_pre_cnt + 1'd1;
        end
    end

logic    pre_div_tick;
always_comb begin
    unique case (timeout_prescale)
        2'b00: pre_div_tick = |(timeout_compare);       //   1
        2'b01: pre_div_tick = &(timeout_pre_cnt[3:0]);  //  16
        2'b10: pre_div_tick = &(timeout_pre_cnt[7:0]);  // 256
        2'b11: pre_div_tick = 1'b0;                     // disabled
        default: pre_div_tick = 1'b0;
    endcase
end

logic [MUTEX_COUNT-1:0][TIMEOUT_WIDTH-1:0] timeout_cntr_ff;
always @(posedge clkclk or negedge sysreset_n)
   if (!sysreset_n) begin 
      timeout_cntr_ff <= '0;
   end 
   else 
    begin
        for (int ii=0; ii<MUTEX_COUNT; ii++) begin
            if (mtx_lock_w[ii] & has_perm_w[ii] & ~has_err[ii]) begin
                timeout_cntr_ff[ii] <= {TIMEOUT_WIDTH{1'b0}};
            end else if (mtx_lock_ff[ii] & ~err_timeout[ii] & pre_div_tick) begin
                timeout_cntr_ff[ii] <= timeout_cntr_ff[ii] + 1'd1;
            end  else if (log_timeout[ii]) begin
                timeout_cntr_ff[ii] <= {TIMEOUT_WIDTH{1'b0}};
            end
        end
    end

always_comb begin
    for (int ii=0; ii<MUTEX_COUNT; ii++) begin
        err_timeout[ii] = (timeout_compare > '0) && (timeout_cntr_ff[ii] == timeout_compare);
        log_timeout[ii] = err_timeout[ii] && (err_code_in == 3'd0) && (timeout_indx == ii);
    end
end

always_comb begin
    timeout_indx = 5'd0;
    priority case (1'b1)
        err_timeout[0]: timeout_indx = 5'd0;
        err_timeout[1]: timeout_indx = 5'd1;
        err_timeout[2]: timeout_indx = 5'd2;
        err_timeout[3]: timeout_indx = 5'd3;
        err_timeout[4]: timeout_indx = 5'd4;
        err_timeout[5]: timeout_indx = 5'd5;
        err_timeout[6]: timeout_indx = 5'd6;
        err_timeout[7]: timeout_indx = 5'd7;
        default: timeout_indx = 5'd0;
    endcase
end
// }}}
endmodule // mutex0_mutex

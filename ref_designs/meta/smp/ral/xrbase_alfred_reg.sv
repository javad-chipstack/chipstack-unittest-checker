// soccomp Version 10.3.0 (2ed27f84a)
// (c) Meta Platforms, Inc. and affiliates. Confidential and proprietary.
// Started soccomp on: Tue Dec 13 16:10:19 2022
// SONICS_PATH = :/nfs/project/ipgen/src/valerioc/fbrepo/common/build_root/install/studio/../extensions/include
// PYTHONPATH = PythonPathUnset
// /nfs/regress_03_ash/sonics/nightly/sonics-no-sysc-py3-daily-20221213_140241/install/studio-10.3/sonics_code/soccomp.py --relative --uvm_test --designdir ./smp --instance xrbase --post_process /nfs/project/ipgen/src/valerioc/fbrepo/common/src/neev/ipBuilder/neev/ipBuilder/GenerateIPDefs.py{"levels":"1|tile"} xrbase_alfred_smp.conf
// @generated

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

`ifndef FB_GUARD_XRBASE_ALFRED_REG_SV
`define FB_GUARD_XRBASE_ALFRED_REG_SV
//------------------------------------------------------------------------------
// Class: xrbase_alfred_sfdbs0_ipc_scReg
// Doorbell security processor ID
//------------------------------------------------------------------------------
class xrbase_alfred_sfdbs0_ipc_scReg extends uvm_reg;
    // Identification field for the CPU
    rand uvm_reg_field id;

    // Function: new
    function new(string name = "ipc_sc");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Identification field for the CPU
        id = new("id");
        id.configure(.parent(this), .size(6), .lsb_pos(0),
                     .access("RW"), .volatile(0), .reset(6'h00), .has_reset(1),
                     .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_sfdbs0_ipc_scReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_sfdbs0_sfdb0_srcReg
// Doorbell source secure register
//------------------------------------------------------------------------------
class xrbase_alfred_sfdbs0_sfdb0_srcReg extends uvm_reg;
    // Identification field for the source CPU
    rand uvm_reg_field id;
    // Size of the data FIFO, 0=2 words, 1=4 words, 2=8 words and 3=16 words, 4-7=0 words
    rand uvm_reg_field size;

    // Function: new
    function new(string name = "src");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Identification field for the source CPU
        id = new("id");
        id.configure(.parent(this), .size(6), .lsb_pos(0),
                     .access("RW"), .volatile(0), .reset(6'h00), .has_reset(1),
                     .is_rand(1), .individually_accessible(1));

        // Size of the data FIFO, 0=2 words, 1=4 words, 2=8 words and 3=16 words, 4-7=0 words
        size = new("size");
        size.configure(.parent(this), .size(3), .lsb_pos(16),
                       .access("RW"), .volatile(0), .reset(3'h2), .has_reset(1),
                       .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_sfdbs0_sfdb0_srcReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_sfdbs0_sfdb0_tgtReg
// Doorbell target secure register
//------------------------------------------------------------------------------
class xrbase_alfred_sfdbs0_sfdb0_tgtReg extends uvm_reg;
    // Identification field for the CPU
    rand uvm_reg_field id;

    // Function: new
    function new(string name = "tgt");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Identification field for the CPU
        id = new("id");
        id.configure(.parent(this), .size(6), .lsb_pos(0),
                     .access("RW"), .volatile(0), .reset(6'h00), .has_reset(1),
                     .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_sfdbs0_sfdb0_tgtReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_sfdbs0_sfdb0RegFile
// Doorbell 0 source IDs
//------------------------------------------------------------------------------
class xrbase_alfred_sfdbs0_sfdb0RegFile extends uvm_reg_file;
    rand xrbase_alfred_sfdbs0_sfdb0_srcReg src[16];
    rand xrbase_alfred_sfdbs0_sfdb0_tgtReg tgt;

    // Function: new
    function new(string name = "sfdb0");
        super.new(name);
    endfunction: new

    // Function: build
    virtual function void build();
        // Doorbell source secure register
        foreach (src[i]) begin
            src[i] = new($sformatf("src[%0d]", i));
            src[i].configure(.blk_parent(get_parent()), .regfile_parent(this), .hdl_path(""));
            src[i].build();
        end

        // Doorbell target secure register
        tgt = new("tgt");
        tgt.configure(.blk_parent(get_parent()), .regfile_parent(this), .hdl_path(""));
        tgt.build();

    endfunction : build

    // Function: add_hdl_paths
    virtual function void add_hdl_paths(string hdl_path);
        foreach (src[i]) begin
            src[i].add_hdl_path_slice(.name({hdl_path, $sformatf("_src%0d", i)}), .offset(0), .size(32), .first(0), .kind("RTL"));
        end
        tgt.add_hdl_path_slice(.name({hdl_path, "_tgt"}), .offset(0), .size(32), .first(0), .kind("RTL"));
    endfunction : add_hdl_paths

    // Function: add_regs
    virtual function void add_regs(uvm_reg_map map, uvm_reg_addr_t regFileOffset);
        foreach (src[i]) begin
            map.add_reg(.rg(src[i]), .offset(regFileOffset + 32'h00000000 + (i*32'h00000004)), .rights("RW"));
        end
        map.add_reg(.rg(tgt), .offset(regFileOffset + 32'h0000007c), .rights("RW"));
    endfunction : add_regs

endclass : xrbase_alfred_sfdbs0_sfdb0RegFile

//------------------------------------------------------------------------------
// Class: xrbase_alfred_sfdbs0_sfdb1_srcReg
// Doorbell source secure register
//------------------------------------------------------------------------------
class xrbase_alfred_sfdbs0_sfdb1_srcReg extends uvm_reg;
    // Identification field for the source CPU
    rand uvm_reg_field id;
    // Size of the data FIFO, 0=2 words, 1=4 words, 2=8 words and 3=16 words, 4-7=0 words
    rand uvm_reg_field size;

    // Function: new
    function new(string name = "src");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Identification field for the source CPU
        id = new("id");
        id.configure(.parent(this), .size(6), .lsb_pos(0),
                     .access("RW"), .volatile(0), .reset(6'h00), .has_reset(1),
                     .is_rand(1), .individually_accessible(1));

        // Size of the data FIFO, 0=2 words, 1=4 words, 2=8 words and 3=16 words, 4-7=0 words
        size = new("size");
        size.configure(.parent(this), .size(3), .lsb_pos(16),
                       .access("RW"), .volatile(0), .reset(3'h2), .has_reset(1),
                       .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_sfdbs0_sfdb1_srcReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_sfdbs0_sfdb1_tgtReg
// Doorbell target secure register
//------------------------------------------------------------------------------
class xrbase_alfred_sfdbs0_sfdb1_tgtReg extends uvm_reg;
    // Identification field for the CPU
    rand uvm_reg_field id;

    // Function: new
    function new(string name = "tgt");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Identification field for the CPU
        id = new("id");
        id.configure(.parent(this), .size(6), .lsb_pos(0),
                     .access("RW"), .volatile(0), .reset(6'h00), .has_reset(1),
                     .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_sfdbs0_sfdb1_tgtReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_sfdbs0_sfdb1RegFile
// Doorbell 1 source IDs
//------------------------------------------------------------------------------
class xrbase_alfred_sfdbs0_sfdb1RegFile extends uvm_reg_file;
    rand xrbase_alfred_sfdbs0_sfdb1_srcReg src[16];
    rand xrbase_alfred_sfdbs0_sfdb1_tgtReg tgt;

    // Function: new
    function new(string name = "sfdb1");
        super.new(name);
    endfunction: new

    // Function: build
    virtual function void build();
        // Doorbell source secure register
        foreach (src[i]) begin
            src[i] = new($sformatf("src[%0d]", i));
            src[i].configure(.blk_parent(get_parent()), .regfile_parent(this), .hdl_path(""));
            src[i].build();
        end

        // Doorbell target secure register
        tgt = new("tgt");
        tgt.configure(.blk_parent(get_parent()), .regfile_parent(this), .hdl_path(""));
        tgt.build();

    endfunction : build

    // Function: add_hdl_paths
    virtual function void add_hdl_paths(string hdl_path);
        foreach (src[i]) begin
            src[i].add_hdl_path_slice(.name({hdl_path, $sformatf("_src%0d", i)}), .offset(0), .size(32), .first(0), .kind("RTL"));
        end
        tgt.add_hdl_path_slice(.name({hdl_path, "_tgt"}), .offset(0), .size(32), .first(0), .kind("RTL"));
    endfunction : add_hdl_paths

    // Function: add_regs
    virtual function void add_regs(uvm_reg_map map, uvm_reg_addr_t regFileOffset);
        foreach (src[i]) begin
            map.add_reg(.rg(src[i]), .offset(regFileOffset + 32'h00000000 + (i*32'h00000004)), .rights("RW"));
        end
        map.add_reg(.rg(tgt), .offset(regFileOffset + 32'h0000007c), .rights("RW"));
    endfunction : add_regs

endclass : xrbase_alfred_sfdbs0_sfdb1RegFile

//------------------------------------------------------------------------------
// Class: xrbase_alfred_sfdbs0_error_err_logReg
// Error logging register
//------------------------------------------------------------------------------
class xrbase_alfred_sfdbs0_error_err_logReg extends uvm_reg;
    // Error code, 0 means no error
    rand uvm_reg_field code;
    // Access type that created the error, 0=write, 1=read
    rand uvm_reg_field access;
    // Initiator ID who created the error, carried on request information bits
    rand uvm_reg_field id;
    // Multiple errors have been detected, Only valid if code field is not equal to ERROR_NONE
    rand uvm_reg_field multi;

    // Function: new
    function new(string name = "err_log");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Error code, 0 means no error
        code = new("code");
        code.configure(.parent(this), .size(3), .lsb_pos(0),
                       .access("WC"), .volatile(1), .reset(3'h0), .has_reset(1),
                       .is_rand(1), .individually_accessible(1));

        // Access type that created the error, 0=write, 1=read
        access = new("access");
        access.configure(.parent(this), .size(1), .lsb_pos(4),
                         .access("RO"), .volatile(1), .reset(1'h0), .has_reset(1),
                         .is_rand(1), .individually_accessible(1));

        // Initiator ID who created the error, carried on request information bits
        id = new("id");
        id.configure(.parent(this), .size(6), .lsb_pos(8),
                     .access("RO"), .volatile(1), .reset(6'h00), .has_reset(1),
                     .is_rand(1), .individually_accessible(1));

        // Multiple errors have been detected, Only valid if code field is not equal to ERROR_NONE
        multi = new("multi");
        multi.configure(.parent(this), .size(1), .lsb_pos(31),
                        .access("RO"), .volatile(1), .reset(1'h0), .has_reset(1),
                        .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_sfdbs0_error_err_logReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_sfdbs0_error_err_dataReg
// Error data logging register
//------------------------------------------------------------------------------
class xrbase_alfred_sfdbs0_error_err_dataReg extends uvm_reg;
    // Data that created the error
    rand uvm_reg_field data;

    // Function: new
    function new(string name = "err_data");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Data that created the error
        data = new("data");
        data.configure(.parent(this), .size(32), .lsb_pos(0),
                       .access("RO"), .volatile(1), .reset(32'h00000000), .has_reset(1),
                       .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_sfdbs0_error_err_dataReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_sfdbs0_error_err_idxReg
// Error index logging register
//------------------------------------------------------------------------------
class xrbase_alfred_sfdbs0_error_err_idxReg extends uvm_reg;
    // Indication of the doorbell slice within a group. Values from 0 to 23.
    rand uvm_reg_field slice_idx;
    // Indication of the doorbell group. Values from 0 to 15.
    rand uvm_reg_field group_idx;

    // Function: new
    function new(string name = "err_idx");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Indication of the doorbell slice within a group. Values from 0 to 23.
        slice_idx = new("slice_idx");
        slice_idx.configure(.parent(this), .size(5), .lsb_pos(0),
                            .access("RO"), .volatile(1), .reset(5'h00), .has_reset(1),
                            .is_rand(1), .individually_accessible(1));

        // Indication of the doorbell group. Values from 0 to 15.
        group_idx = new("group_idx");
        group_idx.configure(.parent(this), .size(4), .lsb_pos(5),
                            .access("RO"), .volatile(1), .reset(4'h0), .has_reset(1),
                            .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_sfdbs0_error_err_idxReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_sfdbs0_errorRegFile
// Doorbell error register group
//------------------------------------------------------------------------------
class xrbase_alfred_sfdbs0_errorRegFile extends uvm_reg_file;
    rand xrbase_alfred_sfdbs0_error_err_logReg err_log;
    rand xrbase_alfred_sfdbs0_error_err_dataReg err_data;
    rand xrbase_alfred_sfdbs0_error_err_idxReg err_idx;

    // Function: new
    function new(string name = "error");
        super.new(name);
    endfunction: new

    // Function: build
    virtual function void build();
        // Error logging register
        err_log = new("err_log");
        err_log.configure(.blk_parent(get_parent()), .regfile_parent(this), .hdl_path(""));
        err_log.build();

        // Error data logging register
        err_data = new("err_data");
        err_data.configure(.blk_parent(get_parent()), .regfile_parent(this), .hdl_path(""));
        err_data.build();

        // Error index logging register
        err_idx = new("err_idx");
        err_idx.configure(.blk_parent(get_parent()), .regfile_parent(this), .hdl_path(""));
        err_idx.build();

    endfunction : build

    // Function: add_hdl_paths
    virtual function void add_hdl_paths(string hdl_path);
        err_log.add_hdl_path_slice(.name({hdl_path, "_err_log"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        err_data.add_hdl_path_slice(.name({hdl_path, "_err_data"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        err_idx.add_hdl_path_slice(.name({hdl_path, "_err_idx"}), .offset(0), .size(32), .first(0), .kind("RTL"));
    endfunction : add_hdl_paths

    // Function: add_regs
    virtual function void add_regs(uvm_reg_map map, uvm_reg_addr_t regFileOffset);
        map.add_reg(.rg(err_log), .offset(regFileOffset + 32'h00000000), .rights("RW"));
        map.add_reg(.rg(err_data), .offset(regFileOffset + 32'h00000004), .rights("RO"));
        map.add_reg(.rg(err_idx), .offset(regFileOffset + 32'h00000008), .rights("RO"));
    endfunction : add_regs

endclass : xrbase_alfred_sfdbs0_errorRegFile

//------------------------------------------------------------------------------
// Class: xrbase_alfred_sfdbs0RegBlk
// sfdbs0 block
//------------------------------------------------------------------------------
class xrbase_alfred_sfdbs0RegBlk extends uvm_reg_block;
    rand xrbase_alfred_sfdbs0_ipc_scReg ipc_sc;
    rand xrbase_alfred_sfdbs0_sfdb0RegFile sfdb0;
    rand xrbase_alfred_sfdbs0_sfdb1RegFile sfdb1;
    rand xrbase_alfred_sfdbs0_errorRegFile error;
    uvm_reg_map sfdbs0_map;

    // Function: new
    function new(string name = "sfdbs0");
        super.new(name);
    endfunction: new

    // Function: build
    virtual function void build(int unsigned n_bytes=4);
        sfdbs0_map = create_map(.name("sfdbs0_map"), .base_addr('h0), .n_bytes(n_bytes), .endian(UVM_LITTLE_ENDIAN), .byte_addressing(1));
        set_default_map(sfdbs0_map);

        // Doorbell security processor ID
        ipc_sc = new("ipc_sc");
        ipc_sc.configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
        ipc_sc.build();
        ipc_sc.add_hdl_path_slice(.name({"sfdbs0", "_ipc_sc"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        sfdbs0_map.add_reg(.rg(ipc_sc), .offset('h80), .rights("RW"));

        // Doorbell 0 source IDs
        sfdb0 = new("sfdb0");
        sfdb0.configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
        sfdb0.build();
        sfdb0.add_hdl_paths(.hdl_path({"sfdbs0", "_sfdb0"}));
        sfdb0.add_regs(.map(sfdbs0_map), .regFileOffset(32'h00000000));

        // Doorbell 1 source IDs
        sfdb1 = new("sfdb1");
        sfdb1.configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
        sfdb1.build();
        sfdb1.add_hdl_paths(.hdl_path({"sfdbs0", "_sfdb1"}));
        sfdb1.add_regs(.map(sfdbs0_map), .regFileOffset(32'h00000100));

        // Doorbell error register group
        error = new("error");
        error.configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
        error.build();
        error.add_hdl_paths(.hdl_path({"sfdbs0", "_error"}));
        error.add_regs(.map(sfdbs0_map), .regFileOffset(32'h000000f0));

    endfunction : build

endclass : xrbase_alfred_sfdbs0RegBlk

//------------------------------------------------------------------------------
// Class: xrbase_alfred_fdbs0_fdb0_bellReg
// Doorbell register
//------------------------------------------------------------------------------
class xrbase_alfred_fdbs0_fdb0_bellReg extends uvm_reg;
    // Set(increment) or clear(decrement) the doorbell. An initiator with ID = sfdb.sfdbX.srcY.id may read the count, or write a 2'b01 (high priority), 2'b11 (low priority) to bit 1:0 of this field to increment the count.  An initiator with ID =  sfdb.sfdbX.tgt.id may read the count, or write a 1'b0 to bit 0 of this field to decrement the count. An initiator with ID = ipc_sc.id may read the count, or write(or write a 2'b01 (high priority), 2'b11 (low priority) to bit 1:0 of this field to increment, 1'b0 to bit 0 to decrement) this field. All other initiators will generate a permission error, with writes being ignored and reads returning a value of 0.
    rand uvm_reg_field cnt;
    // Last doorbell ring was unsuccessful. Meaning that one or more of the FIFO writes from the prior doorbell ring were unsuccessful (FIFO full). Value is updated on each doorbell ring. User does not need to clear this value.
    rand uvm_reg_field failed_ring;
    // Highest priority of any doorbell rings since the last time cnt field equaled zero. 2'b00 no priority defined, 2'b01 high priority, 2'b11 low priority.
    rand uvm_reg_field max_priority;
    // Valid FIFO count, number of words in the FIFO that contain complete messages. If all FIFO writes prior to the previous doorbell ring were successful this count is updated at the current doorbell ring to the current FIFO count. An initiator with ID = sfdb.sfdbX.srcY.id may read the count, writes ignored.  An initiator with ID =  sfdb.sfdbX.tgt.id may read the count, writes ignored. An initiator with ID = ipc_sc.id may read the count, writes ignored. All other initiators will generate a permission error, with reads returning a value of 0.
    rand uvm_reg_field valid_fcnt;
    // Raw FIFO count, number of words in the FIFO. An initiator with ID =  sfdb.sfdbX.srcY.id may read the count, writes ignored.  An initiator with ID =  sfdb.sfdbX.tgt.id may read the count, writes ignored. An initiator with ID = ipc_sc.id may read the count, writes ignored. All other initiators will generate a permission error, with reads returning a value of 0.
    rand uvm_reg_field fcnt;

    // Function: new
    function new(string name = "bell");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Set(increment) or clear(decrement) the doorbell. An initiator with ID = sfdb.sfdbX.srcY.id may read the count, or write a 2'b01 (high priority), 2'b11 (low priority) to bit 1:0 of this field to increment the count.  An initiator with ID =  sfdb.sfdbX.tgt.id may read the count, or write a 1'b0 to bit 0 of this field to decrement the count. An initiator with ID = ipc_sc.id may read the count, or write(or write a 2'b01 (high priority), 2'b11 (low priority) to bit 1:0 of this field to increment, 1'b0 to bit 0 to decrement) this field. All other initiators will generate a permission error, with writes being ignored and reads returning a value of 0.
        cnt = new("cnt");
        cnt.configure(.parent(this), .size(2), .lsb_pos(0),
                      .access("RW"), .volatile(1), .reset(2'h0), .has_reset(1),
                      .is_rand(1), .individually_accessible(1));

        // Last doorbell ring was unsuccessful. Meaning that one or more of the FIFO writes from the prior doorbell ring were unsuccessful (FIFO full). Value is updated on each doorbell ring. User does not need to clear this value.
        failed_ring = new("failed_ring");
        failed_ring.configure(.parent(this), .size(1), .lsb_pos(4),
                              .access("RO"), .volatile(1), .reset(1'h0), .has_reset(1),
                              .is_rand(1), .individually_accessible(1));

        // Highest priority of any doorbell rings since the last time cnt field equaled zero. 2'b00 no priority defined, 2'b01 high priority, 2'b11 low priority.
        max_priority = new("max_priority");
        max_priority.configure(.parent(this), .size(2), .lsb_pos(5),
                               .access("RO"), .volatile(1), .reset(2'h0), .has_reset(1),
                               .is_rand(1), .individually_accessible(1));

        // Valid FIFO count, number of words in the FIFO that contain complete messages. If all FIFO writes prior to the previous doorbell ring were successful this count is updated at the current doorbell ring to the current FIFO count. An initiator with ID = sfdb.sfdbX.srcY.id may read the count, writes ignored.  An initiator with ID =  sfdb.sfdbX.tgt.id may read the count, writes ignored. An initiator with ID = ipc_sc.id may read the count, writes ignored. All other initiators will generate a permission error, with reads returning a value of 0.
        valid_fcnt = new("valid_fcnt");
        valid_fcnt.configure(.parent(this), .size(5), .lsb_pos(8),
                             .access("RO"), .volatile(1), .reset(5'h00), .has_reset(1),
                             .is_rand(1), .individually_accessible(1));

        // Raw FIFO count, number of words in the FIFO. An initiator with ID =  sfdb.sfdbX.srcY.id may read the count, writes ignored.  An initiator with ID =  sfdb.sfdbX.tgt.id may read the count, writes ignored. An initiator with ID = ipc_sc.id may read the count, writes ignored. All other initiators will generate a permission error, with reads returning a value of 0.
        fcnt = new("fcnt");
        fcnt.configure(.parent(this), .size(5), .lsb_pos(16),
                       .access("RO"), .volatile(1), .reset(5'h00), .has_reset(1),
                       .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_fdbs0_fdb0_bellReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_fdbs0_fdb0_data_fifoVirtualReg
// Doorbell FIFO registers, offset 0x0=no ring, 0x4=high ring, 0x8=no ring, 0xC=low ring
//------------------------------------------------------------------------------
class xrbase_alfred_fdbs0_fdb0_data_fifoVirtualReg extends uvm_vreg;
    // FIFO data for doorbell group X bell Y. An initiator with ID = sfdb.sfdbX.srcY.id may write data. An initiator with ID =  sfdb.sfdbX.tgt.id may read data. An initiator with ID = ipc_sc.id may read or write data to this field. All other initiators will generate a permission error, with writes being ignored and reads returning a value of 0. Offset 0x0 & 0x10 do not ring the doorbell, offset 0x40 ring with high priority and offset 0x1C ring with low priority.
    rand uvm_vreg_field data;

    // Function: new
    function new(string name = "fifo");
        super.new(.name(name), .n_bits(32));
    endfunction: new

    // Function: build
    virtual function void build();
        // FIFO data for doorbell group X bell Y. An initiator with ID = sfdb.sfdbX.srcY.id may write data. An initiator with ID =  sfdb.sfdbX.tgt.id may read data. An initiator with ID = ipc_sc.id may read or write data to this field. All other initiators will generate a permission error, with writes being ignored and reads returning a value of 0. Offset 0x0 & 0x10 do not ring the doorbell, offset 0x40 ring with high priority and offset 0x1C ring with low priority.
        data = new("data");
        data.configure(.parent(this), .size(32), .lsb_pos(0));

    endfunction : build

endclass : xrbase_alfred_fdbs0_fdb0_data_fifoVirtualReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_fdbs0_fdb0_dataRegFile
// Doorbell FIFO data group registers
//------------------------------------------------------------------------------
class xrbase_alfred_fdbs0_fdb0_dataRegFile extends uvm_reg_file;
    uvm_mem fifo_mem;
    rand xrbase_alfred_fdbs0_fdb0_data_fifoVirtualReg fifo;

    // Function: new
    function new(string name = "data");
        super.new(name);
    endfunction: new

    // Function: build
    virtual function void build();
        // Doorbell FIFO registers, offset 0x0=no ring, 0x4=high ring, 0x8=no ring, 0xC=low ring
        fifo_mem = new("fifo_mem", .size(4), .n_bits(32));
        fifo_mem.configure(.parent(get_parent()), .hdl_path(""));

        // Doorbell FIFO registers, offset 0x0=no ring, 0x4=high ring, 0x8=no ring, 0xC=low ring
        fifo = new("fifo");
        fifo.configure(.parent(get_parent()), .mem(fifo_mem), .size(4), .offset(0), .incr(0));
        fifo.build();

    endfunction : build

    // Function: add_hdl_paths
    virtual function void add_hdl_paths(string hdl_path);
    endfunction : add_hdl_paths

    // Function: add_regs
    virtual function void add_regs(uvm_reg_map map, uvm_reg_addr_t regFileOffset);
        map.add_mem(.mem(fifo_mem), .offset(regFileOffset));
    endfunction : add_regs

endclass : xrbase_alfred_fdbs0_fdb0_dataRegFile

//------------------------------------------------------------------------------
// Class: xrbase_alfred_fdbs0_fdb0_controlReg
// Doorbell control register
//------------------------------------------------------------------------------
class xrbase_alfred_fdbs0_fdb0_controlReg extends uvm_reg;
    // Doorbell group X, acknowledge ring when reading 0x0 from FIFO. When draining the FIFO if a value of 0x0 is read (empty FIFO) then the bell count is automatically decremented.
    rand uvm_reg_field ack_on_empty;

    // Function: new
    function new(string name = "control");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Doorbell group X, acknowledge ring when reading 0x0 from FIFO. When draining the FIFO if a value of 0x0 is read (empty FIFO) then the bell count is automatically decremented.
        ack_on_empty = new("ack_on_empty");
        ack_on_empty.configure(.parent(this), .size(1), .lsb_pos(0),
                               .access("RW"), .volatile(0), .reset(1'h0), .has_reset(1),
                               .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_fdbs0_fdb0_controlReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_fdbs0_fdb0_enableReg
// Doorbell enable IRQ register
//------------------------------------------------------------------------------
class xrbase_alfred_fdbs0_fdb0_enableReg extends uvm_reg;
    // Doorbell group X, interrupt enable. An initiator with ID = sfdb.sfdbX.tgt.id or ipc_sc.id may write this field. Anyone may read.
    rand uvm_reg_field enable;

    // Function: new
    function new(string name = "enable");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Doorbell group X, interrupt enable. An initiator with ID = sfdb.sfdbX.tgt.id or ipc_sc.id may write this field. Anyone may read.
        enable = new("enable");
        enable.configure(.parent(this), .size(16), .lsb_pos(0),
                         .access("RW"), .volatile(1), .reset(16'hffff), .has_reset(1),
                         .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_fdbs0_fdb0_enableReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_fdbs0_fdb0_statusReg
// Doorbell status register
//------------------------------------------------------------------------------
class xrbase_alfred_fdbs0_fdb0_statusReg extends uvm_reg;
    // Doorbell group X, is ringing the bell either high or low priority. Bit 0 is for slice 0,... The status value read is after the enable value is applied.
    rand uvm_reg_field status;

    // Function: new
    function new(string name = "status");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Doorbell group X, is ringing the bell either high or low priority. Bit 0 is for slice 0,... The status value read is after the enable value is applied.
        status = new("status");
        status.configure(.parent(this), .size(16), .lsb_pos(0),
                         .access("RO"), .volatile(1), .reset(16'h0000), .has_reset(1),
                         .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_fdbs0_fdb0_statusReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_fdbs0_fdb0RegFile
// Doorbell 0
//------------------------------------------------------------------------------
class xrbase_alfred_fdbs0_fdb0RegFile extends uvm_reg_file;
    rand xrbase_alfred_fdbs0_fdb0_bellReg bell[16];
    rand xrbase_alfred_fdbs0_fdb0_dataRegFile data[16];
    rand xrbase_alfred_fdbs0_fdb0_controlReg control;
    rand xrbase_alfred_fdbs0_fdb0_enableReg enable;
    rand xrbase_alfred_fdbs0_fdb0_statusReg status;

    // Function: new
    function new(string name = "fdb0");
        super.new(name);
    endfunction: new

    // Function: build
    virtual function void build();
        // Doorbell register
        foreach (bell[i]) begin
            bell[i] = new($sformatf("bell[%0d]", i));
            bell[i].configure(.blk_parent(get_parent()), .regfile_parent(this), .hdl_path(""));
            bell[i].build();
        end

        // Doorbell FIFO data group registers
        foreach (data[i]) begin
            data[i] = new($sformatf("data[%0d]", i));
            data[i].configure(.blk_parent(get_parent()), .regfile_parent(this), .hdl_path(""));
            data[i].build();
        end

        // Doorbell control register
        control = new("control");
        control.configure(.blk_parent(get_parent()), .regfile_parent(this), .hdl_path(""));
        control.build();

        // Doorbell enable IRQ register
        enable = new("enable");
        enable.configure(.blk_parent(get_parent()), .regfile_parent(this), .hdl_path(""));
        enable.build();

        // Doorbell status register
        status = new("status");
        status.configure(.blk_parent(get_parent()), .regfile_parent(this), .hdl_path(""));
        status.build();

    endfunction : build

    // Function: add_hdl_paths
    virtual function void add_hdl_paths(string hdl_path);
        foreach (bell[i]) begin
            bell[i].add_hdl_path_slice(.name({hdl_path, $sformatf("_bell%0d", i)}), .offset(0), .size(32), .first(0), .kind("RTL"));
        end
        foreach (data[i]) begin
            data[i].add_hdl_paths(.hdl_path({hdl_path, $sformatf("_data%0d", i)}));
        end
        control.add_hdl_path_slice(.name({hdl_path, "_control"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        enable.add_hdl_path_slice(.name({hdl_path, "_enable"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        status.add_hdl_path_slice(.name({hdl_path, "_status"}), .offset(0), .size(32), .first(0), .kind("RTL"));
    endfunction : add_hdl_paths

    // Function: add_regs
    virtual function void add_regs(uvm_reg_map map, uvm_reg_addr_t regFileOffset);
        foreach (bell[i]) begin
            map.add_reg(.rg(bell[i]), .offset(regFileOffset + 32'h00000000 + (i*32'h00000004)), .rights("RW"));
        end
        foreach (data[i]) begin
            data[i].add_regs(.map(map), .regFileOffset(regFileOffset + 32'h00000080 + (i*32'h00000010)));
        end
        map.add_reg(.rg(control), .offset(regFileOffset + 32'h00000074), .rights("RW"));
        map.add_reg(.rg(enable), .offset(regFileOffset + 32'h00000078), .rights("RW"));
        map.add_reg(.rg(status), .offset(regFileOffset + 32'h0000007c), .rights("RO"));
    endfunction : add_regs

endclass : xrbase_alfred_fdbs0_fdb0RegFile

//------------------------------------------------------------------------------
// Class: xrbase_alfred_fdbs0_fdb1_bellReg
// Doorbell register
//------------------------------------------------------------------------------
class xrbase_alfred_fdbs0_fdb1_bellReg extends uvm_reg;
    // Set(increment) or clear(decrement) the doorbell. An initiator with ID = sfdb.sfdbX.srcY.id may read the count, or write a 2'b01 (high priority), 2'b11 (low priority) to bit 1:0 of this field to increment the count.  An initiator with ID =  sfdb.sfdbX.tgt.id may read the count, or write a 1'b0 to bit 0 of this field to decrement the count. An initiator with ID = ipc_sc.id may read the count, or write(or write a 2'b01 (high priority), 2'b11 (low priority) to bit 1:0 of this field to increment, 1'b0 to bit 0 to decrement) this field. All other initiators will generate a permission error, with writes being ignored and reads returning a value of 0.
    rand uvm_reg_field cnt;
    // Last doorbell ring was unsuccessful. Meaning that one or more of the FIFO writes from the prior doorbell ring were unsuccessful (FIFO full). Value is updated on each doorbell ring. User does not need to clear this value.
    rand uvm_reg_field failed_ring;
    // Highest priority of any doorbell rings since the last time cnt field equaled zero. 2'b00 no priority defined, 2'b01 high priority, 2'b11 low priority.
    rand uvm_reg_field max_priority;
    // Valid FIFO count, number of words in the FIFO that contain complete messages. If all FIFO writes prior to the previous doorbell ring were successful this count is updated at the current doorbell ring to the current FIFO count. An initiator with ID = sfdb.sfdbX.srcY.id may read the count, writes ignored.  An initiator with ID =  sfdb.sfdbX.tgt.id may read the count, writes ignored. An initiator with ID = ipc_sc.id may read the count, writes ignored. All other initiators will generate a permission error, with reads returning a value of 0.
    rand uvm_reg_field valid_fcnt;
    // Raw FIFO count, number of words in the FIFO. An initiator with ID =  sfdb.sfdbX.srcY.id may read the count, writes ignored.  An initiator with ID =  sfdb.sfdbX.tgt.id may read the count, writes ignored. An initiator with ID = ipc_sc.id may read the count, writes ignored. All other initiators will generate a permission error, with reads returning a value of 0.
    rand uvm_reg_field fcnt;

    // Function: new
    function new(string name = "bell");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Set(increment) or clear(decrement) the doorbell. An initiator with ID = sfdb.sfdbX.srcY.id may read the count, or write a 2'b01 (high priority), 2'b11 (low priority) to bit 1:0 of this field to increment the count.  An initiator with ID =  sfdb.sfdbX.tgt.id may read the count, or write a 1'b0 to bit 0 of this field to decrement the count. An initiator with ID = ipc_sc.id may read the count, or write(or write a 2'b01 (high priority), 2'b11 (low priority) to bit 1:0 of this field to increment, 1'b0 to bit 0 to decrement) this field. All other initiators will generate a permission error, with writes being ignored and reads returning a value of 0.
        cnt = new("cnt");
        cnt.configure(.parent(this), .size(2), .lsb_pos(0),
                      .access("RW"), .volatile(1), .reset(2'h0), .has_reset(1),
                      .is_rand(1), .individually_accessible(1));

        // Last doorbell ring was unsuccessful. Meaning that one or more of the FIFO writes from the prior doorbell ring were unsuccessful (FIFO full). Value is updated on each doorbell ring. User does not need to clear this value.
        failed_ring = new("failed_ring");
        failed_ring.configure(.parent(this), .size(1), .lsb_pos(4),
                              .access("RO"), .volatile(1), .reset(1'h0), .has_reset(1),
                              .is_rand(1), .individually_accessible(1));

        // Highest priority of any doorbell rings since the last time cnt field equaled zero. 2'b00 no priority defined, 2'b01 high priority, 2'b11 low priority.
        max_priority = new("max_priority");
        max_priority.configure(.parent(this), .size(2), .lsb_pos(5),
                               .access("RO"), .volatile(1), .reset(2'h0), .has_reset(1),
                               .is_rand(1), .individually_accessible(1));

        // Valid FIFO count, number of words in the FIFO that contain complete messages. If all FIFO writes prior to the previous doorbell ring were successful this count is updated at the current doorbell ring to the current FIFO count. An initiator with ID = sfdb.sfdbX.srcY.id may read the count, writes ignored.  An initiator with ID =  sfdb.sfdbX.tgt.id may read the count, writes ignored. An initiator with ID = ipc_sc.id may read the count, writes ignored. All other initiators will generate a permission error, with reads returning a value of 0.
        valid_fcnt = new("valid_fcnt");
        valid_fcnt.configure(.parent(this), .size(5), .lsb_pos(8),
                             .access("RO"), .volatile(1), .reset(5'h00), .has_reset(1),
                             .is_rand(1), .individually_accessible(1));

        // Raw FIFO count, number of words in the FIFO. An initiator with ID =  sfdb.sfdbX.srcY.id may read the count, writes ignored.  An initiator with ID =  sfdb.sfdbX.tgt.id may read the count, writes ignored. An initiator with ID = ipc_sc.id may read the count, writes ignored. All other initiators will generate a permission error, with reads returning a value of 0.
        fcnt = new("fcnt");
        fcnt.configure(.parent(this), .size(5), .lsb_pos(16),
                       .access("RO"), .volatile(1), .reset(5'h00), .has_reset(1),
                       .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_fdbs0_fdb1_bellReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_fdbs0_fdb1_data_fifoVirtualReg
// Doorbell FIFO registers, offset 0x0=no ring, 0x4=high ring, 0x8=no ring, 0xC=low ring
//------------------------------------------------------------------------------
class xrbase_alfred_fdbs0_fdb1_data_fifoVirtualReg extends uvm_vreg;
    // FIFO data for doorbell group X bell Y. An initiator with ID = sfdb.sfdbX.srcY.id may write data. An initiator with ID =  sfdb.sfdbX.tgt.id may read data. An initiator with ID = ipc_sc.id may read or write data to this field. All other initiators will generate a permission error, with writes being ignored and reads returning a value of 0. Offset 0x0 & 0x10 do not ring the doorbell, offset 0x40 ring with high priority and offset 0x1C ring with low priority.
    rand uvm_vreg_field data;

    // Function: new
    function new(string name = "fifo");
        super.new(.name(name), .n_bits(32));
    endfunction: new

    // Function: build
    virtual function void build();
        // FIFO data for doorbell group X bell Y. An initiator with ID = sfdb.sfdbX.srcY.id may write data. An initiator with ID =  sfdb.sfdbX.tgt.id may read data. An initiator with ID = ipc_sc.id may read or write data to this field. All other initiators will generate a permission error, with writes being ignored and reads returning a value of 0. Offset 0x0 & 0x10 do not ring the doorbell, offset 0x40 ring with high priority and offset 0x1C ring with low priority.
        data = new("data");
        data.configure(.parent(this), .size(32), .lsb_pos(0));

    endfunction : build

endclass : xrbase_alfred_fdbs0_fdb1_data_fifoVirtualReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_fdbs0_fdb1_dataRegFile
// Doorbell FIFO data group registers
//------------------------------------------------------------------------------
class xrbase_alfred_fdbs0_fdb1_dataRegFile extends uvm_reg_file;
    uvm_mem fifo_mem;
    rand xrbase_alfred_fdbs0_fdb1_data_fifoVirtualReg fifo;

    // Function: new
    function new(string name = "data");
        super.new(name);
    endfunction: new

    // Function: build
    virtual function void build();
        // Doorbell FIFO registers, offset 0x0=no ring, 0x4=high ring, 0x8=no ring, 0xC=low ring
        fifo_mem = new("fifo_mem", .size(4), .n_bits(32));
        fifo_mem.configure(.parent(get_parent()), .hdl_path(""));

        // Doorbell FIFO registers, offset 0x0=no ring, 0x4=high ring, 0x8=no ring, 0xC=low ring
        fifo = new("fifo");
        fifo.configure(.parent(get_parent()), .mem(fifo_mem), .size(4), .offset(0), .incr(0));
        fifo.build();

    endfunction : build

    // Function: add_hdl_paths
    virtual function void add_hdl_paths(string hdl_path);
    endfunction : add_hdl_paths

    // Function: add_regs
    virtual function void add_regs(uvm_reg_map map, uvm_reg_addr_t regFileOffset);
        map.add_mem(.mem(fifo_mem), .offset(regFileOffset));
    endfunction : add_regs

endclass : xrbase_alfred_fdbs0_fdb1_dataRegFile

//------------------------------------------------------------------------------
// Class: xrbase_alfred_fdbs0_fdb1_controlReg
// Doorbell control register
//------------------------------------------------------------------------------
class xrbase_alfred_fdbs0_fdb1_controlReg extends uvm_reg;
    // Doorbell group X, acknowledge ring when reading 0x0 from FIFO. When draining the FIFO if a value of 0x0 is read (empty FIFO) then the bell count is automatically decremented.
    rand uvm_reg_field ack_on_empty;

    // Function: new
    function new(string name = "control");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Doorbell group X, acknowledge ring when reading 0x0 from FIFO. When draining the FIFO if a value of 0x0 is read (empty FIFO) then the bell count is automatically decremented.
        ack_on_empty = new("ack_on_empty");
        ack_on_empty.configure(.parent(this), .size(1), .lsb_pos(0),
                               .access("RW"), .volatile(0), .reset(1'h0), .has_reset(1),
                               .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_fdbs0_fdb1_controlReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_fdbs0_fdb1_enableReg
// Doorbell enable IRQ register
//------------------------------------------------------------------------------
class xrbase_alfred_fdbs0_fdb1_enableReg extends uvm_reg;
    // Doorbell group X, interrupt enable. An initiator with ID = sfdb.sfdbX.tgt.id or ipc_sc.id may write this field. Anyone may read.
    rand uvm_reg_field enable;

    // Function: new
    function new(string name = "enable");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Doorbell group X, interrupt enable. An initiator with ID = sfdb.sfdbX.tgt.id or ipc_sc.id may write this field. Anyone may read.
        enable = new("enable");
        enable.configure(.parent(this), .size(16), .lsb_pos(0),
                         .access("RW"), .volatile(1), .reset(16'hffff), .has_reset(1),
                         .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_fdbs0_fdb1_enableReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_fdbs0_fdb1_statusReg
// Doorbell status register
//------------------------------------------------------------------------------
class xrbase_alfred_fdbs0_fdb1_statusReg extends uvm_reg;
    // Doorbell group X, is ringing the bell either high or low priority. Bit 0 is for slice 0,... The status value read is after the enable value is applied.
    rand uvm_reg_field status;

    // Function: new
    function new(string name = "status");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Doorbell group X, is ringing the bell either high or low priority. Bit 0 is for slice 0,... The status value read is after the enable value is applied.
        status = new("status");
        status.configure(.parent(this), .size(16), .lsb_pos(0),
                         .access("RO"), .volatile(1), .reset(16'h0000), .has_reset(1),
                         .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_fdbs0_fdb1_statusReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_fdbs0_fdb1RegFile
// Doorbell 1
//------------------------------------------------------------------------------
class xrbase_alfred_fdbs0_fdb1RegFile extends uvm_reg_file;
    rand xrbase_alfred_fdbs0_fdb1_bellReg bell[16];
    rand xrbase_alfred_fdbs0_fdb1_dataRegFile data[16];
    rand xrbase_alfred_fdbs0_fdb1_controlReg control;
    rand xrbase_alfred_fdbs0_fdb1_enableReg enable;
    rand xrbase_alfred_fdbs0_fdb1_statusReg status;

    // Function: new
    function new(string name = "fdb1");
        super.new(name);
    endfunction: new

    // Function: build
    virtual function void build();
        // Doorbell register
        foreach (bell[i]) begin
            bell[i] = new($sformatf("bell[%0d]", i));
            bell[i].configure(.blk_parent(get_parent()), .regfile_parent(this), .hdl_path(""));
            bell[i].build();
        end

        // Doorbell FIFO data group registers
        foreach (data[i]) begin
            data[i] = new($sformatf("data[%0d]", i));
            data[i].configure(.blk_parent(get_parent()), .regfile_parent(this), .hdl_path(""));
            data[i].build();
        end

        // Doorbell control register
        control = new("control");
        control.configure(.blk_parent(get_parent()), .regfile_parent(this), .hdl_path(""));
        control.build();

        // Doorbell enable IRQ register
        enable = new("enable");
        enable.configure(.blk_parent(get_parent()), .regfile_parent(this), .hdl_path(""));
        enable.build();

        // Doorbell status register
        status = new("status");
        status.configure(.blk_parent(get_parent()), .regfile_parent(this), .hdl_path(""));
        status.build();

    endfunction : build

    // Function: add_hdl_paths
    virtual function void add_hdl_paths(string hdl_path);
        foreach (bell[i]) begin
            bell[i].add_hdl_path_slice(.name({hdl_path, $sformatf("_bell%0d", i)}), .offset(0), .size(32), .first(0), .kind("RTL"));
        end
        foreach (data[i]) begin
            data[i].add_hdl_paths(.hdl_path({hdl_path, $sformatf("_data%0d", i)}));
        end
        control.add_hdl_path_slice(.name({hdl_path, "_control"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        enable.add_hdl_path_slice(.name({hdl_path, "_enable"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        status.add_hdl_path_slice(.name({hdl_path, "_status"}), .offset(0), .size(32), .first(0), .kind("RTL"));
    endfunction : add_hdl_paths

    // Function: add_regs
    virtual function void add_regs(uvm_reg_map map, uvm_reg_addr_t regFileOffset);
        foreach (bell[i]) begin
            map.add_reg(.rg(bell[i]), .offset(regFileOffset + 32'h00000000 + (i*32'h00000004)), .rights("RW"));
        end
        foreach (data[i]) begin
            data[i].add_regs(.map(map), .regFileOffset(regFileOffset + 32'h00000080 + (i*32'h00000010)));
        end
        map.add_reg(.rg(control), .offset(regFileOffset + 32'h00000074), .rights("RW"));
        map.add_reg(.rg(enable), .offset(regFileOffset + 32'h00000078), .rights("RW"));
        map.add_reg(.rg(status), .offset(regFileOffset + 32'h0000007c), .rights("RO"));
    endfunction : add_regs

endclass : xrbase_alfred_fdbs0_fdb1RegFile

//------------------------------------------------------------------------------
// Class: xrbase_alfred_fdbs0RegBlk
// fdbs0 block
//------------------------------------------------------------------------------
class xrbase_alfred_fdbs0RegBlk extends uvm_reg_block;
    rand xrbase_alfred_fdbs0_fdb0RegFile fdb0;
    rand xrbase_alfred_fdbs0_fdb1RegFile fdb1;
    uvm_reg_map fdbs0_map;

    // Function: new
    function new(string name = "fdbs0");
        super.new(name);
    endfunction: new

    // Function: build
    virtual function void build(int unsigned n_bytes=4);
        fdbs0_map = create_map(.name("fdbs0_map"), .base_addr('h0), .n_bytes(n_bytes), .endian(UVM_LITTLE_ENDIAN), .byte_addressing(1));
        set_default_map(fdbs0_map);

        // Doorbell 0
        fdb0 = new("fdb0");
        fdb0.configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
        fdb0.build();
        fdb0.add_hdl_paths(.hdl_path({"fdbs0", "_fdb0"}));
        fdb0.add_regs(.map(fdbs0_map), .regFileOffset(32'h00000000));

        // Doorbell 1
        fdb1 = new("fdb1");
        fdb1.configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
        fdb1.build();
        fdb1.add_hdl_paths(.hdl_path({"fdbs0", "_fdb1"}));
        fdb1.add_regs(.map(fdbs0_map), .regFileOffset(32'h00000200));

    endfunction : build

endclass : xrbase_alfred_fdbs0RegBlk

//------------------------------------------------------------------------------
// Class: xrbase_alfred_smutex0_ipc_scReg
// Mutex security processor ID
//------------------------------------------------------------------------------
class xrbase_alfred_smutex0_ipc_scReg extends uvm_reg;
    // Identification field
    rand uvm_reg_field id;

    // Function: new
    function new(string name = "ipc_sc");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Identification field
        id = new("id");
        id.configure(.parent(this), .size(6), .lsb_pos(0),
                     .access("RW"), .volatile(0), .reset(6'h00), .has_reset(1),
                     .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_smutex0_ipc_scReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_smutex0_timeoutReg
// Mutex timeout register
//------------------------------------------------------------------------------
class xrbase_alfred_smutex0_timeoutReg extends uvm_reg;
    // Timeout compare value, 0=disable.
    rand uvm_reg_field compare;
    // Timeout prescaler, 0=1 clock, 1=16 clocks, 2=256 clocks.
    rand uvm_reg_field prescale;

    // Function: new
    function new(string name = "timeout");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Timeout compare value, 0=disable.
        compare = new("compare");
        compare.configure(.parent(this), .size(8), .lsb_pos(0),
                          .access("RW"), .volatile(0), .reset(8'h00), .has_reset(1),
                          .is_rand(1), .individually_accessible(1));

        // Timeout prescaler, 0=1 clock, 1=16 clocks, 2=256 clocks.
        prescale = new("prescale");
        prescale.configure(.parent(this), .size(2), .lsb_pos(8),
                           .access("RW"), .volatile(0), .reset(2'h0), .has_reset(1),
                           .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_smutex0_timeoutReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_smutex0_ownerReg
// Mutex owner role ID
//------------------------------------------------------------------------------
class xrbase_alfred_smutex0_ownerReg extends uvm_reg;
    // Identification field
    rand uvm_reg_field id;

    // Function: new
    function new(string name = "owner");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Identification field
        id = new("id");
        id.configure(.parent(this), .size(6), .lsb_pos(0),
                     .access("RO"), .volatile(1), .reset(6'h00), .has_reset(1),
                     .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_smutex0_ownerReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_smutex0_error_err_logReg
// Error logging register
//------------------------------------------------------------------------------
class xrbase_alfred_smutex0_error_err_logReg extends uvm_reg;
    // Error code, 0 means no error
    rand uvm_reg_field code;
    // Error access mode, 0=write, 1=read
    rand uvm_reg_field access;
    // Error hardware ID
    rand uvm_reg_field id;
    // Multiple errors have been detected
    rand uvm_reg_field multi;

    // Function: new
    function new(string name = "err_log");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Error code, 0 means no error
        code = new("code");
        code.configure(.parent(this), .size(3), .lsb_pos(0),
                       .access("WC"), .volatile(1), .reset(3'h0), .has_reset(1),
                       .is_rand(1), .individually_accessible(1));

        // Error access mode, 0=write, 1=read
        access = new("access");
        access.configure(.parent(this), .size(1), .lsb_pos(4),
                         .access("RO"), .volatile(1), .reset(1'h0), .has_reset(1),
                         .is_rand(1), .individually_accessible(1));

        // Error hardware ID
        id = new("id");
        id.configure(.parent(this), .size(6), .lsb_pos(8),
                     .access("RO"), .volatile(1), .reset(6'h00), .has_reset(1),
                     .is_rand(1), .individually_accessible(1));

        // Multiple errors have been detected
        multi = new("multi");
        multi.configure(.parent(this), .size(1), .lsb_pos(31),
                        .access("RO"), .volatile(1), .reset(1'h0), .has_reset(1),
                        .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_smutex0_error_err_logReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_smutex0_error_err_dataReg
// Error data logging register
//------------------------------------------------------------------------------
class xrbase_alfred_smutex0_error_err_dataReg extends uvm_reg;
    // Error data
    rand uvm_reg_field data;

    // Function: new
    function new(string name = "err_data");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Error data
        data = new("data");
        data.configure(.parent(this), .size(32), .lsb_pos(0),
                       .access("RO"), .volatile(1), .reset(32'h00000000), .has_reset(1),
                       .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_smutex0_error_err_dataReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_smutex0_error_err_idxReg
// Error index logging register
//------------------------------------------------------------------------------
class xrbase_alfred_smutex0_error_err_idxReg extends uvm_reg;
    // Indication of the mutex. Values from 0 to 31.
    rand uvm_reg_field mutex_idx;

    // Function: new
    function new(string name = "err_idx");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Indication of the mutex. Values from 0 to 31.
        mutex_idx = new("mutex_idx");
        mutex_idx.configure(.parent(this), .size(5), .lsb_pos(0),
                            .access("RO"), .volatile(1), .reset(5'h00), .has_reset(1),
                            .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_smutex0_error_err_idxReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_smutex0_errorRegFile
// Mutex error register group
//------------------------------------------------------------------------------
class xrbase_alfred_smutex0_errorRegFile extends uvm_reg_file;
    rand xrbase_alfred_smutex0_error_err_logReg err_log;
    rand xrbase_alfred_smutex0_error_err_dataReg err_data;
    rand xrbase_alfred_smutex0_error_err_idxReg err_idx;

    // Function: new
    function new(string name = "error");
        super.new(name);
    endfunction: new

    // Function: build
    virtual function void build();
        // Error logging register
        err_log = new("err_log");
        err_log.configure(.blk_parent(get_parent()), .regfile_parent(this), .hdl_path(""));
        err_log.build();

        // Error data logging register
        err_data = new("err_data");
        err_data.configure(.blk_parent(get_parent()), .regfile_parent(this), .hdl_path(""));
        err_data.build();

        // Error index logging register
        err_idx = new("err_idx");
        err_idx.configure(.blk_parent(get_parent()), .regfile_parent(this), .hdl_path(""));
        err_idx.build();

    endfunction : build

    // Function: add_hdl_paths
    virtual function void add_hdl_paths(string hdl_path);
        err_log.add_hdl_path_slice(.name({hdl_path, "_err_log"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        err_data.add_hdl_path_slice(.name({hdl_path, "_err_data"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        err_idx.add_hdl_path_slice(.name({hdl_path, "_err_idx"}), .offset(0), .size(32), .first(0), .kind("RTL"));
    endfunction : add_hdl_paths

    // Function: add_regs
    virtual function void add_regs(uvm_reg_map map, uvm_reg_addr_t regFileOffset);
        map.add_reg(.rg(err_log), .offset(regFileOffset + 32'h00000000), .rights("RW"));
        map.add_reg(.rg(err_data), .offset(regFileOffset + 32'h00000004), .rights("RO"));
        map.add_reg(.rg(err_idx), .offset(regFileOffset + 32'h00000008), .rights("RO"));
    endfunction : add_regs

endclass : xrbase_alfred_smutex0_errorRegFile

//------------------------------------------------------------------------------
// Class: xrbase_alfred_smutex0RegBlk
// smutex0 block
//------------------------------------------------------------------------------
class xrbase_alfred_smutex0RegBlk extends uvm_reg_block;
    rand xrbase_alfred_smutex0_ipc_scReg ipc_sc;
    rand xrbase_alfred_smutex0_timeoutReg timeout;
    rand xrbase_alfred_smutex0_ownerReg owner[8];
    rand xrbase_alfred_smutex0_errorRegFile error;
    uvm_reg_map smutex0_map;

    // Function: new
    function new(string name = "smutex0");
        super.new(name);
    endfunction: new

    // Function: build
    virtual function void build(int unsigned n_bytes=4);
        smutex0_map = create_map(.name("smutex0_map"), .base_addr('h0), .n_bytes(n_bytes), .endian(UVM_LITTLE_ENDIAN), .byte_addressing(1));
        set_default_map(smutex0_map);

        // Mutex security processor ID
        ipc_sc = new("ipc_sc");
        ipc_sc.configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
        ipc_sc.build();
        ipc_sc.add_hdl_path_slice(.name({"smutex0", "_ipc_sc"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        smutex0_map.add_reg(.rg(ipc_sc), .offset('h80), .rights("RW"));

        // Mutex timeout register
        timeout = new("timeout");
        timeout.configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
        timeout.build();
        timeout.add_hdl_path_slice(.name({"smutex0", "_timeout"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        smutex0_map.add_reg(.rg(timeout), .offset('hEC), .rights("RW"));

        // Mutex owner role ID
        foreach (owner[i]) begin
            owner[i] = new($sformatf("owner[%0d]", i));
            owner[i].configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
            owner[i].build();
            owner[i].add_hdl_path_slice(.name({"smutex0", $sformatf("_owner%0d", i)}), .offset(0), .size(32), .first(0), .kind("RTL"));
            smutex0_map.add_reg(.rg(owner[i]), .offset('h0 + (i*32'h00000004)), .rights("RO"));
        end

        // Mutex error register group
        error = new("error");
        error.configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
        error.build();
        error.add_hdl_paths(.hdl_path({"smutex0", "_error"}));
        error.add_regs(.map(smutex0_map), .regFileOffset(32'h000000f0));

    endfunction : build

endclass : xrbase_alfred_smutex0RegBlk

//------------------------------------------------------------------------------
// Class: xrbase_alfred_mutex0_mutexReg
// Mutex
//------------------------------------------------------------------------------
class xrbase_alfred_mutex0_mutexReg extends uvm_reg;
    // Mutex software ID
    rand uvm_reg_field swid;
    // Mutex locked
    rand uvm_reg_field lock;

    // Function: new
    function new(string name = "mutex");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Mutex software ID
        swid = new("swid");
        swid.configure(.parent(this), .size(31), .lsb_pos(0),
                       .access("RW"), .volatile(1), .reset(31'h00000000), .has_reset(1),
                       .is_rand(1), .individually_accessible(1));

        // Mutex locked
        lock = new("lock");
        lock.configure(.parent(this), .size(1), .lsb_pos(31),
                       .access("RW"), .volatile(1), .reset(1'h0), .has_reset(1),
                       .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_mutex0_mutexReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_mutex0RegBlk
// mutex0 block
//------------------------------------------------------------------------------
class xrbase_alfred_mutex0RegBlk extends uvm_reg_block;
    rand xrbase_alfred_mutex0_mutexReg mutex[8];
    uvm_reg_map mutex0_map;

    // Function: new
    function new(string name = "mutex0");
        super.new(name);
    endfunction: new

    // Function: build
    virtual function void build(int unsigned n_bytes=4);
        mutex0_map = create_map(.name("mutex0_map"), .base_addr('h0), .n_bytes(n_bytes), .endian(UVM_LITTLE_ENDIAN), .byte_addressing(1));
        set_default_map(mutex0_map);

        // Mutex
        foreach (mutex[i]) begin
            mutex[i] = new($sformatf("mutex[%0d]", i));
            mutex[i].configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
            mutex[i].build();
            mutex[i].add_hdl_path_slice(.name({"mutex0", $sformatf("_mutex%0d", i)}), .offset(0), .size(32), .first(0), .kind("RTL"));
            mutex0_map.add_reg(.rg(mutex[i]), .offset('h0 + (i*32'h00000004)), .rights("RW"));
        end

    endfunction : build

endclass : xrbase_alfred_mutex0RegBlk

//------------------------------------------------------------------------------
// Class: xrbase_alfred_web0_controlReg
// Control Register
//------------------------------------------------------------------------------
class xrbase_alfred_web0_controlReg extends uvm_reg;
    // Edge to clear the activate_low_pwr output. 0=falling edge, 1=rising edge, 2 or 3 = none
    rand uvm_reg_field activate_low_pwr_edge;
    // Edge to clear the exvent_suppress output and interrupt outputs. 0=falling edge, 1=rising edge, 2 or 3 = none
    rand uvm_reg_field event_suppress_edge;
    // Edge to clear the wake_now bit function. 0=falling edge, 1=rising edge, 2 or 3 = none
    rand uvm_reg_field wake_now_edge;
    // Edge to clear the epu_enable bit function. 0=falling edge, 1=rising edge, 2 or 3 = none
    rand uvm_reg_field epu_enable_edge;

    // Function: new
    function new(string name = "control");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Edge to clear the activate_low_pwr output. 0=falling edge, 1=rising edge, 2 or 3 = none
        activate_low_pwr_edge = new("activate_low_pwr_edge");
        activate_low_pwr_edge.configure(.parent(this), .size(2), .lsb_pos(0),
                                        .access("RW"), .volatile(0), .reset(2'h1), .has_reset(1),
                                        .is_rand(1), .individually_accessible(1));

        // Edge to clear the exvent_suppress output and interrupt outputs. 0=falling edge, 1=rising edge, 2 or 3 = none
        event_suppress_edge = new("event_suppress_edge");
        event_suppress_edge.configure(.parent(this), .size(2), .lsb_pos(2),
                                      .access("RW"), .volatile(0), .reset(2'h0), .has_reset(1),
                                      .is_rand(1), .individually_accessible(1));

        // Edge to clear the wake_now bit function. 0=falling edge, 1=rising edge, 2 or 3 = none
        wake_now_edge = new("wake_now_edge");
        wake_now_edge.configure(.parent(this), .size(2), .lsb_pos(4),
                                .access("RW"), .volatile(0), .reset(2'h1), .has_reset(1),
                                .is_rand(1), .individually_accessible(1));

        // Edge to clear the epu_enable bit function. 0=falling edge, 1=rising edge, 2 or 3 = none
        epu_enable_edge = new("epu_enable_edge");
        epu_enable_edge.configure(.parent(this), .size(2), .lsb_pos(6),
                                  .access("RW"), .volatile(0), .reset(2'h1), .has_reset(1),
                                  .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_web0_controlReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_web0_event_setReg
// Event Set Register
//------------------------------------------------------------------------------
class xrbase_alfred_web0_event_setReg extends uvm_reg;
    // Set to enable a power state transition, typically set by a bus transaction and cleared by a hardware signal edge.
    rand uvm_reg_field activate_low_pwr;
    // Suppresses all interrupt outputs. This bit is typically set by a bus transaction and cleared by a hardware signal edge.
    rand uvm_reg_field event_suppress;
    // Forces a wake event toward the EPU.
    rand uvm_reg_field wake_now;
    // Set the epu_enable output.
    rand uvm_reg_field epu_enable;

    // Function: new
    function new(string name = "event_set");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Set to enable a power state transition, typically set by a bus transaction and cleared by a hardware signal edge.
        activate_low_pwr = new("activate_low_pwr");
        activate_low_pwr.configure(.parent(this), .size(1), .lsb_pos(0),
                                   .access("W1S"), .volatile(1), .reset(1'h0), .has_reset(1),
                                   .is_rand(1), .individually_accessible(1));

        // Suppresses all interrupt outputs. This bit is typically set by a bus transaction and cleared by a hardware signal edge.
        event_suppress = new("event_suppress");
        event_suppress.configure(.parent(this), .size(1), .lsb_pos(1),
                                 .access("W1S"), .volatile(1), .reset(1'h0), .has_reset(1),
                                 .is_rand(1), .individually_accessible(1));

        // Forces a wake event toward the EPU.
        wake_now = new("wake_now");
        wake_now.configure(.parent(this), .size(1), .lsb_pos(2),
                           .access("W1S"), .volatile(1), .reset(1'h0), .has_reset(1),
                           .is_rand(1), .individually_accessible(1));

        // Set the epu_enable output.
        epu_enable = new("epu_enable");
        epu_enable.configure(.parent(this), .size(1), .lsb_pos(3),
                             .access("W1S"), .volatile(1), .reset(1'h0), .has_reset(1),
                             .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_web0_event_setReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_web0_event_clrReg
// Event Clr Register
//------------------------------------------------------------------------------
class xrbase_alfred_web0_event_clrReg extends uvm_reg;
    // Clear to disable a power state transition, typically set by a bus transaction and cleared by a hardware signal rising edge.
    rand uvm_reg_field activate_low_pwr;
    // Suppresses all interrupt outputs. This bit is typically set by a bus transaction and cleared by a hardware signal falling edge.
    rand uvm_reg_field event_suppress;
    // Clear a wake event toward the EPU. Typically cleared by a hardware signal rising edge.
    rand uvm_reg_field wake_now;
    // Clear the epu_enable output.
    rand uvm_reg_field epu_enable;

    // Function: new
    function new(string name = "event_clr");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Clear to disable a power state transition, typically set by a bus transaction and cleared by a hardware signal rising edge.
        activate_low_pwr = new("activate_low_pwr");
        activate_low_pwr.configure(.parent(this), .size(1), .lsb_pos(0),
                                   .access("W1C"), .volatile(1), .reset(1'h0), .has_reset(1),
                                   .is_rand(1), .individually_accessible(1));

        // Suppresses all interrupt outputs. This bit is typically set by a bus transaction and cleared by a hardware signal falling edge.
        event_suppress = new("event_suppress");
        event_suppress.configure(.parent(this), .size(1), .lsb_pos(1),
                                 .access("W1C"), .volatile(1), .reset(1'h0), .has_reset(1),
                                 .is_rand(1), .individually_accessible(1));

        // Clear a wake event toward the EPU. Typically cleared by a hardware signal rising edge.
        wake_now = new("wake_now");
        wake_now.configure(.parent(this), .size(1), .lsb_pos(2),
                           .access("W1C"), .volatile(1), .reset(1'h0), .has_reset(1),
                           .is_rand(1), .individually_accessible(1));

        // Clear the epu_enable output.
        epu_enable = new("epu_enable");
        epu_enable.configure(.parent(this), .size(1), .lsb_pos(3),
                             .access("W1C"), .volatile(1), .reset(1'h0), .has_reset(1),
                             .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_web0_event_clrReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_web0_wake_enable0Reg
// Wake Enable Register
//------------------------------------------------------------------------------
class xrbase_alfred_web0_wake_enable0Reg extends uvm_reg;
    // One bit per interrupt or event, when high enables this input as a wake event. When low disables this input as a wake event.
    rand uvm_reg_field enable;

    // Function: new
    function new(string name = "wake_enable0");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // One bit per interrupt or event, when high enables this input as a wake event. When low disables this input as a wake event.
        enable = new("enable");
        enable.configure(.parent(this), .size(32), .lsb_pos(0),
                         .access("RW"), .volatile(0), .reset(32'h00000000), .has_reset(1),
                         .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_web0_wake_enable0Reg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_web0_wake_enable1Reg
// Wake Enable Register
//------------------------------------------------------------------------------
class xrbase_alfred_web0_wake_enable1Reg extends uvm_reg;
    // One bit per interrupt or event, when high enables this input as a wake event. When low disables this input as a wake event.
    rand uvm_reg_field enable;

    // Function: new
    function new(string name = "wake_enable1");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // One bit per interrupt or event, when high enables this input as a wake event. When low disables this input as a wake event.
        enable = new("enable");
        enable.configure(.parent(this), .size(32), .lsb_pos(0),
                         .access("RW"), .volatile(0), .reset(32'h00000000), .has_reset(1),
                         .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_web0_wake_enable1Reg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_web0_input_invert0Reg
// Input Invert Register
//------------------------------------------------------------------------------
class xrbase_alfred_web0_input_invert0Reg extends uvm_reg;
    // One bit per interrupt or event, when high inverts the polarity. When low does not invert the polarity.
    rand uvm_reg_field invert;

    // Function: new
    function new(string name = "input_invert0");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // One bit per interrupt or event, when high inverts the polarity. When low does not invert the polarity.
        invert = new("invert");
        invert.configure(.parent(this), .size(32), .lsb_pos(0),
                         .access("RW"), .volatile(0), .reset(32'h00000000), .has_reset(1),
                         .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_web0_input_invert0Reg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_web0_input_invert1Reg
// Input Invert Register
//------------------------------------------------------------------------------
class xrbase_alfred_web0_input_invert1Reg extends uvm_reg;
    // One bit per interrupt or event, when high inverts the polarity. When low does not invert the polarity.
    rand uvm_reg_field invert;

    // Function: new
    function new(string name = "input_invert1");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // One bit per interrupt or event, when high inverts the polarity. When low does not invert the polarity.
        invert = new("invert");
        invert.configure(.parent(this), .size(32), .lsb_pos(0),
                         .access("RW"), .volatile(0), .reset(32'h00000000), .has_reset(1),
                         .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_web0_input_invert1Reg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_web0RegBlk
// web0 block
//------------------------------------------------------------------------------
class xrbase_alfred_web0RegBlk extends uvm_reg_block;
    rand xrbase_alfred_web0_controlReg control;
    rand xrbase_alfred_web0_event_setReg event_set;
    rand xrbase_alfred_web0_event_clrReg event_clr;
    rand xrbase_alfred_web0_wake_enable0Reg wake_enable0;
    rand xrbase_alfred_web0_wake_enable1Reg wake_enable1;
    rand xrbase_alfred_web0_input_invert0Reg input_invert0;
    rand xrbase_alfred_web0_input_invert1Reg input_invert1;
    uvm_reg_map web0_map;

    // Function: new
    function new(string name = "web0");
        super.new(name);
    endfunction: new

    // Function: build
    virtual function void build(int unsigned n_bytes=4);
        web0_map = create_map(.name("web0_map"), .base_addr('h0), .n_bytes(n_bytes), .endian(UVM_LITTLE_ENDIAN), .byte_addressing(1));
        set_default_map(web0_map);

        // Control Register
        control = new("control");
        control.configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
        control.build();
        control.add_hdl_path_slice(.name({"web0", "_control"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        web0_map.add_reg(.rg(control), .offset('h0), .rights("RW"));

        // Event Set Register
        event_set = new("event_set");
        event_set.configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
        event_set.build();
        event_set.add_hdl_path_slice(.name({"web0", "_event_set"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        web0_map.add_reg(.rg(event_set), .offset('h4), .rights("RW"));

        // Event Clr Register
        event_clr = new("event_clr");
        event_clr.configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
        event_clr.build();
        event_clr.add_hdl_path_slice(.name({"web0", "_event_clr"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        web0_map.add_reg(.rg(event_clr), .offset('h8), .rights("RW"));

        // Wake Enable Register
        wake_enable0 = new("wake_enable0");
        wake_enable0.configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
        wake_enable0.build();
        wake_enable0.add_hdl_path_slice(.name({"web0", "_wake_enable0"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        web0_map.add_reg(.rg(wake_enable0), .offset('h20), .rights("RW"));

        // Wake Enable Register
        wake_enable1 = new("wake_enable1");
        wake_enable1.configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
        wake_enable1.build();
        wake_enable1.add_hdl_path_slice(.name({"web0", "_wake_enable1"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        web0_map.add_reg(.rg(wake_enable1), .offset('h24), .rights("RW"));

        // Input Invert Register
        input_invert0 = new("input_invert0");
        input_invert0.configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
        input_invert0.build();
        input_invert0.add_hdl_path_slice(.name({"web0", "_input_invert0"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        web0_map.add_reg(.rg(input_invert0), .offset('h40), .rights("RW"));

        // Input Invert Register
        input_invert1 = new("input_invert1");
        input_invert1.configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
        input_invert1.build();
        input_invert1.add_hdl_path_slice(.name({"web0", "_input_invert1"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        web0_map.add_reg(.rg(input_invert1), .offset('h44), .rights("RW"));

    endfunction : build

endclass : xrbase_alfred_web0RegBlk

//------------------------------------------------------------------------------
// Class: xrbase_alfred_web1_controlReg
// Control Register
//------------------------------------------------------------------------------
class xrbase_alfred_web1_controlReg extends uvm_reg;
    // Edge to clear the activate_low_pwr output. 0=falling edge, 1=rising edge, 2 or 3 = none
    rand uvm_reg_field activate_low_pwr_edge;
    // Edge to clear the exvent_suppress output and interrupt outputs. 0=falling edge, 1=rising edge, 2 or 3 = none
    rand uvm_reg_field event_suppress_edge;
    // Edge to clear the wake_now bit function. 0=falling edge, 1=rising edge, 2 or 3 = none
    rand uvm_reg_field wake_now_edge;
    // Edge to clear the epu_enable bit function. 0=falling edge, 1=rising edge, 2 or 3 = none
    rand uvm_reg_field epu_enable_edge;

    // Function: new
    function new(string name = "control");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Edge to clear the activate_low_pwr output. 0=falling edge, 1=rising edge, 2 or 3 = none
        activate_low_pwr_edge = new("activate_low_pwr_edge");
        activate_low_pwr_edge.configure(.parent(this), .size(2), .lsb_pos(0),
                                        .access("RW"), .volatile(0), .reset(2'h1), .has_reset(1),
                                        .is_rand(1), .individually_accessible(1));

        // Edge to clear the exvent_suppress output and interrupt outputs. 0=falling edge, 1=rising edge, 2 or 3 = none
        event_suppress_edge = new("event_suppress_edge");
        event_suppress_edge.configure(.parent(this), .size(2), .lsb_pos(2),
                                      .access("RW"), .volatile(0), .reset(2'h0), .has_reset(1),
                                      .is_rand(1), .individually_accessible(1));

        // Edge to clear the wake_now bit function. 0=falling edge, 1=rising edge, 2 or 3 = none
        wake_now_edge = new("wake_now_edge");
        wake_now_edge.configure(.parent(this), .size(2), .lsb_pos(4),
                                .access("RW"), .volatile(0), .reset(2'h1), .has_reset(1),
                                .is_rand(1), .individually_accessible(1));

        // Edge to clear the epu_enable bit function. 0=falling edge, 1=rising edge, 2 or 3 = none
        epu_enable_edge = new("epu_enable_edge");
        epu_enable_edge.configure(.parent(this), .size(2), .lsb_pos(6),
                                  .access("RW"), .volatile(0), .reset(2'h1), .has_reset(1),
                                  .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_web1_controlReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_web1_event_setReg
// Event Set Register
//------------------------------------------------------------------------------
class xrbase_alfred_web1_event_setReg extends uvm_reg;
    // Set to enable a power state transition, typically set by a bus transaction and cleared by a hardware signal edge.
    rand uvm_reg_field activate_low_pwr;
    // Suppresses all interrupt outputs. This bit is typically set by a bus transaction and cleared by a hardware signal edge.
    rand uvm_reg_field event_suppress;
    // Forces a wake event toward the EPU.
    rand uvm_reg_field wake_now;
    // Set the epu_enable output.
    rand uvm_reg_field epu_enable;

    // Function: new
    function new(string name = "event_set");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Set to enable a power state transition, typically set by a bus transaction and cleared by a hardware signal edge.
        activate_low_pwr = new("activate_low_pwr");
        activate_low_pwr.configure(.parent(this), .size(1), .lsb_pos(0),
                                   .access("W1S"), .volatile(1), .reset(1'h0), .has_reset(1),
                                   .is_rand(1), .individually_accessible(1));

        // Suppresses all interrupt outputs. This bit is typically set by a bus transaction and cleared by a hardware signal edge.
        event_suppress = new("event_suppress");
        event_suppress.configure(.parent(this), .size(1), .lsb_pos(1),
                                 .access("W1S"), .volatile(1), .reset(1'h0), .has_reset(1),
                                 .is_rand(1), .individually_accessible(1));

        // Forces a wake event toward the EPU.
        wake_now = new("wake_now");
        wake_now.configure(.parent(this), .size(1), .lsb_pos(2),
                           .access("W1S"), .volatile(1), .reset(1'h0), .has_reset(1),
                           .is_rand(1), .individually_accessible(1));

        // Set the epu_enable output.
        epu_enable = new("epu_enable");
        epu_enable.configure(.parent(this), .size(1), .lsb_pos(3),
                             .access("W1S"), .volatile(1), .reset(1'h0), .has_reset(1),
                             .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_web1_event_setReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_web1_event_clrReg
// Event Clr Register
//------------------------------------------------------------------------------
class xrbase_alfred_web1_event_clrReg extends uvm_reg;
    // Clear to disable a power state transition, typically set by a bus transaction and cleared by a hardware signal rising edge.
    rand uvm_reg_field activate_low_pwr;
    // Suppresses all interrupt outputs. This bit is typically set by a bus transaction and cleared by a hardware signal falling edge.
    rand uvm_reg_field event_suppress;
    // Clear a wake event toward the EPU. Typically cleared by a hardware signal rising edge.
    rand uvm_reg_field wake_now;
    // Clear the epu_enable output.
    rand uvm_reg_field epu_enable;

    // Function: new
    function new(string name = "event_clr");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // Clear to disable a power state transition, typically set by a bus transaction and cleared by a hardware signal rising edge.
        activate_low_pwr = new("activate_low_pwr");
        activate_low_pwr.configure(.parent(this), .size(1), .lsb_pos(0),
                                   .access("W1C"), .volatile(1), .reset(1'h0), .has_reset(1),
                                   .is_rand(1), .individually_accessible(1));

        // Suppresses all interrupt outputs. This bit is typically set by a bus transaction and cleared by a hardware signal falling edge.
        event_suppress = new("event_suppress");
        event_suppress.configure(.parent(this), .size(1), .lsb_pos(1),
                                 .access("W1C"), .volatile(1), .reset(1'h0), .has_reset(1),
                                 .is_rand(1), .individually_accessible(1));

        // Clear a wake event toward the EPU. Typically cleared by a hardware signal rising edge.
        wake_now = new("wake_now");
        wake_now.configure(.parent(this), .size(1), .lsb_pos(2),
                           .access("W1C"), .volatile(1), .reset(1'h0), .has_reset(1),
                           .is_rand(1), .individually_accessible(1));

        // Clear the epu_enable output.
        epu_enable = new("epu_enable");
        epu_enable.configure(.parent(this), .size(1), .lsb_pos(3),
                             .access("W1C"), .volatile(1), .reset(1'h0), .has_reset(1),
                             .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_web1_event_clrReg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_web1_wake_enable0Reg
// Wake Enable Register
//------------------------------------------------------------------------------
class xrbase_alfred_web1_wake_enable0Reg extends uvm_reg;
    // One bit per interrupt or event, when high enables this input as a wake event. When low disables this input as a wake event.
    rand uvm_reg_field enable;

    // Function: new
    function new(string name = "wake_enable0");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // One bit per interrupt or event, when high enables this input as a wake event. When low disables this input as a wake event.
        enable = new("enable");
        enable.configure(.parent(this), .size(32), .lsb_pos(0),
                         .access("RW"), .volatile(0), .reset(32'h00000000), .has_reset(1),
                         .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_web1_wake_enable0Reg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_web1_wake_enable1Reg
// Wake Enable Register
//------------------------------------------------------------------------------
class xrbase_alfred_web1_wake_enable1Reg extends uvm_reg;
    // One bit per interrupt or event, when high enables this input as a wake event. When low disables this input as a wake event.
    rand uvm_reg_field enable;

    // Function: new
    function new(string name = "wake_enable1");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // One bit per interrupt or event, when high enables this input as a wake event. When low disables this input as a wake event.
        enable = new("enable");
        enable.configure(.parent(this), .size(32), .lsb_pos(0),
                         .access("RW"), .volatile(0), .reset(32'h00000000), .has_reset(1),
                         .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_web1_wake_enable1Reg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_web1_input_invert0Reg
// Input Invert Register
//------------------------------------------------------------------------------
class xrbase_alfred_web1_input_invert0Reg extends uvm_reg;
    // One bit per interrupt or event, when high inverts the polarity. When low does not invert the polarity.
    rand uvm_reg_field invert;

    // Function: new
    function new(string name = "input_invert0");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // One bit per interrupt or event, when high inverts the polarity. When low does not invert the polarity.
        invert = new("invert");
        invert.configure(.parent(this), .size(32), .lsb_pos(0),
                         .access("RW"), .volatile(0), .reset(32'h00000000), .has_reset(1),
                         .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_web1_input_invert0Reg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_web1_input_invert1Reg
// Input Invert Register
//------------------------------------------------------------------------------
class xrbase_alfred_web1_input_invert1Reg extends uvm_reg;
    // One bit per interrupt or event, when high inverts the polarity. When low does not invert the polarity.
    rand uvm_reg_field invert;

    // Function: new
    function new(string name = "input_invert1");
        super.new(.name(name), .n_bits(32), .has_coverage(UVM_NO_COVERAGE));
    endfunction: new

    // Function: build
    virtual function void build();
        // One bit per interrupt or event, when high inverts the polarity. When low does not invert the polarity.
        invert = new("invert");
        invert.configure(.parent(this), .size(32), .lsb_pos(0),
                         .access("RW"), .volatile(0), .reset(32'h00000000), .has_reset(1),
                         .is_rand(1), .individually_accessible(1));

    endfunction : build

endclass : xrbase_alfred_web1_input_invert1Reg

//------------------------------------------------------------------------------
// Class: xrbase_alfred_web1RegBlk
// web1 block
//------------------------------------------------------------------------------
class xrbase_alfred_web1RegBlk extends uvm_reg_block;
    rand xrbase_alfred_web1_controlReg control;
    rand xrbase_alfred_web1_event_setReg event_set;
    rand xrbase_alfred_web1_event_clrReg event_clr;
    rand xrbase_alfred_web1_wake_enable0Reg wake_enable0;
    rand xrbase_alfred_web1_wake_enable1Reg wake_enable1;
    rand xrbase_alfred_web1_input_invert0Reg input_invert0;
    rand xrbase_alfred_web1_input_invert1Reg input_invert1;
    uvm_reg_map web1_map;

    // Function: new
    function new(string name = "web1");
        super.new(name);
    endfunction: new

    // Function: build
    virtual function void build(int unsigned n_bytes=4);
        web1_map = create_map(.name("web1_map"), .base_addr('h0), .n_bytes(n_bytes), .endian(UVM_LITTLE_ENDIAN), .byte_addressing(1));
        set_default_map(web1_map);

        // Control Register
        control = new("control");
        control.configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
        control.build();
        control.add_hdl_path_slice(.name({"web1", "_control"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        web1_map.add_reg(.rg(control), .offset('h0), .rights("RW"));

        // Event Set Register
        event_set = new("event_set");
        event_set.configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
        event_set.build();
        event_set.add_hdl_path_slice(.name({"web1", "_event_set"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        web1_map.add_reg(.rg(event_set), .offset('h4), .rights("RW"));

        // Event Clr Register
        event_clr = new("event_clr");
        event_clr.configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
        event_clr.build();
        event_clr.add_hdl_path_slice(.name({"web1", "_event_clr"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        web1_map.add_reg(.rg(event_clr), .offset('h8), .rights("RW"));

        // Wake Enable Register
        wake_enable0 = new("wake_enable0");
        wake_enable0.configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
        wake_enable0.build();
        wake_enable0.add_hdl_path_slice(.name({"web1", "_wake_enable0"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        web1_map.add_reg(.rg(wake_enable0), .offset('h20), .rights("RW"));

        // Wake Enable Register
        wake_enable1 = new("wake_enable1");
        wake_enable1.configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
        wake_enable1.build();
        wake_enable1.add_hdl_path_slice(.name({"web1", "_wake_enable1"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        web1_map.add_reg(.rg(wake_enable1), .offset('h24), .rights("RW"));

        // Input Invert Register
        input_invert0 = new("input_invert0");
        input_invert0.configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
        input_invert0.build();
        input_invert0.add_hdl_path_slice(.name({"web1", "_input_invert0"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        web1_map.add_reg(.rg(input_invert0), .offset('h40), .rights("RW"));

        // Input Invert Register
        input_invert1 = new("input_invert1");
        input_invert1.configure(.blk_parent(this), .regfile_parent(null), .hdl_path(""));
        input_invert1.build();
        input_invert1.add_hdl_path_slice(.name({"web1", "_input_invert1"}), .offset(0), .size(32), .first(0), .kind("RTL"));
        web1_map.add_reg(.rg(input_invert1), .offset('h44), .rights("RW"));

    endfunction : build

endclass : xrbase_alfred_web1RegBlk

//------------------------------------------------------------------------------
// Class: xrbase_alfredRegBlk
//------------------------------------------------------------------------------
class xrbase_alfredRegBlk extends uvm_reg_block;
    rand xrbase_alfred_sfdbs0RegBlk sfdbs0;
    rand xrbase_alfred_fdbs0RegBlk fdbs0;
    rand xrbase_alfred_smutex0RegBlk smutex0;
    rand xrbase_alfred_mutex0RegBlk mutex0;
    rand xrbase_alfred_web0RegBlk web0;
    rand xrbase_alfred_web1RegBlk web1;
    uvm_reg_map xrbase_alfred_map;

    // Function: new
    function new(string name = "xrbase_alfred");
        super.new(name);
    endfunction: new

    // Function: build
    virtual function void build(int unsigned n_bytes=4);
        xrbase_alfred_map = create_map(.name("xrbase_alfred_map"), .base_addr('h0), .n_bytes(n_bytes), .endian(UVM_LITTLE_ENDIAN), .byte_addressing(1));
        set_default_map(xrbase_alfred_map);

        // sfdbs0 block
        sfdbs0 = new("sfdbs0");
        sfdbs0.configure(.parent(this), .hdl_path(""));
        sfdbs0.build(n_bytes);
        sfdbs0.clear_hdl_path();
        sfdbs0.add_hdl_path(.path("i_regmodel0_regmodel_core.i_regmodel0_regmodel_core_sfdbs0_csr"), .kind("RTL"));
        xrbase_alfred_map.add_submap(.child_map(sfdbs0.sfdbs0_map), .offset('h0));

        // fdbs0 block
        fdbs0 = new("fdbs0");
        fdbs0.configure(.parent(this), .hdl_path(""));
        fdbs0.build(n_bytes);
        fdbs0.clear_hdl_path();
        fdbs0.add_hdl_path(.path("i_regmodel0_regmodel_core.i_regmodel0_regmodel_core_fdbs0_csr"), .kind("RTL"));
        xrbase_alfred_map.add_submap(.child_map(fdbs0.fdbs0_map), .offset('h2000));

        // smutex0 block
        smutex0 = new("smutex0");
        smutex0.configure(.parent(this), .hdl_path(""));
        smutex0.build(n_bytes);
        smutex0.clear_hdl_path();
        smutex0.add_hdl_path(.path("i_regmodel0_regmodel_core.i_regmodel0_regmodel_core_smutex0_csr"), .kind("RTL"));
        xrbase_alfred_map.add_submap(.child_map(smutex0.smutex0_map), .offset('h3000));

        // mutex0 block
        mutex0 = new("mutex0");
        mutex0.configure(.parent(this), .hdl_path(""));
        mutex0.build(n_bytes);
        mutex0.clear_hdl_path();
        mutex0.add_hdl_path(.path("i_regmodel0_regmodel_core.i_regmodel0_regmodel_core_mutex0_csr"), .kind("RTL"));
        xrbase_alfred_map.add_submap(.child_map(mutex0.mutex0_map), .offset('h4000));

        // web0 block
        web0 = new("web0");
        web0.configure(.parent(this), .hdl_path(""));
        web0.build(n_bytes);
        web0.clear_hdl_path();
        web0.add_hdl_path(.path("i_regmodel0_regmodel_core.i_regmodel0_regmodel_core_web0_csr"), .kind("RTL"));
        xrbase_alfred_map.add_submap(.child_map(web0.web0_map), .offset('h5000));

        // web1 block
        web1 = new("web1");
        web1.configure(.parent(this), .hdl_path(""));
        web1.build(n_bytes);
        web1.clear_hdl_path();
        web1.add_hdl_path(.path("i_regmodel0_regmodel_core.i_regmodel0_regmodel_core_web1_csr"), .kind("RTL"));
        xrbase_alfred_map.add_submap(.child_map(web1.web1_map), .offset('h6000));

        lock_model();
    endfunction : build

endclass : xrbase_alfredRegBlk

`endif // FB_GUARD_XRBASE_ALFRED_REG_SV

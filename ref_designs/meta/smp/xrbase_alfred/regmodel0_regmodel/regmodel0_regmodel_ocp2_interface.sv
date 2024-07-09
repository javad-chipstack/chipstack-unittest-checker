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

////////////////////////////////////////////////////////////////////////////////
// ocp2 - SW Access Interface Definition

interface regmodel0_regmodel_ocp2_interface # ();
    logic [ 0:0] mreset_n;
    logic [ 2:0] mcmd;
    logic [14:0] maddr;
    logic [ 3:0] mbyteen;
    logic [ 5:0] mreqinfo;
    logic [ 0:0] scmdaccept;
    logic [31:0] mdata;
    logic [ 1:0] sresp;
    logic [31:0] sdata;
    logic [ 0:0] mrespaccept;
    modport master (
        input scmdaccept, sresp, sdata,  output mreset_n, mcmd, maddr, mbyteen, mreqinfo, mdata, mrespaccept);
    modport slave  (
        input mreset_n, mcmd, maddr, mbyteen, mreqinfo, mdata, mrespaccept,  output scmdaccept, sresp, sdata);
    modport fp  (
        input mreset_n, mcmd, maddr, mbyteen, mreqinfo, mdata, mrespaccept, scmdaccept, sresp, sdata);
endinterface


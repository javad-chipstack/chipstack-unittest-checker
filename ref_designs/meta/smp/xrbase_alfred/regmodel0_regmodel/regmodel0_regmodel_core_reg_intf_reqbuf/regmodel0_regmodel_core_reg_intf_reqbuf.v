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
////////////////////////////////////////////////////////////////////////
module regmodel0_regmodel_core_reg_intf_reqbuf(
    valid_i,
    payload_i,
    ready_o,
    valid_o,
    payload_o,
    ready_i );
input         valid_i; 
input  [59:0] payload_i; 
output        ready_o; 
output        valid_o; 
output [59:0] payload_o; 
input         ready_i; 
assign ready_o    = ready_i;
assign valid_o    = valid_i;
//////////////////////////////////////////////////////////////////////////////
// assign Outputs
assign payload_o  = payload_i;
endmodule // regmodel0_regmodel_core_reg_intf_reqbuf

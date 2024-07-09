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
//------------------------------------------------------------------------------
// PACKAGE: fast_uvm_reg_pkg
//------------------------------------------------------------------------------
`include "uvm_macros.svh"
package fast_uvm_reg_pkg;
    import uvm_pkg::*;
    
    //--------------------------------------------------------------------------
    // Class: fast_uvm_shadow_reg_field
    //--------------------------------------------------------------------------
    class fast_uvm_shadow_reg_field extends uvm_reg_field;
        uvm_reg_data_t m_buffer;
        
        `uvm_object_utils_begin(fast_uvm_shadow_reg_field)
        `uvm_object_utils_end
        
        // Function: new
        function new(string name = "fast_uvm_shadow_reg_field");
            super.new(name);
        endfunction: new
        
        // Function: shadow_enable
        virtual function logic shadow_enable();
        endfunction: shadow_enable
    endclass : fast_uvm_shadow_reg_field
    
    //--------------------------------------------------------------------------
    // Class: fast_uvm_shadow_reg_cbs
    //--------------------------------------------------------------------------
    class fast_uvm_shadow_reg_cbs extends uvm_reg_cbs;
        fast_uvm_shadow_reg_field m_shadowRegField;
        
        `uvm_object_utils_begin(fast_uvm_shadow_reg_cbs)
        `uvm_object_utils_end
        
        // Function: new
        function new(string name = "fast_uvm_shadow_reg_cbs");
            super.new(name);
        endfunction: new
        
        // Function: post_predict
        virtual function void post_predict(input uvm_reg_field  fld,
                                           input uvm_reg_data_t previous,
                                           inout uvm_reg_data_t value,
                                           input uvm_predict_e  kind,
                                           input uvm_path_e     path,
                                           input uvm_reg_map    map);
            
            if (!$cast(m_shadowRegField, fld)) begin
                `uvm_fatal(get_type_name(), "Error casting field to fast_uvm_shadow_reg_field")
            end
            `uvm_info(get_type_name(),
                      $sformatf("post_predit: field: %s  {%s,%s}",
                                m_shadowRegField.get_full_name(),
                                kind.name(), path.name()),
                      UVM_DEBUG)
            case ({kind, path})
                {UVM_PREDICT_WRITE, UVM_FRONTDOOR}: begin
                    predict_write_shadow_enable(value, previous);
                end
                {UVM_PREDICT_DIRECT, UVM_BACKDOOR}: begin
                    predict_shadow_load(value);
                end
            endcase
        endfunction : post_predict
        
        // Function: predict_write_shadow_enable
        //     * SW always writes into field.m_buffer
        //     * When field.shadow_enable():
        //         * Bus write operations write data only into field.m_buffer, field.value remains the same
        //     * When !field.shadow_enable():
        //         * Bus write operations write data into field.value and
        //           field.m_buffer
        function uvm_reg_data_t predict_write_shadow_enable (ref uvm_reg_data_t value,
                                                             uvm_reg_data_t previous);
            m_shadowRegField.m_buffer = value;
            if (m_shadowRegField.shadow_enable()) begin
                value = previous;
            end
        endfunction : predict_write_shadow_enable
        
        // Function: predict_shadow_load
        //     * predict triggered by RegPredictor
        function uvm_reg_data_t predict_shadow_load (ref uvm_reg_data_t value);
            value = m_shadowRegField.m_buffer;
        endfunction : predict_shadow_load
    endclass : fast_uvm_shadow_reg_cbs
    
endpackage : fast_uvm_reg_pkg

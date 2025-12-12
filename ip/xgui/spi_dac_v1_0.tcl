# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CPHA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CPOL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PRESCALE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TAIL_BITS" -parent ${Page_0}


}

proc update_PARAM_VALUE.CPHA { PARAM_VALUE.CPHA } {
	# Procedure called to update CPHA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CPHA { PARAM_VALUE.CPHA } {
	# Procedure called to validate CPHA
	return true
}

proc update_PARAM_VALUE.CPOL { PARAM_VALUE.CPOL } {
	# Procedure called to update CPOL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CPOL { PARAM_VALUE.CPOL } {
	# Procedure called to validate CPOL
	return true
}

proc update_PARAM_VALUE.PRESCALE { PARAM_VALUE.PRESCALE } {
	# Procedure called to update PRESCALE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PRESCALE { PARAM_VALUE.PRESCALE } {
	# Procedure called to validate PRESCALE
	return true
}

proc update_PARAM_VALUE.TAIL_BITS { PARAM_VALUE.TAIL_BITS } {
	# Procedure called to update TAIL_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TAIL_BITS { PARAM_VALUE.TAIL_BITS } {
	# Procedure called to validate TAIL_BITS
	return true
}


proc update_MODELPARAM_VALUE.PRESCALE { MODELPARAM_VALUE.PRESCALE PARAM_VALUE.PRESCALE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PRESCALE}] ${MODELPARAM_VALUE.PRESCALE}
}

proc update_MODELPARAM_VALUE.TAIL_BITS { MODELPARAM_VALUE.TAIL_BITS PARAM_VALUE.TAIL_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TAIL_BITS}] ${MODELPARAM_VALUE.TAIL_BITS}
}

proc update_MODELPARAM_VALUE.CPOL { MODELPARAM_VALUE.CPOL PARAM_VALUE.CPOL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CPOL}] ${MODELPARAM_VALUE.CPOL}
}

proc update_MODELPARAM_VALUE.CPHA { MODELPARAM_VALUE.CPHA PARAM_VALUE.CPHA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CPHA}] ${MODELPARAM_VALUE.CPHA}
}


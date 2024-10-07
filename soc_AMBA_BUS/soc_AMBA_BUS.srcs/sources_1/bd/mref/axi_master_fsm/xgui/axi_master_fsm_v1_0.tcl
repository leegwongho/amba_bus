# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "IDLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STATE_ARADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STATE_AWADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STATE_READ_READY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STATE_WRITE_READY" -parent ${Page_0}


}

proc update_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to update IDLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to validate IDLE
	return true
}

proc update_PARAM_VALUE.STATE_ARADDR { PARAM_VALUE.STATE_ARADDR } {
	# Procedure called to update STATE_ARADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STATE_ARADDR { PARAM_VALUE.STATE_ARADDR } {
	# Procedure called to validate STATE_ARADDR
	return true
}

proc update_PARAM_VALUE.STATE_AWADDR { PARAM_VALUE.STATE_AWADDR } {
	# Procedure called to update STATE_AWADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STATE_AWADDR { PARAM_VALUE.STATE_AWADDR } {
	# Procedure called to validate STATE_AWADDR
	return true
}

proc update_PARAM_VALUE.STATE_READ_READY { PARAM_VALUE.STATE_READ_READY } {
	# Procedure called to update STATE_READ_READY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STATE_READ_READY { PARAM_VALUE.STATE_READ_READY } {
	# Procedure called to validate STATE_READ_READY
	return true
}

proc update_PARAM_VALUE.STATE_WRITE_READY { PARAM_VALUE.STATE_WRITE_READY } {
	# Procedure called to update STATE_WRITE_READY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STATE_WRITE_READY { PARAM_VALUE.STATE_WRITE_READY } {
	# Procedure called to validate STATE_WRITE_READY
	return true
}


proc update_MODELPARAM_VALUE.IDLE { MODELPARAM_VALUE.IDLE PARAM_VALUE.IDLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IDLE}] ${MODELPARAM_VALUE.IDLE}
}

proc update_MODELPARAM_VALUE.STATE_ARADDR { MODELPARAM_VALUE.STATE_ARADDR PARAM_VALUE.STATE_ARADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STATE_ARADDR}] ${MODELPARAM_VALUE.STATE_ARADDR}
}

proc update_MODELPARAM_VALUE.STATE_AWADDR { MODELPARAM_VALUE.STATE_AWADDR PARAM_VALUE.STATE_AWADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STATE_AWADDR}] ${MODELPARAM_VALUE.STATE_AWADDR}
}

proc update_MODELPARAM_VALUE.STATE_READ_READY { MODELPARAM_VALUE.STATE_READ_READY PARAM_VALUE.STATE_READ_READY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STATE_READ_READY}] ${MODELPARAM_VALUE.STATE_READ_READY}
}

proc update_MODELPARAM_VALUE.STATE_WRITE_READY { MODELPARAM_VALUE.STATE_WRITE_READY PARAM_VALUE.STATE_WRITE_READY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STATE_WRITE_READY}] ${MODELPARAM_VALUE.STATE_WRITE_READY}
}



{REDUND_OK} FUNCTION_BLOCK FB_Integrator (*Integrator function block*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		in : REAL; (*integrator input*)
	END_VAR
	VAR_OUTPUT
		out : REAL; (*integrator output*)
	END_VAR
	VAR
		dt : REAL; (*step [s]*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_OK} FUNCTION_BLOCK FB_Motor (*Motor function block*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		u : REAL; (*input voltage [V]*)
	END_VAR
	VAR_OUTPUT
		phi : REAL; (*rotation frequency [rpm]*)
		w : REAL; (*position [rad]*)
	END_VAR
	VAR
		integrator : FB_Integrator; (*integrator*)
		Tm : REAL; (*electromechanical time constant*)
		ke : REAL; (*motor EMF constant [V/rpm] *)
		dt : REAL; (*step [s]*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_OK} FUNCTION_BLOCK FB_Regulator (*Regulator function block*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		e : REAL; (*Error between input and real frequency [rpm]*)
	END_VAR
	VAR_OUTPUT
		u : REAL; (*input voltage [V]*)
	END_VAR
	VAR
		k_p : REAL; (*proportional gain*)
		k_i : REAL; (*integral gain*)
		integrator : FB_Integrator; (*integrator*)
		iyOld : REAL; (*stores the prev value of the anti-accumulation system*)
		max_abs_value : REAL; (*limit block max value [V]*)
		dt : REAL; (*step [s]*)
		e_p : USINT; (*temporary variable*)
	END_VAR
END_FUNCTION_BLOCK

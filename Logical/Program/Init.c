
#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

void _INIT ProgramInit(void)
{
	Enable = 1;
	counter = 0;
	Speed = 0;
	
	fb_regulator.dt = 0.02;
	fb_regulator.k_i = 16;
	fb_regulator.k_p = 0.64;
	fb_regulator.max_abs_value = 24;
	
	fb_motor_1.dt = 0.02;
	fb_motor_1.ke = 16;
	fb_motor_1.Tm = 0.04;
	
	fb_motor_2.dt = 0.02;
	fb_motor_2.ke = 16;
	fb_motor_2.Tm = 0.04;
}


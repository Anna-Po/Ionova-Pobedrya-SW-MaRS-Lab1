
#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

void _CYCLIC ProgramCyclic(void)
{
		
	if (Enable == 1)
	{
		counter += 1;
		if (counter >= 10000 && counter <= 15000) Speed = 5;
		else Speed = 0;
	}
	else Speed = 0;
	
	fb_regulator.e = Speed - fb_motor_1.w;
	FB_Regulator(&(fb_regulator));
	fb_motor_1.u = fb_regulator.u*fb_motor_1.ke;
	fb_motor_2.u = Speed*fb_motor_2.ke;
	FB_Motor(&(fb_motor_1));
	FB_Motor(&(fb_motor_2));
	
}

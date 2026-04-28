#include "xtmrctr.h"

XTmrCtr_Config XTmrCtr_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,axi-timer-2.0", /* compatible */
		0x42800000, /* reg */
		0x56b29a0, /* clock-frequency */
		0x401f, /* interrupts */
		0xf8f01000 /* interrupt-parent */
	},
	 {
		 NULL
	}
};
#include "reconfig_pcap.h"
#include "xparameters.h"
#include "xstatus.h"



#define PCAP_ID 						XPAR_XDCFG_0_DEVICE_ID
#define INITIAL_ADDR_RAM 				0x11100000  //The initial address where we store the PBS in the RAM.


XDcfg PCAP_component;

int main() {
	int status;
	u32 *PBS_addr_start = (u32*) INITIAL_ADDR_RAM;
	pblock pblock_1;

//	Xil_DCacheDisable();

	status = PCAP_Initialize(&PCAP_component, PCAP_ID);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	pblock_1.X0 = 6;
	pblock_1.Y0 = 10;
	pblock_1.Xf = 25;
	pblock_1.Yf = 19;

	status = write_subclock_region_PBS(&PCAP_component, PBS_addr_start, "mult.pbs", &pblock_1, 1, 0);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	status = write_subclock_region_PBS(&PCAP_component, PBS_addr_start, "adder.pbs", &pblock_1, 1, 0);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

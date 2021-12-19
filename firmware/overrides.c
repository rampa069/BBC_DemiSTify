#include "diskimg.h"

const char *bootvhd_name="BBC     VHD";
const char *bootrom_name="BBC     ROM";

char *autoboot()
{
    char *result=0;
    diskimg_mount(bootvhd_name,0);
	if(!LoadROM(bootrom_name))
		result="ROM loading failed";
    return(result);
}

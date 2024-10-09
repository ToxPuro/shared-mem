#include "shared-mem.h"
#include <stdio.h>
#include <stdlib.h>

int main()
{
	#include "constants.h"
	allocate_shm(n_elems,"f_array");
	system("./writer");
	system("./reader");
}

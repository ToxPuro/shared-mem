#include "shared-mem.h"
#include <stdio.h>
#include <stdlib.h>
int main()
{
	#include "constants.h"
	AcReal* data = get_shm(n_elems,"f_array");
	for(int i = 0; i < n_elems; ++i) printf("HMM: %14e\n",data[i]);
}

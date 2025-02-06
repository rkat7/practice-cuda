#include <stdio.h>

int main(){
	float *A_h, *A_d;
	cudaMalloc((**void) &A_d, sizeof(float));
	cudaMemCpy(A_d, A_h, sizeof(float), cudaMemCpyHostToDevice);
	cudaFree(A_d);
	return 0;
}


#just basic code to copy a floating point value from host to device and free it for giggles.TT
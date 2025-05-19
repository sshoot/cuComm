#include <cuda_runtime.h>
#include <thrust/complex.h>

#include <cuComm/simulation.cuh>

#include "entry.h"

__global__ void test_template() {
  int idx = (blockDim.x * blockIdx.x) + threadIdx.x;

  float *test0 = nullptr;
  double *test1 = nullptr;
  thrust::complex<float> *test2 = nullptr;
  thrust::complex<double> *test3 = nullptr;

  switch (idx % 4) {
    case 0:
      simulation::awgn(test0, 0.0F);
      break;
    case 1:
      simulation::awgn(test1, 0.0);
      break;
    case 2:
      simulation::awgn(test2, 0.0F);
      break;
    case 3:
      simulation::awgn(test3, 0.0);
      break;
  }
}

int entry() {
  constexpr int threads = 256;
  constexpr int blocks = 1;

  test_template<<<blocks, threads>>>();
  cudaDeviceSynchronize();
  return 0;
}

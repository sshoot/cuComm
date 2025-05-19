#include <cstdio>
#include <cuComm/detail/simulation/awgn.cuh>

/**
 * @brief This function adds awgn (Real)
 *
 * @tparam T
 * @param signal
 * @param snr
 * @return int
 */
template <typename T>
__device__ int simulation::awgn(T* signal, T snr) {
  printf("This function is for real signals!\n");
  return 0;
};

/**
 * @brief
 *
 * @tparam T
 * @param signal
 * @param snr
 * @return int
 */
template <typename T>
__device__ int simulation::awgn(thrust::complex<T>* signal, T snr) {
  printf("This function is for complex signals!\n");
  return 0;
};

template __device__ int simulation::awgn(float*, float);
template __device__ int simulation::awgn(double*, double);
template __device__ int simulation::awgn(thrust::complex<float>*, float);
template __device__ int simulation::awgn(thrust::complex<double>*, double);

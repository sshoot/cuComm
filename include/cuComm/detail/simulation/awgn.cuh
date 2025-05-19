// IWYU pragma: private, include cuComm/simulation.cuh
#ifndef CUCOMM_DETAIL_SIMULATION_AWGN_CUH_
#define CUCOMM_DETAIL_SIMULATION_AWGN_CUH_

#include <thrust/complex.h>

namespace simulation {
template <typename T>
__device__ int awgn(T *signal, T snr);
template <typename T>
__device__ int awgn(thrust::complex<T> *signal, T snr);
}  // namespace simulation

#endif /* CUCOMM_DETAIL_SIMULATION_AWGN_CUH_ */

add_library(cuComm_simulation awgn.cu)

target_include_directories(cuComm_simulation
  PUBLIC
  ${PROJECT_SOURCE_DIR}/include
)

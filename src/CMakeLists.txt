add_executable(cuComm main.cc entry.cu)

target_include_directories(cuComm
    PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

add_subdirectory(modulation)
add_subdirectory(simulation)

target_link_libraries(cuComm PRIVATE cuComm_simulation)

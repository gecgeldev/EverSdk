set(OPEN_SIMPLEX_NOISE_SOURCE_DIR "${CMAKE_SOURCE_DIR}/downloads/open_simplex_noise")
set(OPEN_SIMPLEX_NOISE_BINARY_DIR "${CMAKE_BINARY_DIR}/downloads/open_simplex_noise")

add_library(open_simplex_noise "${OPEN_SIMPLEX_NOISE_SOURCE_DIR}/open-simplex-noise.c")
set_target_properties(open_simplex_noise PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY "${OPEN_SIMPLEX_NOISE_BINARY_DIR}"
    LIBRARY_OUTPUT_DIRECTORY "${OPEN_SIMPLEX_NOISE_BINARY_DIR}"
    RUNTIME_OUTPUT_DIRECTORY "${OPEN_SIMPLEX_NOISE_BINARY_DIR}"
)

target_sources(open_simplex_noise PUBLIC
    FILE_SET HEADERS
    BASE_DIRS "${OPEN_SIMPLEX_NOISE_SOURCE_DIR}"
    FILES "${OPEN_SIMPLEX_NOISE_SOURCE_DIR}/open-simplex-noise.h"
)

install(
    TARGETS open_simplex_noise
    EXPORT EverSdk
    FILE_SET HEADERS
    DESTINATION "include"
)

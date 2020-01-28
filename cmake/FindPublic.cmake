set(Public_ROOT_DIRS ${PROJ_REPO_TOP_DIR}/modules/public)

set(_WINDOWS FALSE)
if("${CMAKE_SYSTEM_NAME}" MATCHES "Windows")
    set(_WINDOWS TRUE)
endif()

set(_LINUX FALSE)
if("${CMAKE_SYSTEM_NAME}" MATCHES "Linux")
    set(_LINUX TRUE)
endif()

find_path(Public_INCLUDE_DIR
    NAMES "public.h"
    PATHS "${Public_ROOT_DIRS}")
    
if(Public_INCLUDE_DIR)
    set(Public_FOUND true)
    set(Public_INCLUDE_DIRS ${Public_INCLUDE_DIR})
endif()


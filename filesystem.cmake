# Lists all subdirectories with CMakeLists.txt in it
function(add_subdirs)
    file(GLOB V_GLOB LIST_DIRECTORIES true "*")
    foreach(item ${V_GLOB})
        if(IS_DIRECTORY ${item})
            FILE(GLOB IS_CMAKE "${item}/CMakeLists.txt")
            if (IS_CMAKE)
                add_subdirectory(${item})
            endif()
        endif()
    endforeach()
endfunction()

# Searches for files with provided pattern
function(list_all_sources OUT_SRC)
    file (GLOB _SOURCES ${ARGN})
    set (${OUT_SRC} ${_SOURCES})
    return (PROPAGATE ${OUT_SRC})
endfunction()
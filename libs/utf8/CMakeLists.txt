link_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
add_library(
        utf8 STATIC
        include/utf8.h
        include/utf8/checked.h
        include/utf8/core.h
        include/utf8/unchecked.h
)
set_target_properties(utf8 PROPERTIES LINKER_LANGUAGE CXX)
# define the OF_SHARED_MAKEFILES location
set(OF_SHARED_MAKEFILES_PATH "${OF_ROOT}/libs/openFrameworksCompiled/project/makefileCommon")

# if APPNAME is not defined, set it to the project dir name
if (NOT DEFINED APPNAME)
    execute_process(COMMAND basename `pwd` OUTPUT_VARIABLE APPNAME OUTPUT_STRIP_TRAILING_WHITESPACE)
endif ()

include("${OF_SHARED_MAKEFILES_PATH}/config.shared.cmake")

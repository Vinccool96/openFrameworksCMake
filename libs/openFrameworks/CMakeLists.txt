include_directories(${CMAKE_CURRENT_SOURCE_DIR}/utils)
link_directories(${CMAKE_CURRENT_SOURCE_DIR}/utils)
add_library(openFrameworksUtils STATIC
        utils/ofConstants.h
        utils/ofFileUtils.cpp utils/ofFileUtils.h
        utils/ofFpsCounter.cpp utils/ofFpsCounter.h
        utils/ofJson.h
        utils/ofLog.cpp utils/ofLog.h
        utils/ofMatrixStack.cpp utils/ofMatrixStack.h
        utils/ofNoise.h
        utils/ofSystemUtils.cpp utils/ofSystemUtils.h
        utils/ofThread.cpp utils/ofThread.h
        utils/ofThreadChannel.h
        utils/ofTimer.cpp utils/ofTimer.h
        utils/ofURLFileLoader.cpp utils/ofURLFileLoader.h
        utils/ofUtils.cpp utils/ofUtils.h
        utils/ofXml.cpp utils/ofXml.h
        )
add_library(openFrameworks STATIC ofMain.h)
set_target_properties(openFrameworks PROPERTIES LINKER_LANGUAGE CXX)
target_link_libraries(openFrameworks PUBLIC openFrameworksUtils)
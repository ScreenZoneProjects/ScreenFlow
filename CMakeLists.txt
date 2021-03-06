cmake_minimum_required(VERSION 2.8.11)
project(ScreenFlow)

macro(ADD_OSX_FRAMEWORK fwname target)
    find_library(FRAMEWORK_${fwname}
            NAMES ${fwname}
            PATHS ${CMAKE_PREFIX_PATH}
            PATH_SUFFIXES lib
            NO_DEFAULT_PATH)
    if( ${FRAMEWORK_${fwname}} STREQUAL FRAMEWORK_${fwname}-NOTFOUND)
        MESSAGE(ERROR ": Framework ${fwname} not found")
    else()
        TARGET_LINK_LIBRARIES(${target} PUBLIC "${FRAMEWORK_${fwname}}/${fwname}")
        MESSAGE(STATUS "Framework ${fwname} found at ${FRAMEWORK_${fwname}}")
    endif()
endmacro(ADD_OSX_FRAMEWORK)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

if (WIN32)
    set(CMAKE_PREFIX_PATH "C:\\Qt\\Qt5.6.0\\5.6\\msvc2010")
    set(EXECUTABLE_OUTPUT_PATH "build/Windows/")
endif()
if (APPLE)
    set(CMAKE_PREFIX_PATH "/Users/mickaelb/Qt/5.6/clang_64/")
    set(EXECUTABLE_OUTPUT_PATH "build/MacOSX/")
endif()

# Find includes in corresponding build directories
set(CMAKE_INCLUDE_CURRENT_DIR ON)
# Instruct CMake to run moc automatically when needed.
set(CMAKE_AUTOMOC ON)

find_package(Qt5Widgets)
find_package(Qt5Qml)
find_package(Qt5Quick)

set(PROJECT_VERSION "0.0.0.1")
set(PROJECT_AUTHOR "ScreenZone")
add_definitions(-DVERSION_STRING=\"${PROJECT_VERSION}\")
add_definitions(-DAPPLICATION_NAME_STRING=\"${PROJECT_NAME}\")
add_definitions(-DORGANIZATION_NAME_STRING=\"${PROJECT_AUTHOR}\")
add_definitions(-DORGANIZATION_DOMAIN_STRING=\"fr.${PROJECT_AUTHOR}.${PROJECT_NAME}\")
add_definitions(-DSETDIR_PATH=\"/Settings\")
add_definitions(-DOSX_DIR_SUFFIX=\"/${PROJECT_NAME}.app/Contents/MacOS\")

qt5_add_resources(RESOURCES resources/resources.qrc)

set(SOURCE_FILES
    src/qml/QuickFrontend.cpp
    src/qml/QuickFrontend.h
    src/qml/QuickProcess.cpp
    src/qml/QuickProcess.h
    src/qml/QuickScene.cpp
    src/qml/QuickScene.h
    src/qml/quickSettings.cpp
    src/qml/QuickSettings.h
    src/settings/AppSettings.cpp
    src/settings/AppSettings.h
    src/settings/MenuSettings.cpp
    src/settings/MenuSettings.h
    src/settings/Settings.cpp
    src/settings/Settings.h
    src/settings/SystemSettings.cpp
    src/settings/SystemSettings.h
    src/utils/AppIntegrity.cpp
    src/utils/AppIntegrity.h
    src/main.cpp)

add_executable(${PROJECT_NAME} MACOSX_BUNDLE ${SOURCE_FILES})
qt5_use_modules(${PROJECT_NAME} Widgets Qml Quick Websockets Xmlpatterns)

if (APPLE)
    ADD_OSX_FRAMEWORK(QtAV ${PROJECT_NAME})
endif()
function(minify_html)
    # html-minifier can be installed with:
    # npm install -g html-minifier
    if (CMAKE_HOST_WIN32)
        find_program(HTML_MINIFIER NAMES html-minifier.cmd PATHS $ENV{APPDATA} PATH_SUFFIXES npm)
    else()
        find_program(HTML_MINIFIER NAMES html-minifier)
    endif()

    if (HTML_MINIFIER)
        foreach (file ${ARGV})
            add_custom_command(
                OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/${file}
                DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${file}
                COMMAND ${HTML_MINIFIER}
                ARGS --collapse-whitespace
                     --remove-comments
                     --remove-optional-tags
                     --remove-redundant-attributes
                     --remove-script-type-attributes
                     --remove-tag-whitespace
                     --use-short-doctype
                     --minify-css true
                     --minify-js true
                     ${CMAKE_CURRENT_SOURCE_DIR}/${file} -o ${CMAKE_CURRENT_BINARY_DIR}/${file}
            )
        endforeach()
    else()
        foreach (file ${ARGV})
            add_custom_command(
                OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/${file}
                DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${file}
                COMMAND ${CMAKE_COMMAND}
                ARGS -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/${file} ${CMAKE_CURRENT_BINARY_DIR}/${file}
            )
        endforeach()
    endif()
endfunction()

function(minify_css)
    # csso can be installed with:
    # npm install -g csso-cli
    if (CMAKE_HOST_WIN32)
        find_program(CSS_MINIFIER NAMES csso.cmd PATHS $ENV{APPDATA} PATH_SUFFIXES npm)
    else()
        find_program(CSS_MINIFIER NAMES csso)
    endif()

    if (CSS_MINIFIER)
        foreach (file ${ARGV})
            add_custom_command(
                OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/${file}
                DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${file}
                COMMAND ${CSS_MINIFIER}
                ARGS ${CMAKE_CURRENT_SOURCE_DIR}/${file} -o ${CMAKE_CURRENT_BINARY_DIR}/${file}
            )
        endforeach()
    else()
        foreach (file ${ARGV})
            add_custom_command(
                OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/${file}
                DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${file}
                COMMAND ${CMAKE_COMMAND}
                ARGS -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/${file} ${CMAKE_CURRENT_BINARY_DIR}/${file}
            )
        endforeach()
    endif()
endfunction()

function(minify_js)
    # babel-minify can be installed with:
    # npm install -g babel-minify
    if (CMAKE_HOST_WIN32)
        find_program(JS_MINIFIER NAMES minify.cmd PATHS $ENV{APPDATA} PATH_SUFFIXES npm)
    else()
        find_program(JS_MINIFIER NAMES minify)
    endif()

    if (JS_MINIFIER)
        foreach (file ${ARGV})
            add_custom_command(
                OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/${file}
                DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${file}
                COMMAND ${JS_MINIFIER}
                ARGS ${CMAKE_CURRENT_SOURCE_DIR}/${file} -o ${CMAKE_CURRENT_BINARY_DIR}/${file}
            )
        endforeach()
    else()
        foreach (file ${ARGV})
            add_custom_command(
                OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/${file}
                DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${file}
                COMMAND ${CMAKE_COMMAND}
                ARGS -E copy_if_different ${CMAKE_CURRENT_SOURCE_DIR}/${file} ${CMAKE_CURRENT_BINARY_DIR}/${file}
            )
        endforeach()
    endif()
endfunction()

function(minify_web_resources)
    foreach(file ${ARGV})
        cmake_path(GET file EXTENSION LAST_ONLY extension)

        if ("${extension}" STREQUAL .html)
            minify_html(${file})
        elseif ("${extension}" STREQUAL .css)
            minify_css(${file})
        elseif ("${extension}" STREQUAL .js)
            minify_js(${file})
        endif()
    endforeach()
endfunction()

add_library(postmaster.frontend STATIC)

target_include_directories(postmaster.frontend PUBLIC
    "$<BUILD_INTERFACE:${CMAKE_CURRENT_LIST_DIR}/../..>"
    "$<BUILD_INTERFACE:${CMAKE_CURRENT_BINARY_DIR}>"
    "$<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>"
)

target_sources(postmaster.frontend PRIVATE
    AuthenticatedHttpPage.cpp
    AuthenticatedHttpPage.hpp
    CommaSeparatedKeyValueListParser.cpp
    CommaSeparatedKeyValueListParser.hpp
    ReportingHttpServer.cpp
    ReportingHttpServer.hpp
)

minify_web_resources(
    index.html
    style.css
    upload.js
)

emil_target_string_source(postmaster.frontend ${CMAKE_CURRENT_BINARY_DIR}/index.html indexHtml page_contents IndexHtml)
emil_target_string_source(postmaster.frontend ${CMAKE_CURRENT_BINARY_DIR}/style.css styleCss page_contents StyleCss)
emil_target_string_source(postmaster.frontend ${CMAKE_CURRENT_BINARY_DIR}/upload.js uploadJs page_contents UploadJs)

target_link_libraries(postmaster.frontend PUBLIC
    infra.util
)

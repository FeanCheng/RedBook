if(NOT TARGET render::kuikly)
    add_library(render::kuikly SHARED IMPORTED)
    set_target_properties(render::kuikly PROPERTIES
        INTERFACE_INCLUDE_DIRECTORIES "/Users/linfengcheng/Android_Project/RedBook/RedBook/ohosApp/oh_modules/.ohpm/@kuikly-open+render@2.28.0/oh_modules/@kuikly-open/render/include"
        IMPORTED_LOCATION "/Users/linfengcheng/Android_Project/RedBook/RedBook/ohosApp/oh_modules/.ohpm/@kuikly-open+render@2.28.0/oh_modules/@kuikly-open/render/libs/arm64-v8a/libkuikly.so")
endif()

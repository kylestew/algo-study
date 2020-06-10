project(algos)

# set(HEADER_FILES
#     BST.h
#         )

set(SOURCE_FILES
    BST.cpp
        )

add_library(algos STATIC ${SOURCE_FILES} ${HEADER_FILES})

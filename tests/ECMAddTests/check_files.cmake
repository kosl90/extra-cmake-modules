set(i 0)
set(in_file_args FALSE)
while (i LESS CMAKE_ARGC)
    if (in_file_args)
        if (NOT EXISTS "${CMAKE_ARGV${i}}")
            message(FATAL_ERROR "${CMAKE_ARGV${i}} does not exist")
        endif()
    elseif (CMAKE_ARGV${i} STREQUAL "-P")
        # skip script name
        math(EXPR i "${i} + 1")
        set(in_file_args TRUE)
    endif()
    math(EXPR i "${i} + 1")
endwhile()


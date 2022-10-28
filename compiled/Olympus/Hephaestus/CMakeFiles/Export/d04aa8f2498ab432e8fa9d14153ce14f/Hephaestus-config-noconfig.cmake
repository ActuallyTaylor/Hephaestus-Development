#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Hephaestus::Hephaestus" for configuration ""
set_property(TARGET Hephaestus::Hephaestus APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(Hephaestus::Hephaestus PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libHephaestus.a"
  )

list(APPEND _cmake_import_check_targets Hephaestus::Hephaestus )
list(APPEND _cmake_import_check_files_for_Hephaestus::Hephaestus "${_IMPORT_PREFIX}/lib/libHephaestus.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)

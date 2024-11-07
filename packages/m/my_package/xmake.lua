package("my_package")
    set_kind("static")
    set_description("The my_package package")
    set_license("MIT")

    add_urls("https://github.com/Miou-zora/HelloWorldXmakePackage-Lib.git")
    add_versions("v1.0", "aab3a970701a263ce75a172b498f332d6a56056d")

    on_install(function (package)
        os.cp("include", package:installdir())
        os.cp("lib", package:installdir())
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)
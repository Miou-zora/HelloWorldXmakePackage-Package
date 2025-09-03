package("my_package")
    set_kind("library")
    set_description("The my_package package")
    set_license("MIT")

    add_urls("https://github.com/Miou-zora/HelloWorldXmakePackage-Lib.git")

    add_versions("latest", "126bc5d6955c61afa187a7966cac9c14e58912ca")

    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        -- copy header files
        import("package.tools.xmake").install(package, configs)
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        assert(package:has_cxxfuncs("foo", {includes = "foo.h"}))
    end)

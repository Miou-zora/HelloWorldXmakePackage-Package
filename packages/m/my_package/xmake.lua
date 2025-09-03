package("my_package")
    set_kind("library")
    set_description("The my_package package")
    set_license("MIT")

    add_urls("https://github.com/Miou-zora/HelloWorldXmakePackage-Lib.git")

    add_versions("latest", "0db3ceba3bd12b5ac4796405519849e04e82341e")

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

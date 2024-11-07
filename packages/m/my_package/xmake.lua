package("my_package")
    set_kind("static")
    set_description("The my_package package")
    set_license("MIT")

    add_urls("https://github.com/Miou-zora/HelloWorldXmakePackage-Lib.git")

    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        os.cp("src", package:installdir())
        import("package.tools.xmake").install(package, configs)
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        assert(package:has_cfuncs("foo", {includes = "foo.h"}))
    end)
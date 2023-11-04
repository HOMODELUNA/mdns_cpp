target("mdns_cpp")
	set_kind("static")
	set_default(false)
	add_files("src/*.cpp")
	set_languages("c++20")
    if is_plat("windows","mingw") then
        add_syslinks("ws2_32","Iphlpapi")
    end
	add_includedirs("include",{public=true})
target_end()
project "Glad"
	language "C"
	kind "StaticLib"
	
	targetdir "%{OutputDir.Binaries}/%{prj.name}"
	objdir "%{OutputDir.Intermediates}/%{prj.name}"
	
	files
	{
		"include/**.h",
		"src/**.c"
	}
	
	includedirs
	{
		"include"
	}
	
	filter "system:windows"
		systemversion "latest"
	
	filter "configurations:Development"
		runtime "Debug"
		symbols "On"

	filter "configurations:Preview or Shipping"
		runtime "Release"
		optimize "Speed"
	
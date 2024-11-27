project "Glad"
	language "C"
	kind "StaticLib"
	
	targetdir "%{OutputDir.Binaries}/%{prj.name}"
	targetdir "%{OutputDir.Intermediates}/%{prj.name}"
	
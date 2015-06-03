if kernel['machine'] =~ /x86_64/
else
end

# VS 2008
default['vs-2008']['base-extraction-path']     = File.join("C:\\software", "VS2008").gsub("/", "\\")
default['vs-2008']['base-network-location']    = "\\\\10.0.1.199\\Software"
default['vs-2008']['base-iso-name']            = "en_visual_studio_2008_ultimate_x86_dvd_509116.iso"
default['vs-2008']['base-iso-location']        = File.join(default['vs-2008']['base-network-location'], default['vs-2008']['base-iso-name']).gsub("/", "\\")
default['vs-2008']['base-iso-cache-location']  = File.join(Chef::Config[:file_cache_path], default['vs-2008']['base-iso-name']).gsub("/", "\\")
default['vs-2008']['base-display-name']        = "Microsoft Visual Studio 2008 Ultimate - ENU"
default['vs-2008']['install-options']		   = "/q /norestart /full /norestart"
default['vs-2008']['timeout']		   		   = 6000

# registry path to check if RTM is installed.
default['vs-2008']['base-package-registry'] = 'HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Visual Studio 2008 Professional Edition - ENU'
default['vs-2008']['base-package-registry-version'] ='9.0.21022'


default['vs-2008']['helpviewer-content-path']  = File.join("#{ENV['PROGRAMDATA']}", "Microsoft", "HelpLibrary").gsub("/", "\\")
default['vs-2008']['helpviewer-path']          = File.join("C:/Program Files", "Microsoft Help Viewer", "v1.0").gsub("/", "\\")
default['vs-2008']['helpviewer-name']          = "HelpLibManager.exe"
default['vs-2008']['helpviewer-location']      = File.join(default['vs-2008']['helpviewer-path'], default['vs-2008']['helpviewer-name']).gsub("/", "\\")
default['vs-2008']['helpviewer-content']       = File.join(default['vs-2008']['base-extraction-path'], "ProductDocumentation", "HelpContentSetup.msha").gsub("/", "\\")

default['vs-2008']['sql-server-appcompat']['path']  = 'HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags'
default['vs-2008']['sql-server-appcompat']['key']  = '{55e84480-b1d9-4450-bc06-cecd783d9283}'
default['vs-2008']['sql-server-appcompat']['key-type']  = :dword
default['vs-2008']['sql-server-appcompat']['value']  = '4'

# VS 2008 SP1
default['vs-2008']['sp1-extraction-path']      = File.join(default['vs-2008']['base-extraction-path'], "SP1").gsub("/", "\\")
default['vs-2008']['sp1-network-location']     = default['vs-2008']['base-network-location']
default['vs-2008']['sp1-network-username']     = default['vs-2008']['base-network-username'] 
default['vs-2008']['sp1-network-password']     = default['vs-2008']['base-network-password']
default['vs-2008']['sp1-iso-name']             = "VS2008SP1dvd1.iso"
default['vs-2008']['sp1-iso-location']         = File.join(default['vs-2008']['sp1-network-location'], default['vs-2008']['sp1-iso-name']).gsub("/", "\\")
default['vs-2008']['sp1-iso-cache-location']  = File.join(Chef::Config[:file_cache_path], default['vs-2008']['sp1-iso-name']).gsub("/", "\\")

default['vs-2008']['sp1-display-name']        = "Microsoft Visual Studio 2008 Service Pack 1"

default['vs-2008']['sp1-installer']        = 'vs90sp1\SPInstaller.exe'
default['vs-2008']['sp1-install-options']        = '/q /norestart'
default['vs-2008']['sp1-install-log']        = File.join(default['vs-2008']['sp1-extraction-path'], "vs2008sp1.htm").gsub("/", "\\")

#registry path to check if SP1 is installed.
#SP1 is version 9.0.30729
default['vs-2008']['sp1-package-registry'] = 'HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{D7DAD1E4-45F4-3B2B-899A-EA728167EC4F}'
default['vs-2008']['sp1-package-registry-name'] = 'DisplayVersion'
default['vs-2008']['sp1-package-registry-value'] = '9.0.30729'
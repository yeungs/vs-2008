module VS2008
  module Prerequisites

    def is_vs2008_installed?()
      registry_key_exists?(node['vs-2008']['base-package-registry'])
    end

    def is_dotnet_installed?()
      #http://blogs.msdn.com/b/deva/archive/2008/12/10/how-to-determine-which-microsoft-net-framework-version-and-service-pack-installed.aspx
      registry_data_exists?(
          node['vs-2008']['dotnet_key_path'],
          { :name => "#{node['vs-2008']['dotnet_key_name']}", :type => :dword, :data => node['vs-2008']['dotnet_key_value'] }
      )
    end
  
    def is_vs2008_sp1_installed?()
      registry_key_exists?(node['vs-2008']['sp1-package-registry'])

     #http://msdn.microsoft.com/en-us/library/ee225238%28VS.100%29.aspx
     #registry_data_exists?(
     #    'HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\DevDiv\vs\Servicing\10.0',
     #     { :name => 'SP', :type => :dword, :data => '1' }
     # )
    end

    def is_vs2008_sp1_version_installed?()
      if (!is_vs2008_sp1_installed?())
        return false
      end

      registry_data_exists?(
        node['vs-2008']['sp1-package-registry'],
          { :name => node['vs-2008']['sp1-package-registry-name'], :type => :string, :data => node['vs-2008']['sp1-package-registry-value']}
      )     

    end
    def install_vs2008_sp1?()
      (node['vs-2008']['install-vs2008-sp1']).downcase.eql?('yes')
    end

  end

end

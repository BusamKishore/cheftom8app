
# tomcat user manager (sudo nano /opt/tomcat/conf/tomcat-users.xml)
template '/opt/tomcat/conf/tomcat-users.xml' do
    source 'mytomusermanager.erb'
    mode '0755'
    action :create
end

# tomcat user manager context (sudo nano /opt/tomcat/webapps/manager/META-INF/context.xml)
template '/opt/tomcat/webapps/manager/META-INF/context.xml' do
    source 'mytomusermanagercontext.erb'
    mode '0755'
    action :create
end

# Host Manager (sudo nano /opt/tomcat/webapps/host-manager/META-INF/context.xml)
template '/opt/tomcat/webapps/host-manager/META-INF/context.xml' do
    source 'mytomhostmanager.erb'
    mode '0755'
    action :create
end


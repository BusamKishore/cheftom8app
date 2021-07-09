# tomcat group ownership (sudo chgrp -R tomcat /opt/tomcat)
execute 'Give the tomcat group ownership' do
    command 'sudo chgrp -R tomcat /opt/tomcat'
    action :run
end

# tomcat group read access to the conf directory (sudo chmod -R g+r conf)
execute 'tomcat group read access to the conf' do
    command 'sudo chmod -R g+r /opt/tomcat/conf'
    action :run
end

# tomcat group execute access to the conf directory (sudo chmod g+x conf)
execute 'tomcat group execute access to the conf directory' do
    command 'sudo chmod g+x /opt/tomcat/conf'
    action :run
end

# Make the tomcat user the owner of the webapps, work, temp, and logs directories

execute 'Make the tomcat user the owner of the webapps' do
    command 'sudo chown -R tomcat /opt/tomcat/webapps/'
    action :run
end

execute 'Make the tomcat user the owner of the work' do
    command 'sudo chown -R tomcat /opt/tomcat/work/'
    action :run
end

execute 'Make the tomcat user the owner of the temp' do
    command 'sudo chown -R tomcat /opt/tomcat/temp/'
    action :run
end

execute 'Make the tomcat user the owner of the logs' do
    command 'sudo chown -R tomcat /opt/tomcat/logs/'
    action :run
end




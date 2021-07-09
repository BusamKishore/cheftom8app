
# Reload the system daemon (sudo systemctl daemon-reload)

execute 'reload the systemd daemon' do
    command 'sudo systemctl daemon-reload'
    action :run
    not_if{File.exist?('/home/ubuntu/tomstart')}
end

# Start the Tomcat service (sudo systemctl start tomcat)
execute 'Start the Tomcat service' do
    command 'sudo systemctl start tomcat'
    action :run
    not_if{File.exist?('/home/ubuntu/tomstart')}
end

# Enable tomcat (sudo systemctl enable tomcat)
execute 'execute tomcat' do
    command 'sudo systemctl enable tomcat'
    action :run
    not_if{File.exist?('/home/ubuntu/tomstart')}
end

# Restart tomcat ()
execute 'restart tomcat' do
    command 'sudo systemctl restart tomcat'
    action :run
    only_if{File.exist?('/home/ubuntu/tomstart')}
end


# create file
file '/home/ubuntu/tomstart' do
    content 'tomstart'
    mode '0755'
    action :create
end


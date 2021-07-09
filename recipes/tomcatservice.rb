
# Create Service file(static file) using cookbook (sudo nano /etc/systemd/system/tomcat.service)
cookbook_file '/etc/systemd/system/tomcat.service' do
    source 'mytomconfig'
    mode '0755'
    action :create
end

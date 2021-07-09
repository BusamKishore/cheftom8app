# directory (sudo mkdir /opt/tomcat)
directory '/opt/tomcat' do
    mode '0755'
    action :create
end

# extract the archive (sudo tar xzvf apache-tomcat-8*tar.gz -C /opt/tomcat --strip-components=1)
# Linux commands, we hav to provide 
execute 'extract my tomcat tar file' do
    command 'sudo tar xzvf /home/ubuntu/apache-tomcat-8.5.5.tar.gz -C /opt/tomcat --strip-components=1'
    action :run
    not_if{File.exist?('/opt/tomcat/LICENSE')}
end

# Referal
  #not_if{File.exist?('file')}  if file not exist, then execute this resource
  #only_if{File.exist?('file')} if file exist, then execute this resource

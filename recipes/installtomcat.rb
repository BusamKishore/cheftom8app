
# Install Tomcat (curl -O http://apache.mirrors.ionfish.org/tomcat/tomcat-8/v8.5.5/bin/apache-tomcat-8.5.5.tar.gz)
remote_file '/home/ubuntu/apache-tomcat-8.5.5.tar.gz' do
    source 'https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.5/bin/apache-tomcat-8.5.5.tar.gz'
    mode '0755'
    action :create
end

remote_file '/opt/tomcat/webapps/jenkins.war' do
    source 'https://get.jenkins.io/war-stable/2.289.2/jenkins.war'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

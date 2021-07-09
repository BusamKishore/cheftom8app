# create a new tomcat user (sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat)
user 'tomcat' do
    comment 'this is tomcat user'
    home '/opt/tomcat'
    shell '/bin/false'
    action :create
end

# create a new tomcat group (sudo groupadd tomcat)
group 'tomcat' do
    members 'tomcat'
    action :create
end



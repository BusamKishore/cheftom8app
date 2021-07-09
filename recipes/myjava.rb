
# update your apt-get package (sudo apt-get update)
apt_update 'update package' do
    ignore_failure true
    action :update
end

# install the Java Development Kit (sudo apt-get install default-jdk)
package 'default-jdk' do
    action :install
end

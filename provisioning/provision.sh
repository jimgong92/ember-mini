apt-get update
apt-get -y install git nodejs npm
ln -s /usr/bin/nodejs /usr/bin/node
npm cache clean -f
npm install -g n
npm install -g ember-cli
VM_NODE_VERSION=5.4.1
n $VM_NODE_VERSION
ln -sf /usr/local/n/versions/node/$VM_NODE_VERSION/bin/node /usr/bin/node
echo "cd ~/app" >> /home/vagrant/.bashrc

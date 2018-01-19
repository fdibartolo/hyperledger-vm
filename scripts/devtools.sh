# reload nvm
# source ~/.bashrc
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# cli tools
npm install -g composer-cli
npm install -g composer-rest-server
npm install -g generator-hyperledger-composer
npm install -g yo

# playground
npm install -g composer-playground

# hyperledger fabric
if [ ! -d "~/fabric-tools" ]; then
  mkdir ~/fabric-tools
fi
cd ~/fabric-tools

curl -O https://raw.githubusercontent.com/hyperledger/composer-tools/master/packages/fabric-dev-servers/fabric-dev-servers.tar.gz
tar -xvzf fabric-dev-servers.tar.gz

./downloadFabric.sh

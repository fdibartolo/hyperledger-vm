#!/usr/bin/env bash

~/fabric-tools/startFabric.sh

# https://hyperledger.github.io/composer/tutorials/developer-tutorial
cd /vagrant/tutorial/tutorial-network/
composer runtime install --card PeerAdmin@hlfv1 --businessNetworkName tutorial-network
composer network start --card PeerAdmin@hlfv1 --networkAdmin admin --networkAdminEnrollSecret adminpw --archiveFile tutorial-network@0.0.1.bna --file networkadmin.card
composer-rest-server -c admin@tutorial-network -n never -w true

# Software Lab
All the commands will be listed here:

## Assignment 1
### Installing golang:
```
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.17.6.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
source .bashrc
$ go version
```

### Installing ethereum:
* Linux:
```
sudo add-apt-repository -y ppa:ethereum/ethereum

sudo apt-get update
sudo apt-get install ethereum

Or:

sudo apt-get update
sudo apt-get install ethereum-unstable
```
* Mac:
```
brew tap ethereum/ethereum
brew install ethereum

brew install ethereum --devel
```

## Assignment 2:
### Making genesis block:
```
$ cd go-ethereum (Your installation directory)
$ mkdir genesis
$ cd genesis
$ gedit genesis.json (or any other editor)
```
### Making rules for blockchain:
```
{
  “nonce”: “0x0000000000000042”,
  “mixhash”: “0x0000000000000000000000000000000000000000000000000000000000000000”,
  “difficulty”: “0x100”,
  “alloc”: {},
  “coinbase”: “0x0000000000000000000000000000000000000000”,
  “timestamp”: “0x00”,
  “parentHash”:          “0x0000000000000000000000000000000000000000000000000000000000000000”,
  “extraData”: “0x”,
  “gasLimit”: “0xffffffff”,
  “config”:  {
      “chainId”: 59,
      “homesteadBlock”: 0,
      “eip155Block”: 0,
      “eip158Block”: 0
    }
}
```
### Running and validating:
```
$ (location of ethereum)/build/bin/geth --datadir ~/ethereum/net3 init genesis/genesis.json
$ (location of ethereum)/build/bin/geth --datadir ~/ethereum/net3/ --networkid 3 console
personal.newAccount()
eth.accounts
eth.blockNumber()
miner.start()
miner.stop()
eth.getBalance(“account number”)
```

## Assignment 3
### Installing node:
* Linux:
```
sudo apt install nodejs
```
* Mac:
```
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
```
### Installing truffle:
```
npm install -g truffle
```

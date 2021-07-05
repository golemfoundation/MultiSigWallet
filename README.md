Ethereum Multisignature Wallet
===================

Since Gnosis has deprecated their multisig wallet, this repo retains only the frontend (dApp) for interaction with existing multisig deployments. The dapp has been deployed to legacywallet.pepesza.eth. Apart from that, minimal amount of changes has been made - such as adding a Dockerfile. Please examine them by building it yourself before using the dApp.

Purpose
-------------
The purpose of multisig wallets is to increase security by requiring multiple parties to agree on transactions before execution. Transactions can be executed only when confirmed by a predefined number of owners. A web user interface can be found [here](/dapp).

Security
-------------
All contracts are WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

License
-------------
[LGPL v3](./LICENSE)

FAQ
-------------
### How to set a custom Ethereum Node?
You can specify a custom Ethereum Node endpoint by going to `settings` page. Click on `Ethereum Node` dropdown menu and select `Custom configuration`, this would make the Ethereum node's field editable. Please write your new endpoint there. Remember, if `Web3 Provider` is set to `Default (Metamask, Mist, Parity)`, Multisig will use the Ethereum Node endpoint coming with the Web3 Provider, so in that case go to your injected Web3 Provider (Metamask for instance) and update/switch your Ethereum Node endpoint.

### I've imported a Multisig address or a contract address into address book but it gets detected as a EOA
Make sure you're connected to the same network your Multisig/contract was created on, if you created it on Mainnet, you should then connect to Mainnet in order to let the system detect its type correctly.



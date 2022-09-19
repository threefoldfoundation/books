# Weblets

Weblets are a UI tool helps to deploy solutions on TF Grid v3.

A weblet is a compiled javascript web component which can be embedded in HTML page of a web app.

The backend for the weblets is introduced with [grid client](manual3_iac/grid3_javascript/grid3_javascript_home.md) which communicate to TF Chain and TF Grid over RMB.

__Advantages__ :

- It is a non-code easy way to deploy a whole solution on the Grid.
- It is 100% decentralized, there is no server involved

## Weblets list

There are several weblets you can use like: 

- Basic Environments:
  - [Virtual Machine](weblets/weblets_vm.md)
  - [Kubernetes](weblets/weblets_k8s.md)

- Ready Community Solutions:
  - [Caprover](weblets/weblets_caprover.md)
  - [Funkwhale](weblets/weblets_funkwhale.md)
  - [Peertube](weblets/weblets_peertube.md)
  - [Taiga](weblets/weblets_taiga.md)
  - [Owncloud](weblets/weblets_owncloud.md)
  - [Discourse](weblets/weblets_discourse.md)
  - [Mattermost](weblets/weblets_mattermost.md)
  - [Presearch](weblets/weblets_presearch.md)
  - [CasperLabs](weblets/weblets_casper.md)
  - [Node Pilot](weblets/weblets_nodepilot.md)

- Some utils:
  - [Profile Manager](weblets/weblets_profile_manager.md)
  - [Deployment List](weblets/weblets_deployments_list.md)

## Playground
Playground is a Vue app that has the weblets embedded. so you can try it out on different TF Chain networks.
- [https://play.dev.grid.tf](https://play.dev.grid.tf) for Devnet.
- [https://play.qa.grid.tf](https://play.qa.grid.tf) for QAnet.
- [https://play.test.grid.tf](https://play.test.grid.tf) for Testnet.
- [https://play.grid.tf](https://play.grid.tf) for Mainnet.

## Limitations

- Regarding browser support, we're only supporting Google Chrome browser at the moment with more browsers to be supported soon. 
- Deploys one thing at a time.
- Might take sometime to deploy a solution like Peertube, so you should wait a little bit until it's fully running.
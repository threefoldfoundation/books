# Weblets

Weblets are a UI tool helps to deploy solutions on TF Grid v3.

A weblet is a compiled javascript web component which can be embedded in HTML page of a web app.

The backend for the weblets is introduced with [grid client](../manual3_iac/grid3_javascript/grid3_javascript_home) which communicate to TF Chain and TF Grid over RMB.

__Advantages__ :

- It is a non-code easy way to deploy a whole solution on the Grid.
- It is 100% decentralized, there is no server involved

## Weblets list

There are several weblets you can use like: 

- Basic Environments:
  - [Virtual Machine](weblets_vm)
  - [Kubernetes](weblets_k8s)

- Ready Community Solutions:
  - [Caprover](weblets_caprover)
  - [Funkwhale](weblets_funkwhale)
  - [Peertube](weblets_peertube)
  - [Taiga](weblets_taiga)
  - [Owncloud](weblets_owncloud)
  - [Discourse](weblets_discourse)
  - [Mattermost](weblets_mattermost)
  - [Presearch](weblets_presearch)
  - [CasperLabs](weblets_casper)
  - [Node Pilot](weblets_nodepilot)

- Some utils:
  - [Profile Manager](weblets_profile_manager)
  - [Deployment List](weblets_deployments_list)

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
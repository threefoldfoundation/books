# TF-Chain Portal: Create a Farm

If you want to start farming, you need a farmID, the ID of the farm that is owning the hardware node(s) you connect to the TFGrid.

!!!include:tfchain_portal_list

Click `CREATE FARM` and choose a name.

![ ](../img/dashboard_portal_farm.png ':size=600')

![ ](../img/dashboard_portal_create_farm.png ':size=300')

Click `Submit` and sign the action.

The farm is by default set up as 'DIY'. A farm can become certified through certification program. More info to be found [here](threefold:farming_certified_requirements).
Also a pricing policy is defined. Pricing policy is currently the same for all farms, the field is created for future use.

## Add a public IP to your Farm

If you have public IPv4 addresses available that can be used for usage on the TFGrid, you can add them in your farm.
Click `ADD IP`, specify the addresses, the gateway and click `CREATE`.
You can add them one by one or using range of IPs.

![ ](../img/dashboard_portal_ip_add.png ':size=600')
![ ](../img/dashboard_portal_ip_add_detail.png ':size=300')
![ ](../img/dashboard_portal_ip_add_detail_range.png ':size=300')

Deleting IPv4 addresses is also possible here. The `Deployed Contract ID` gives an indication of whether an IP is currently used. If it is 0, it is safe to remove it.

![ ](../img/dashboard_portal_ip_result.png ':size=400')

## Add a Stellar address for payout

In a first phase, farming of tokens still results in payout on the Stellar network. So to get the farming reward, a Stellar address needs to be provided.

![ ](../img/dashboard_portal_farm0.png ':size=600')

![ ](../img/dashboard_portal_stellar.png ':size=400')

## Generate your node bootstrap image

Once you know your farmID, you can set up your node on TFGrid3. Click on `View bootstrap`.

After booting a node, the info will become available in your portal, including the status info along with the minting and fixup receipts.

![ ](../img/dashboard_portal_node_info.png ':size=600')

Clicking on the node statistics will open up a calendar where you can view the periods the node was minting or undergoing a fixup. Clicking on the periods will show a popup with the start and end datetimes, receipt hash and the amount of TFTs minted (if it is a minting receipt).

![ ](../img/dashboard_portal_ui_nodes_minting.png ':size=600')

You can also download a single node's receipts using the `Download Receipts` button within the node statistics. Moreover, you can download all of the nodes' receipts using the `Download Receipts` button on the top left corner of the farm nodes table.

## Capacity Explorer

In the upper right corner, you can click on `EXPLORER` to get a view of all capacity connected to TFGrid v3. For more info, see [here](explorer_home).

!!!include:tfchain_portal_toc

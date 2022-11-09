:source: fwebos_ha.py

:orphan:

.. fwebos_ha.py:

fwebos_ha.py -- Config FortiWeb HA options
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. versionadded:: 1.0.1

.. contents::
   :local:
   :depth: 1


Synopsis
--------
Config FortiWeb HA options


Requirements
------------
The below requirements are needed on the host that executes this module.

- ansible>=2.11


FortiWeb Version Compatibility
------------------------------


.. raw:: html

 <br>
 <table>
 <tr>
 <td></td>
 <td><code class="docutils literal notranslate">v7.0.0 </code></td>
 <td><code class="docutils literal notranslate">v7.0.1 </code></td>
 <td><code class="docutils literal notranslate">v7.0.2 </code></td>
 <td><code class="docutils literal notranslate">v7.0.3 </code></td>
 </tr>
 <tr>
 <td>fwebos_ha.py</td>
 <td>yes</td>
 <td>yes</td>
 <td>yes</td>
 <td>yes</td>
 </tr>
 </table>
 <p>



Parameters
----------


.. raw:: html


  <ul>
  <li><span class="li-head">body</span> Possible parameters to go in the body for the request <span class="li-required">required: True </li>
        <ul class="ul-self">
              <li><span class="li-head"> mode </span> mode <span class="li-normal"> type:string choice:
                      active-passive,
                      active-active-standard,
                      active-active-high-volume,
                      standalone,</span></li>
              <li><span class="li-head"> group-id </span> group id, range 0-63 <span class="li-normal"> type:integer
                    maximum:63
                    minimum:0</span></li>
              <li><span class="li-head"> group-name </span> group name <span class="li-normal"> type:string
                    maxLength:19</span></li>
              <li><span class="li-head"> priority </span> priority value, range 0-9 <span class="li-normal"> type:integer
                    maximum:9
                    minimum:0</span></li>
              <li><span class="li-head"> override </span> master HA unit overriding <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> network-type </span> The network on which heartbeat and sync are based <span class="li-normal"> type:string choice:
                      flat,
                      udp-tunnel,</span></li>
              <li><span class="li-head"> tunnel-local </span> Local IPv4 address for HA tunnel <span class="li-normal"> type:string
                    maxLength:15</span></li>
              <li><span class="li-head"> tunnel-peer </span> Peers IPv4 address for HA tunnel <span class="li-normal"> type:string
                    maxLength:15</span></li>
              <li><span class="li-head"> hbdev </span> heartbeat interfaces <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> hbdev-backup </span> backup heartbeat interfaces <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> boot-time </span> boot time for Heartbeat, rang 1-100 (s) <span class="li-normal"> type:integer
                    maximum:100
                    minimum:1</span></li>
              <li><span class="li-head"> hb-interval </span> heartbeat interval, range 1-20 (100ms) <span class="li-normal"> type:integer
                    maximum:20
                    minimum:1</span></li>
              <li><span class="li-head"> hb-lost-threshold </span> heartbeat threshold for failed, range 1-60 <span class="li-normal"> type:integer
                    maximum:60
                    minimum:1</span></li>
              <li><span class="li-head"> arps </span> gratuitous ARP or neighbour solicitation, range 1-16 <span class="li-normal"> type:integer
                    maximum:16
                    minimum:1</span></li>
              <li><span class="li-head"> arp-interval </span> ARP/NS interval, range 1-20 <span class="li-normal"> type:integer
                    maximum:20
                    minimum:1</span></li>
              <li><span class="li-head"> monitor </span> interfaces to monitor <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> key </span> 16 hex number for HA <span class="li-normal"> type:string
                    format:password</span></li>
              <li><span class="li-head"> lacp-ha-slave </span> enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> ha-mgmt-status </span> enable/disable manager port <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> ha-mgmt-interface </span> manager port interface <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> session-pickup </span> enable/disable session sync <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> session-sync-dev </span> session sync interfaces <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> session-sync-broadcast </span> enable/disable session sync broadcast <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> session-warm-up </span> session warm-up time, range 5-120(s) <span class="li-normal"> type:integer
                    maximum:120
                    minimum:5</span></li>
              <li><span class="li-head"> schedule </span> schedule <span class="li-normal"> type:string choice:
                      ip,
                      round-robin,
                      leastconnection,</span></li>
              <li><span class="li-head"> weight-1 </span> weight for No.1 unit in Source IP schedule, range 0-255 <span class="li-normal"> type:integer
                    maximum:255
                    minimum:0</span></li>
              <li><span class="li-head"> weight-2 </span> weight for No.2 unit in Source IP schedule, range 0-255 <span class="li-normal"> type:integer
                    maximum:255
                    minimum:0</span></li>
              <li><span class="li-head"> weight-3 </span> weight for No.3 unit in Source IP schedule, range 0-255 <span class="li-normal"> type:integer
                    maximum:255
                    minimum:0</span></li>
              <li><span class="li-head"> weight-4 </span> weight for No.4 unit in Source IP schedule, range 0-255 <span class="li-normal"> type:integer
                    maximum:255
                    minimum:0</span></li>
              <li><span class="li-head"> weight-5 </span> weight for No.5 unit in Source IP schedule, range 0-255 <span class="li-normal"> type:integer
                    maximum:255
                    minimum:0</span></li>
              <li><span class="li-head"> weight-6 </span> weight for No.6 unit in Source IP schedule, range 0-255 <span class="li-normal"> type:integer
                    maximum:255
                    minimum:0</span></li>
              <li><span class="li-head"> weight-7 </span> weight for No.7 unit in Source IP schedule, range 0-255 <span class="li-normal"> type:integer
                    maximum:255
                    minimum:0</span></li>
              <li><span class="li-head"> weight-8 </span> weight for No.8 unit in Source IP schedule, range 0-255 <span class="li-normal"> type:integer
                    maximum:255
                    minimum:0</span></li>
              <li><span class="li-head"> link-failed-signal </span> enable/disable link failed signal <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> l7-persistence-sync </span> enable/disable persistence sync <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> eip-addr </span> The Elastic IP address <span class="li-normal"> type:string
                    format:ipv4</span></li>
              <li><span class="li-head"> eip-aid </span> The allocation ID of the Elastic IP address(Required for EC2-VPC) <span class="li-normal"> type:string
                    maxLength:63</span></li>
              <li><span class="li-head"> ha-eth-type </span> HA heartbeat packet Ethertype (4-digit hex), range 0x8890-0x889F <span class="li-normal"> type:string
                    maxLength:5</span></li>
              <li><span class="li-head"> hc-eth-type </span> Tuple session HA heartbeat packet Ethertype (4-digit hex), range 0x8890-0x889F <span class="li-normal"> type:string
                    maxLength:5</span></li>
              <li><span class="li-head"> l2ep-eth-type </span> Telnet session HA heartbeat packet Ethertype (4-digit hex), range 0x8890-0x889F <span class="li-normal"> type:string
                    maxLength:5</span></li>
              <li><span class="li-head"> server-policy-hlck </span> HA AA server policy health check <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> encryption </span> enable/disable heartbeat message encryption <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> sdn-connector </span> sdn connector for AP mode <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> lb-name </span> Azure load balancer resource name in the front of the FortiWeb instances <span class="li-normal"> type:string
                    maxLength:63</span></li>
              <li><span class="li-head"> lb-ocid </span> OCI LoadBalancer ID at the front of the FortiWeb instances <span class="li-normal"> type:string
                    maxLength:127</span></li>
              <li><span class="li-head"> lb-gcp </span> GCP LoadBalancer ID at the front of the FortiWeb instances <span class="li-normal"> type:string
                    maxLength:63</span></li>
         <li><span class="li-head">mkey</span> If present, objects will be filtered on property with this name  <span class="li-normal"> type:string </span></li><li><span class="li-head">vdom</span> Specify the Virtual Domain(s) from which results are returned or changes are applied to. If this parameter is not provided, the management VDOM will be used. If the admin does not have access to the VDOM, a permission error will be returned. The URL parameter is one of: vdom=root (Single VDOM) vdom=vdom1,vdom2 (Multiple VDOMs) vdom=* (All VDOMs)   <span class="li-normal"> type:array </span></li><li><span class="li-head">move_flag</span> If supported, a flag can be specified. When *move_flag* is set, extra parameters (*move_mkey*, *sub_mkey*) must be provided. __*Note:*__ If this parameter is provided when not supported, the action will be ignored and an “invalid request” error will be returned.   <span class="li-normal"> type:string </span></li><li><span class="li-head">sub_mkey</span> specific resource to be moved  <span class="li-normal"> type:string </span></li><li><span class="li-head">move_mkey</span> specific resource to be moved before or after  <span class="li-normal"> type:string </span></li>
  </ul>

Examples
--------
.. code-block:: yaml+jinja

   - name:
   hosts: all
   vars:
   connection: httpapi
   gather_facts: false
   tasks:
     - name: edit ha 
       vars:
        ansible_command_timeout: 90 
       fwebos_ha:
        action: edit 
        mode: active-passive
        mode_val: 0
        group_id: 9
        group_name: tttt
        priority: 5
        override: disable
        override_val: 0
        network_type: flat
        network_type_val: 0
        tunnel_local: 
        tunnel_peer: 
        hbdev: port2
        hbdev_val: 0
        hbdev_backup: port3
        hbdev_backup_val: 0
        boot_time: 30
        hb_interval: 3
        hb_lost_threshold: 3
        arps: 10
        arp_interval: 3
        monitor: port1 port8
        lacp_ha_slave: enable
        lacp_ha_slave_val: 1
        ha_mgmt_status: disable
        ha_mgmt_status_val: 0
        ha_mgmt_interface: 
        session_pickup: disable
        session_pickup_val: 0
        session_sync_dev: 
        session_sync_broadcast: disable
        session_sync_broadcast_val: 0
        session_warm_up: 10
        schedule: ip
        schedule_val: 1
        weight_1: 40
        weight_2: 40
        weight_3: 40
        weight_4: 40
        weight_5: 40
        weight_6: 40
        weight_7: 40
        weight_8: 40
        link_failed_signal: disable
        link_failed_signal_val: 0
        l7_persistence_sync: disable
        l7_persistence_sync_val: 0
        eip_addr: 0.0.0.0
        eip_aid: 
        ha_eth_type: 8890
        hc_eth_type: 8892
        l2ep_eth_type: 8893
        server_policy_hlck: disable
        server_policy_hlck_val: 0
        multi_cluster: disable
        multi_cluster_val: 0
        multi_cluster_group: primary
        multi_cluster_group_val: 0
        multi_cluster_switch_by: nodes_availability
        multi_cluster_switch_by_val: 0
        multi_cluster_move_primary_cluster: disable
        multi_cluster_move_primary_cluster_val: 0
        encryption: disable
        encryption_val: 0
        cluster_arp: enable
        cluster_arp_val: 1
        sdn_connector: 
        sdn_connector_val: 0
        lb_name: 
        lb_ocid: 
 
     - name: edit ha
       vars:
        ansible_command_timeout: 90 
       fwebos_ha:
        action: edit 
        mode: standalone
 
     - name: edit ha 
       vars:
        ansible_command_timeout: 90 
       fwebos_ha:
        action: edit 
        mode: active-active-standard 
        group_id: 9
        group_name: tttt
        priority: 5
        override: disable
        network_type: flat
        tunnel_local: 
        tunnel_peer: 
        hbdev: port2
        hbdev_backup: port3
        boot_time: 30
        hb_interval: 3
        hb_lost_threshold: 3
        monitor: port1 port8
        lacp_ha_slave: enable
        ha_mgmt_status: disable
        ha_mgmt_interface: 
        session_pickup: disable
        session_sync_dev: 
        session_sync_broadcast: disable
        session_warm_up: 10
        schedule: ip
        link_failed_signal: disable
        l7_persistence_sync: disable
        eip_addr: 0.0.0.0
        eip_aid: 
        server_policy_hlck: disable
        multi_cluster: disable
        multi_cluster_group: primary
        multi_cluster_switch_by: nodes_availability
        multi_cluster_move_primary_cluster: disable
        encryption: disable
        cluster_arp: enable
 

Return Values
-------------
Common return values are documented: https://docs.ansible.com/ansible/latest/reference_appendices/common_return_values.html#common-return-values, the following are the fields unique to this module:

.. raw:: html

    <ul><li><span class="li-return"> 200 </span> : OK: Request returns successful</li>
      <li><span class="li-return"> 400 </span> : Bad Request: Request cannot be processed by the API</li>
      <li><span class="li-return"> 401 </span> : Not Authorized: Request without successful login session</li>
      <li><span class="li-return"> 403 </span> : Forbidden: Request is missing CSRF token or administrator is missing access profile permissions.</li>
      <li><span class="li-return"> 404 </span> : Resource Not Found: Unable to find the specified resource.</li>
      <li><span class="li-return"> 405 </span> : Method Not Allowed: Specified HTTP method is not allowed for this resource. </li>
      <li><span class="li-return"> 413 </span> : Request Entity Too Large: Request cannot be processed due to large entity </li>
      <li><span class="li-return"> 424 </span> : Failed Dependency: Fail dependency can be duplicate resource, missing required parameter, missing required attribute, invalid attribute value</li>
      <li><span class="li-return"> 429 </span> : Access temporarily blocked: Maximum failed authentications reached. The offended source is temporarily blocked for certain amount of time.</li>
      <li><span class="li-return"> 500 </span> : Internal Server Error: Internal error when processing the request </li>
      
    </ul>

For errorcode please check FortiWeb API errorcode at : https://documenter.getpostman.com/view/11233300/TVetbkaK#887b9eb4-7c13-4338-a8db-16cc117f0119

Status
------

- This module is not guaranteed to have a backwards compatible interface.


Authors
-------

- Jie Li
- Brad Zhang

.. hint::
	If you notice any issues in this documentation, you can create a pull request to improve it.
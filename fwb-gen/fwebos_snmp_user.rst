:source: fwebos_snmp_user.py

:orphan:

.. fwebos_snmp_user.py:

fwebos_snmp_user.py -- Config FortiWeb SNMP v3 user
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. versionadded:: 1.0.1

.. contents::
   :local:
   :depth: 1


Synopsis
--------
Config FortiWeb SNMP v3 user


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
 <td>fwebos_snmp_user.py</td>
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
              <li><span class="li-head"> name </span> unique snmp user name <span class="li-normal"> type:string
                    maxLength:63</span></li>
              <li><span class="li-head"> status </span> set snmp user status <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> security-level </span> set snmp user security level <span class="li-normal"> type:string choice:
                      noauthnopriv,
                      authnopriv,
                      authpriv,</span></li>
              <li><span class="li-head"> auth-proto </span> set snmp user auth algorithm <span class="li-normal"> type:string choice:
                      sha1,
                      md5,</span></li>
              <li><span class="li-head"> auth-pwd </span> set snmp user auth password <span class="li-normal"> type:string
                    format:password</span></li>
              <li><span class="li-head"> priv-proto </span> set snmp user private algorithm <span class="li-normal"> type:string choice:
                      aes,
                      des,</span></li>
              <li><span class="li-head"> priv-pwd </span> set snmp user private password <span class="li-normal"> type:string
                    format:password</span></li>
              <li><span class="li-head"> query-status </span> set snmp query status <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> query-port </span> set query port value of snmp <span class="li-normal"> type:integer</span></li>
              <li><span class="li-head"> trap-status </span> set snmp trap status <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> trapport-local </span> set local trap port value of snmp <span class="li-normal"> type:integer</span></li>
              <li><span class="li-head"> trapport-remote </span> set remote trap port value of snmp <span class="li-normal"> type:integer</span></li>
              <li><span class="li-head"> trapevent </span> Trap event allowed to be sent <span class="li-normal"> type:string choice:
                      cpu-high,
                      mem-low,
                      log-full,
                      intf-ip,
                      sys-mode-change,
                      policy-start,
                      policy-stop,
                      pserver-failed,
                      sys-ha-cluster-status-change,
                      sys-ha-member-join,
                      sys-ha-member-leave,
                      waf-amethod-attack,
                      waf-signature-detection,
                      waf-url-access-attack,
                      waf-pvalid-attack,
                      waf-hidden-fields,
                      netlink-up-status,
                      netlink-down-status,
                      power-supply-failure,
                      policy-ldap-auth-failure,
                      policy-radius-auth-failure,</span></li>
              <li><span class="li-head"> hosts </span> add/edit snmp user host entry <span class="li-normal"> type:array
                    <ul class="ul-self">
                      <li> <span class="li-head"> id </span> host entry id </li>
                      <li> <span class="li-head"> ip </span> Class A,B,C ip xxx.xxx.xxx.xxx or IPv6 </li>
                    </ul></span></li>
        <li><span class="li-head">mkey</span> If present, objects will be filtered on property with this name  <span class="li-normal"> type:string </span></li><li><span class="li-head">vdom</span> Specify the Virtual Domain(s) from which results are returned or changes are applied to. If this parameter is not provided, the management VDOM will be used. If the admin does not have access to the VDOM, a permission error will be returned. The URL parameter is one of: vdom=root (Single VDOM) vdom=vdom1,vdom2 (Multiple VDOMs) vdom=* (All VDOMs)   <span class="li-normal"> type:array </span></li><li><span class="li-head">clone_mkey</span> Use *clone_mkey* to specify the ID for the new resource to be cloned.  If *clone_mkey* is set, *mkey* must be provided which is cloned from.   <span class="li-normal"> type:string </span></li>
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
     - name: Create snmp user 
       fwebos_snmp_user:
        action: add 
        name: 166 
        security_level: authnopriv
        security_level_val: 1
        auth_proto: sha1
        auth_proto_val: 1
        auth_pwd: 111166666
        priv_proto: aes
        priv_proto_val: 1
        priv_pwd: ENC XXXX
        query_status: enable
        query_status_val: 1
        query_port: 199
        trap_status: enable
        trap_status_val: 1
        trapport_local: 162
        trapport_remote: 162
        sz_hosts: -1
 
     - name: edit snmp user
       fwebos_snmp_user:
        action: edit 
        name: 166
        trapport_local: 168
        trapport_remote: 168
        trapevent: cpu-high mem-low
        trapevent_val: 0
 
     - name: delete snmp user 
       fwebos_snmp_user:
        action: delete 
        name: 166
  
 

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
:source: fwebos_waf_file_upload_policy.py

:orphan:

.. fwebos_waf_file_upload_policy.py:

fwebos_waf_file_upload_policy.py -- Config FortiWeb Input Validation File Security
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. versionadded:: 1.0.1

.. contents::
   :local:
   :depth: 1


Synopsis
--------
Config FortiWeb Input Validation File Security


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
 <td>fwebos_waf_file_upload_policy.py</td>
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
              <li><span class="li-head"> name </span> name <span class="li-normal"> type:string
                    maxLength:63</span></li>
              <li><span class="li-head"> action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> av-scan </span> AV scan upload file <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> fortisandbox-check </span> Upload suspicious file to FortiSandbox <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> hold-session-while-scanning-file </span> Hold session while scanning file <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> icap-server-check </span> Upload suspicious file to icap server <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> exchange-mail-detection </span> AV detection for Exchange email <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> owa-protocol </span> Exchange email for OWA protocol <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> activesync-protocol </span> Exchange email for ActiveSync protocol <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> mapi-protocol </span> Exchange email for mapi protocol <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> rule </span> rule <span class="li-normal"> type:array
                    <ul class="ul-self">
                      <li> <span class="li-head"> <NO.> </span> the name of rule </li>
                      <li> <span class="li-head"> file-upload-restriction-rule </span> file-upload-restriction-rule </li>
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
     - name: delete 
       fwebos_waf_file_upload_policy:
        action: delete 
        name: aaa
        vdom: root
           
     - name: Create
       fwebos_waf_file_upload_policy:
        action: add
        vdom: root
        block_period: 600
        severity: Medium
        av_scan: disable
        icap_server_check: disable
        name: test4
        fortisandbox_check: disable
        exchange_mail_detection: disable
        file_action: alert
        hold_session_while_scanning_file: disable
 
     - name: edit
       fwebos_waf_file_upload_policy:
        action: edit 
        vdom: root
        block_period: 600
        severity: Medium
        av_scan: disable
        icap_server_check: disable
        name: test4
        fortisandbox_check: disable
        exchange_mail_detection: disable
        file_action: alert
        hold_session_while_scanning_file: disable
 

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
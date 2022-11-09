:source: fwebos_snmp_sysinfo.py

:orphan:

.. fwebos_snmp_sysinfo.py:

fwebos_snmp_sysinfo.py -- Config FortiWeb SNMP system info
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. versionadded:: 1.0.1

.. contents::
   :local:
   :depth: 1


Synopsis
--------
Config FortiWeb SNMP system info


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
 <td>fwebos_snmp_sysinfo.py</td>
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
              <li><span class="li-head"> status </span> enable/disable <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> engine-id </span> Local SNMP engineID string (maximum 24 characters). <span class="li-normal"> type:string
                    maxLength:63</span></li>
              <li><span class="li-head"> description </span> description <span class="li-normal"> type:string
                    maxLength:63</span></li>
              <li><span class="li-head"> contact-info </span> contact information <span class="li-normal"> type:string
                    maxLength:63</span></li>
              <li><span class="li-head"> location </span> location <span class="li-normal"> type:string
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
     - name: edit snmp sysinfo 
       fwebos_snmp_sysinfo:
        action: edit 
        status: enable
        description: test 
        contact_info: test1
        location: test2
 
     - name: edit snmp sysinfo 
       fwebos_snmp_sysinfo:
        action: edit 
        status: disable
        description: test 
        contact_info: test1
        location: test2
 

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